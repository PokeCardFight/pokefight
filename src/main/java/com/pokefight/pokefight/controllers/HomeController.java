package com.pokefight.pokefight.controllers;

import com.google.gson.*;
import com.pokefight.pokefight.models.*;
import com.pokefight.pokefight.repositories.*;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.*;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class HomeController {
    private CardRepository cardDao;
    private PouchRepository pouchDao;
    private ItemRepository itemDao;
    private UserRepository userDao;
    private PouchItemRepository pouchItemDao;


    public HomeController(CardRepository cardDao, PouchRepository pouchDao, ItemRepository itemDao, UserRepository userDao, PouchItemRepository pouchItemDao){
        this.cardDao = cardDao;
        this.pouchDao = pouchDao;
        this.itemDao = itemDao;
        this.userDao = userDao;
        this.pouchItemDao = pouchItemDao;
    }

    @GetMapping("/home")
    public String homeGet(Model model) {
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
        String userCardString = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create().toJson(userCard);
        model.addAttribute("cards", userCardString);
        return "/home";
    }

    @PostMapping("/home/addItems")
    public String homePost(Model model, @RequestParam("pouchId") long pouchId,@RequestParam("itemId") long itemId ){
        System.out.println("pouchId = " + pouchId);
        System.out.println("itemId = " + itemId);
        Pouch tempPouch = pouchDao.getById(pouchId);
        int quantity = pouchItemDao.getQuantityFromPouch(tempPouch.getId());
        System.out.println("this is quantity: " + quantity);
        System.out.println("this is the pouchId : " + tempPouch.getId());
        if (quantity < 3) pouchItemDao.save(new PouchItem(tempPouch, itemDao.getById(itemId)));
        return "redirect:/home";
    }

}
