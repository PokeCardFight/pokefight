package com.pokefight.pokefight.controllers;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

import java.util.concurrent.ThreadLocalRandom;

@Controller
public class BattleController {

    private boolean flipCoin() { return ThreadLocalRandom.current().nextBoolean(); }

    @GetMapping("/battle")
    public String aboutGet(){

        System.out.println("flipCoin() = " + flipCoin());

        return "/battle";
    }

    @PostMapping("/battle")
    public String aboutPost(){
        return "/battle";
    }
}
