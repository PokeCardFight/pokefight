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

    private UserRepository userDao;
    private ItemRepository itemDao;
    private CardRepository cardDao;
    private PouchItemRepository pouchItemDao;
    private UserCardRepository userCardDao;
    private BackgroundRepository backgroundDao;

    private boolean turn;
    private long playerCardId;
    private long playerPouchId;
    private long computerCardId;

    private boolean flipCoin() { return ThreadLocalRandom.current().nextBoolean(); }

    public BattleController(BackgroundRepository backgroundDao, UserRepository userDao, CardRepository cardDao, ItemRepository itemDao, PouchItemRepository pouchItemDao, UserCardRepository userCardDao) {
        this.userDao = userDao;
        this.itemDao = itemDao;
        this.cardDao = cardDao;
        this.pouchItemDao = pouchItemDao;
        this.userCardDao = userCardDao;
        this.backgroundDao = backgroundDao;
    }

    @GetMapping("/battle")
    public String battleView(Model model){
        if (turn) model.addAttribute("turn", "Player");
        else model.addAttribute("turn", "Computer");

        Card playerCard = cardDao.getById(playerCardId);
        Card computerCard = cardDao.getById(computerCardId);
        model.addAttribute("playerCard", playerCard);
        model.addAttribute("computerCard", computerCard);

        List<Item> items = itemDao.getItemsByPouch(playerPouchId);
        String itemsString = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create().toJson(items);
        model.addAttribute("items", itemsString);

        String url = backgroundDao.getBackgroundUrl(computerCard.getType());
        model.addAttribute("backgroundUrl", url);

        return "/battle";
    }

    @GetMapping("/battle/{cardId}/{pouchId}/")
    public String battleGet(@PathVariable(value = "cardId") long cardId, @PathVariable(value = "pouchId") long pouchId){
        User currentUser = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = userDao.getById(currentUser.getId());

        turn = flipCoin();

        playerCardId = cardId;
        playerPouchId = pouchId;

        int userLevel = user.getLevel();
        if(userLevel >= 1 && userLevel <= 5) computerCardId = cardDao.getRandomCommonCard();
        else if(userLevel >= 6 && userLevel <= 10) computerCardId = cardDao.getRandomUncommonCard();
        else if(userLevel >= 11 && userLevel <= 15) computerCardId = cardDao.getRandomRareCard();

        System.out.println("userLevel = " + userLevel);
        System.out.println("computerCardId = " + computerCardId);

        return "redirect:/battle";
    }

    @PostMapping("/battle/remove/item")
    ResponseEntity<String> battleItemRemoval(@RequestParam(value = "id") long id){
        PouchItem tempPouchItem = pouchItemDao.getByPouchIdAndItemId(playerPouchId, id).get(0);
        pouchItemDao.delete(pouchItemDao.getByPouchIdAndItemId(playerPouchId, id).get(0));
        return ResponseEntity.ok().body("Item " + id + " deleted.");
    }

    @PostMapping("/battle/lost")
    ResponseEntity<String> battleLost(@RequestParam(value = "gold") int gold){
        User currentUser = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = userDao.getById(currentUser.getId());
        User oldUser = userDao.getById(user.getId());
        oldUser.setGold(user.getGold() + gold);
        userDao.save(oldUser);

        return ResponseEntity.ok().body(gold + " pity gold given.");
    }

    @PostMapping("/battle/won")
    ResponseEntity<String> battleWon(@RequestParam(value = "id") long id){
        User currentUser = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = userDao.getById(currentUser.getId());
        userCardDao.save(new UserCard(user, cardDao.getById(id)));

        int percentage = (int)Math.ceil((1.0 / (user.getLevel() + 1.0)) * 100.0);
        int xp = user.getXp() + percentage;

        User oldUser = userDao.getById(user.getId());
        oldUser.setGold(user.getGold() + 5);
        if (xp >= 100) {
            oldUser.setXp(0);
            oldUser.setLevel(user.getLevel() + 1);
        } else oldUser.setXp(xp);

        System.out.println("percentage = " + percentage);
        System.out.println("user.getXp() = " + user.getXp());
        System.out.println("oldUser.getXp() = " + oldUser.getXp());
        System.out.println("oldUser.getLevel() = " + oldUser.getLevel());

        userDao.save(oldUser);

        return ResponseEntity.ok().body("Card " + id + " added.");
    }
}
