package com.pokefight.pokefight.controllers;

import com.pokefight.pokefight.models.*;
import com.pokefight.pokefight.repositories.CardRepository;
import com.pokefight.pokefight.repositories.UserRepository;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.*;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.concurrent.ThreadLocalRandom;

@Controller
public class BattleController {

    private CardRepository cardDao;

    boolean turn;
    long playerCardId;
    long playerPouchId;
    long computerCardId;

    private boolean flipCoin() { return ThreadLocalRandom.current().nextBoolean(); }
    private long getRandomCardId() { return (long)(Math.random() * 150) + 1; }

    public BattleController(CardRepository cardDao) {
        this.cardDao = cardDao;
    }

    @GetMapping("/battle")
    public String battleView(Model model){

        if (turn) model.addAttribute("turn", "Player");
        else model.addAttribute("turn", "Computer");

        Card playerCard = cardDao.getById(playerCardId);
        Card computerCard = cardDao.getById(computerCardId);
        model.addAttribute("playerCard", playerCard.getName());
        model.addAttribute("computerCard", computerCard.getName());

        return "/battle";
    }

    @GetMapping("/battle/{cardId}/{pouchId}/")
    public String battleGet(@PathVariable(value = "cardId") long cardId, @PathVariable(value = "pouchId") long pouchId){
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        turn = flipCoin();

        playerCardId = cardId;
        playerPouchId = pouchId;

        int userLevel = user.getLevel();
        if(userLevel >= 1 && userLevel <= 5) computerCardId = cardDao.getRandomCommonCard();
        else if(userLevel >= 6 && userLevel <= 10) computerCardId = cardDao.getRandomUncommonCard();
        else if(userLevel >= 11 && userLevel <= 15) computerCardId = cardDao.getRandomRareCard();

        return "redirect:/battle";
    }

    @PostMapping("/battle")
    public String battlePost(){
        return "/battle";
    }
}
