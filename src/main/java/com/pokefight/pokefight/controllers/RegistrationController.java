package com.pokefight.pokefight.controllers;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class RegistrationController {
    @GetMapping("/register")
    public String registerGet(){
        return "temporary/registration";
    }

    @PostMapping("/register")
    public String registerPost(){
        return "temporary/registration";
    }
}
