package com.pokefight.pokefight.controllers;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class RegisterController {
    @GetMapping("/register")
    public String registerGet(){
        return "temporary/register";
    }

    @PostMapping("/register")
    public String registerPost(){
        return "temporary/register";
    }
}
