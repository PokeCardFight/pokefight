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

    @GetMapping("/profile")
    public String gUsers(Model model) {
//        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = userDao.getById(2L);
        model.addAttribute("user",user);

        System.out.println(user.getId());
        return"temporary/profile";
}

    @PostMapping("/profile/{id}")
    public String submitEdit(@ModelAttribute User user) {

        User oldUser = userDao.getById(user.getId());
        oldUser.setUsername(user.getUsername());
        oldUser.setPassword(user.getPassword());
        System.out.println(user.getId());
        System.out.println(user.getUsername());
        userDao.save(oldUser);

        return "redirect:/profile";
    }

}
