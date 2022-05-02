package com.pokefight.pokefight.controllers;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class BattleController {
    @GetMapping("/")
    public String battleGet(){
        return "temporary/about";
    }

    @PostMapping("/")
    public String battlePost(){
        return "temporary/about";
    }
}
