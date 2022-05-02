package com.pokefight.pokefight.controllers;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class SplashController {
    @GetMapping("/splash")
    public String splashGet(){
        return "temporary/splash";
    }

    @PostMapping("/splash")
    public String splashPost(){
        return "temporary/splash";
    }
}
