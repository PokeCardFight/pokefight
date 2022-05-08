package com.pokefight.pokefight.controllers;

import com.google.gson.*;
import com.pokefight.pokefight.models.*;
import com.pokefight.pokefight.repositories.*;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.*;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.concurrent.ThreadLocalRandom;

@Controller
public class BattleController {

    private ItemRepository itemDao;
    private CardRepository cardDao;
    private PouchItemRepository pouchItemDao;
    private UserCardRepository userCardDao;

    private boolean turn;
    private long playerCardId;
    private long playerPouchId;
    private long computerCardId;

    private boolean flipCoin() { return ThreadLocalRandom.current().nextBoolean(); }

    public BattleController(CardRepository cardDao, ItemRepository itemDao, PouchItemRepository pouchItemDao, UserCardRepository userCardDao) {
        this.itemDao = itemDao;
        this.cardDao = cardDao;
        this.pouchItemDao = pouchItemDao;
        this.userCardDao = userCardDao;
    }

    @GetMapping("/battle")
    public String battleView(Model model){

        if (turn) model.addAttribute("turn", "Player");
        else model.addAttribute("turn", "Computer");

        Card playerCard = cardDao.getById(playerCardId);
        Card computerCard = cardDao.getById(computerCardId);
        model.addAttribute("playerCard", playerCard);
        model.addAttribute("computerCard", computerCard);

        List<Item> items = itemDao.getItemsByPouchId(playerPouchId);
        String itemsString = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create().toJson(items);
        model.addAttribute("items", itemsString);

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

    @PostMapping("/battle/remove/item")
    ResponseEntity<String> battleItemRemoval(@RequestParam(value = "id") long id){
        pouchItemDao.delete(pouchItemDao.getByPouchIdAndItemId(playerPouchId, id));
        return ResponseEntity.ok().body("Item " + id + " deleted.");
    }

    @PostMapping("/battle/add/card")
    ResponseEntity<String> battleCardAdder(@RequestParam(value = "id") long id){
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        userCardDao.save(new UserCard(user, cardDao.getById(id)));
        return ResponseEntity.ok().body("Card " + id + " added.");
    }
}
