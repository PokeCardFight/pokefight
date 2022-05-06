package com.pokefight.pokefight.controllers;

import com.pokefight.pokefight.models.*;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.*;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.concurrent.ThreadLocalRandom;

@Controller
public class BattleController {

//    User user;
//    Card playerCard, computerCard;
//
//    private BattleController() {
//        user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//    }

    private boolean flipCoin() { return ThreadLocalRandom.current().nextBoolean(); }

    @GetMapping("/battle/{cardId}/{pouchId}/")
    public String aboutGet(Model model, @PathVariable(value = "cardId") long cardId, @PathVariable(value = "pouchId") long pouchId){

        boolean isHeads = flipCoin();
        String currentTurn;
        if (isHeads) currentTurn = "Player";
        else currentTurn = "Computer";

        model.addAttribute("turn", currentTurn);

        return "/battle";
    }

    @PostMapping("/battle")
    public String aboutPost(){
        return "/battle";
    }
}
