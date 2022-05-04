package com.pokefight.pokefight.controllers;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class ContactController {
    @GetMapping("/contact")
    public String contactGet(){
        return "/contactUs";
    }

    @PostMapping("/contact")
    public String contactPost(){
        return "/contactUs";
    }
}
