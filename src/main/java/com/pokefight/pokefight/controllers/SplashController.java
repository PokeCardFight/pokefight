package com.pokefight.pokefight.controllers;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class SplashController {
    @GetMapping("/")
    public String splashGet(){
        return "/index";
    }

    @PostMapping("/")
    public String splashPost(){
        return "/index";
    }
}
