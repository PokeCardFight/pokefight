package com.pokefight.pokefight.controllers;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class HomeController {
    @GetMapping("/")
    public String homeGet(){
        return "temporary/home";
    }

    @PostMapping("/")
    public String homePost(){
        return "temporary/home";
    }
}
