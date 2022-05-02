package com.pokefight.pokefight.controllers;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class AboutController {
    @GetMapping("/")
    public String aboutGet(){
        return "temporary/about";
    }

    @PostMapping("/")
    public String aboutPost(){
        return "temporary/about";
    }
}
