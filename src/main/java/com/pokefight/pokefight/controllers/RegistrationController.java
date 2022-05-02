package com.pokefight.pokefight.controllers;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class RegistrationController {
    @GetMapping("/")
    public String registerGet(){
        return "temporary/registration";
    }

    @PostMapping("/")
    public String registerPost(){
        return "temporary/registration";
    }
}
