package com.pokefight.pokefight.controllers;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class HomeController {
    @GetMapping("/home")
    public String homeGet(){
        return "/home";
    }

    @PostMapping("/home")
    public String homePost(){
        return "/home";
    }
}
