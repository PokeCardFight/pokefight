package com.pokefight.pokefight.controllers;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class ProfileController {
    @GetMapping("/")
    public String profileGet(){
        return "temporary/profile";
    }

    @PostMapping("/")
    public String profilePost(){
        return "temporary/profile";
    }
}
