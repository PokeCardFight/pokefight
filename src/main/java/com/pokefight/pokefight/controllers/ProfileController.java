package com.pokefight.pokefight.controllers;

import com.pokefight.pokefight.models.User;
import com.pokefight.pokefight.repositories.UserRepository;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class ProfileController {

    private UserRepository userDao;

    public ProfileController(UserRepository userDao) {
        this.userDao = userDao;
    }

//    @GetMapping("/profile")
//    public String profileGet(){
//        return "temporary/profile";
//    }
//
//    @PostMapping("/profile")
//    public String profilePost(){ return "temporary/profile"; }

    @GetMapping("/profile")
    public String gUsers(Model model) {
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        model.addAttribute("user", user);

        System.out.println(user.getId());
        return "temporary/profile";
    }


    @PostMapping("/profile/{id}")
    public String submitEdit(@ModelAttribute User user) {
//        System.out.println(image);
        User oldUser = userDao.getById(user.getId());
        oldUser.setUsername(user.getUsername());
        oldUser.setPassword(user.getPassword());
        userDao.save(oldUser);

        return "redirect:/profile";
    }

    // Receives String from JavaScript
    @ResponseBody
    @PostMapping("/search/api/getSearchResult")
    public String getSearchResultViaAjax(@RequestParam(value = "url") String url) {
        System.out.println("Picture URL: "+ url);
        return "hello";
    }


}
