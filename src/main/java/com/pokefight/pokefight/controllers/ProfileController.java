package com.pokefight.pokefight.controllers;

import com.pokefight.pokefight.models.PouchItem;
import com.pokefight.pokefight.models.User;
import com.pokefight.pokefight.models.UserCard;
import com.pokefight.pokefight.repositories.PouchItemRepository;
import com.pokefight.pokefight.repositories.PouchRepository;
import com.pokefight.pokefight.repositories.UserCardRepository;
import com.pokefight.pokefight.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class ProfileController {

    private UserRepository userDao;
    private UserCardRepository userCardDao;
    private PouchRepository pouchDao;
    private PouchItemRepository pouchItemDao;
    private PasswordEncoder passwordEncoder;

    public ProfileController(UserRepository userDao, PouchRepository pouchDao, PouchItemRepository pouchItemDao, UserCardRepository userCardDao, PasswordEncoder passwordEncoder) {
        this.userDao = userDao;
        this.userCardDao = userCardDao;
        this.pouchDao = pouchDao;
        this.pouchItemDao = pouchItemDao;
        this.passwordEncoder = passwordEncoder;
    }

    @Value("${filestack.apikey}")
    private String apiKey;

    @GetMapping("/profile")
    public String getUsers(Model model) {
        User currentUser = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = userDao.getById(currentUser.getId());
        model.addAttribute("user", user);
        model.addAttribute("apiKey", apiKey);
        System.out.println(apiKey);
        return "profile";
    }

    @PostMapping("/profile/edit")
    public String submitEdit(@ModelAttribute User user, @RequestParam String password) {
        User oldUser = userDao.getById(user.getId());
        String hash = passwordEncoder.encode(password);
        if (!oldUser.getPassword().equals(hash)) {
            System.out.println("password change to " + password + "!");
            oldUser.setPassword(hash);
        }
        oldUser.setUsername(user.getUsername());
        oldUser.setEmail(user.getEmail());
        userDao.save(oldUser);
        return "redirect:/profile";
    }

    @PostMapping("/profile/picture")
    public String getSearchResultViaAjax(@RequestParam(value = "url") String url) {
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User oldUser = userDao.getById(user.getId());
        oldUser.setProfile_pic(url);
        userDao.save(oldUser);
        return "redirect:/home/default";
    }

    @PostMapping("/profile/delete")
    public String deleteUser(@ModelAttribute User user) {
        System.out.println("\"Test\" = " + "Test");
        User oldUser = userDao.getById(user.getId());

        List<Long> userPouchIds = pouchDao.findUserPouchesById(oldUser.getId());
        List<PouchItem> Set1 = pouchItemDao.getByPouchId(userPouchIds.get(0));
        List<PouchItem> Set2 = pouchItemDao.getByPouchId(userPouchIds.get(1));
        List<PouchItem> Set3 = pouchItemDao.getByPouchId(userPouchIds.get(2));

        for(PouchItem i: Set1) { pouchItemDao.delete(i); }
        for(PouchItem i: Set2) { pouchItemDao.delete(i); }
        for(PouchItem i: Set3) { pouchItemDao.delete(i); }

        for(Long i: userPouchIds) { pouchDao.delete(pouchDao.getById(i)); }

        List<UserCard> Set4 = userCardDao.getByUserId(user.getId());

        for(UserCard i: Set4) { userCardDao.delete(i); }

        userDao.delete(oldUser);

        return "redirect:/logout";
    }

}
