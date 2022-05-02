package com.pokefight.pokefight.controllers;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class AboutController {
    @GetMapping("/about")
    public String aboutGet(){
        return "temporary/about";
    }

    @PostMapping("/about")
    public String aboutPost(){
        return "temporary/about";
    }
}
