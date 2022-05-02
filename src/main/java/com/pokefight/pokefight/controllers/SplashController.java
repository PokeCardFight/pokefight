package com.pokefight.pokefight.controllers;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class SplashController {
    @GetMapping("/")
    public String showSignupForm(){
        return "temporary/splash";
    }

    @PostMapping("/")
    public String saveUser(){
        return "temporary/splash";
    }
}
