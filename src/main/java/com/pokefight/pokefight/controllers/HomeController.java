package com.pokefight.pokefight.controllers;

import com.pokefight.pokefight.models.User;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.*;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class HomeController {
    @GetMapping("/home")
    public String homeGet(Model model){

        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        model.addAttribute("user", user);
        return "/home";
    }

    @PostMapping("/home")
    public String homePost(){
        return "/home";
    }
}
