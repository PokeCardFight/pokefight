package com.pokefight.pokefight.controllers;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class BattleController {
    @GetMapping("/battle")
    public String aboutGet(){
        return "/battle";
    }

    @PostMapping("/battle")
    public String aboutPost(){
        return "/battle";
    }
}
