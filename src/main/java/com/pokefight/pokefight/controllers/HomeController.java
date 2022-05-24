package com.pokefight.pokefight.controllers;

import com.google.gson.*;
import com.pokefight.pokefight.models.*;
import com.pokefight.pokefight.repositories.*;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.*;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@Controller
public class HomeController {
    private CardRepository cardDao;
    private PouchRepository pouchDao;
    private ItemRepository itemDao;
    private UserRepository userDao;
    private PouchItemRepository pouchItemDao;
    private UserCardRepository userCardDao;


    public HomeController(CardRepository cardDao, PouchRepository pouchDao, ItemRepository itemDao, UserRepository userDao, PouchItemRepository pouchItemDao, UserCardRepository userCardDao){
        this.cardDao = cardDao;
        this.pouchDao = pouchDao;
        this.itemDao = itemDao;
        this.userDao = userDao;
        this.pouchItemDao = pouchItemDao;
        this.userCardDao = userCardDao;
    }

    @GetMapping("/home/{order}")
    public String homeGet(Model model, @PathVariable("order") String order) {
        User currentUser = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = userDao.getById(currentUser.getId());
        model.addAttribute("user", user);
        List<Item> items = itemDao.findAll();
        model.addAttribute("items", items);
        List<Pouch> pouches = pouchDao.findAll();
        model.addAttribute("pouches", pouches);
        List<Card> cards = cardDao.findAll();
        model.addAttribute("cards", cards);
        long userId = user.getId();
        List<Long> userPouchIds = pouchDao.findUserPouchesById(userId);
        model.addAttribute("userPouchIds", userPouchIds);
        List<String> itemsInPouch1 = pouchItemDao.findItemById(userPouchIds.get(0));
        List<String> itemsInPouch2 = pouchItemDao.findItemById(userPouchIds.get(1));
        List<String> itemsInPouch3 = pouchItemDao.findItemById(userPouchIds.get(2));
        model.addAttribute("itemsInPouch1", itemsInPouch1);
        model.addAttribute("itemsInPouch2", itemsInPouch2);
        model.addAttribute("itemsInPouch3", itemsInPouch3);
        List<Card> userCard = cardDao.getUserCards(user.getId());
        List<Card> userCardOrderedAttackH2L = cardDao.OrderByAttackDesc(userId);
        List<Card> userCardOrderedAttackL2H = cardDao.OrderByAttackAsc(userId);
        List<Card> userCardOrderedNameZ2A = cardDao.OrderByNameDesc(userId);
        List<Card> userCardOrderedNameA2Z = cardDao.OrderByNameAsc(userId);

        switch (order){
            case  "attackH2L" : {
                String userCardString = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create().toJson(userCardOrderedAttackH2L);
                model.addAttribute("cards", userCardString);
            }break;
            case  "attackL2H" : {
                String userCardString = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create().toJson(userCardOrderedAttackL2H);
                model.addAttribute("cards", userCardString);
            }break;
            case  "nameA2Z" : {
                String userCardString = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create().toJson(userCardOrderedNameA2Z);
                model.addAttribute("cards", userCardString);
            }break;
            case  "nameZ2A" : {
                String userCardString = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create().toJson(userCardOrderedNameZ2A);
                model.addAttribute("cards", userCardString);
            }break;
            default: {
                String userCardString = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create().toJson(userCard);
                model.addAttribute("cards", userCardString);
            }break;
        }
        return "home";
    }


    @PostMapping("/home/addItems")
    public String homePost(Model model, @RequestParam("pouchId") long pouchId,@RequestParam("itemId") long itemId ){
        User currentUser = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User cUser = userDao.getById(currentUser.getId());
        int userMoney = cUser.getGold();
        Item tempItem = itemDao.getById(itemId);
        int itemCost = tempItem.getCost();
        int moneyLeft = userMoney - itemCost;
        if (moneyLeft >= 0) {
            cUser.setGold(moneyLeft);
            userDao.save(cUser);
            Pouch tempPouch = pouchDao.getById(pouchId);
            int quantity = pouchItemDao.getQuantityFromPouch(tempPouch.getId());
            if (quantity < 3) pouchItemDao.save(new PouchItem(tempPouch, tempItem));
        }
        return "redirect:/home/default";
    }


}
