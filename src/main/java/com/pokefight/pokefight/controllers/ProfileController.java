package com.pokefight.pokefight.controllers;

import com.pokefight.pokefight.models.User;
import com.pokefight.pokefight.repositories.UserRepository;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.*;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class ProfileController {

    private UserRepository userDao;

    public ProfileController(UserRepository userDao){
        this.userDao=userDao;
    }

//    @GetMapping("/profile")
//    public String profileGet(){
//        return "temporary/profile";
//    }
//
//    @PostMapping("/profile")
//    public String profilePost(){ return "temporary/profile"; }

    @GetMapping("/profile/{username}")
    public String gUsers(@PathVariable String username ,Model model) {
        User user = userDao.findByUsername(username);
        model.addAttribute("username",user);
        return"temporary/profile";
}
    @GetMapping("/profile/edit")
    public String editProfile( Model model) {
        model.addAttribute("user", new User());
        return"temporary/profile";
    }

    @PostMapping("/profile/edit")
    public String submitEdit(@ModelAttribute User user) {
        userDao.save(user);
        return "redirect:temporary/profile";
    }

}
