package com.pokefight.pokefight.controllers;

import com.pokefight.pokefight.models.User;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class HomeController {
    @GetMapping("/home")
    public String homeGet(){
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        System.out.println("user.getUsername() = " + user.getUsername());
        return "temporary/home";
    }

    @PostMapping("/home")
    public String homePost(){
        return "temporary/home";
    }
}
