package com.pokefight.pokefight.controllers;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class SplashController {
    @GetMapping("/login")
    public String splashGet(){

        return "temporary/splash";
    }
}
