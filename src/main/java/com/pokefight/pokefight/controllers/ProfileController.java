package com.pokefight.pokefight.controllers;

import com.pokefight.pokefight.models.User;
import com.pokefight.pokefight.repositories.UserRepository;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class ProfileController {

    private UserRepository userDao;
    private PasswordEncoder passwordEncoder;

    public ProfileController(UserRepository userDao, PasswordEncoder passwordEncoder) {
        this.userDao = userDao;
        this.passwordEncoder = passwordEncoder;
    }

    @GetMapping("/profile")
    public String getUsers(Model model) {
        User currentUser = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = userDao.getById(currentUser.getId());
        model.addAttribute("user", user);
        return "/profile";
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

}
