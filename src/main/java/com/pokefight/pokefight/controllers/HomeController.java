package com.pokefight.pokefight.controllers;

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
    private UserPouchRepository userPouchDao;


    public HomeController(CardRepository cardDao, PouchRepository pouchDao, ItemRepository itemDao, UserRepository userDao, PouchItemRepository pouchItemDao, UserPouchRepository userPouchDao){
        this.cardDao = cardDao;
        this.pouchDao = pouchDao;
        this.itemDao = itemDao;
        this.userDao = userDao;
        this.pouchItemDao = pouchItemDao;
        this.userPouchDao = userPouchDao;
    }

    @GetMapping("/home")
    public String homeGet(Model model) {
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        model.addAttribute("user", user);
        List<Item> items = itemDao.findAll();
        model.addAttribute("items", items);
        List<Pouch> pouches = pouchDao.findAll();
        model.addAttribute("pouches", pouches);
        List<Card> cards = cardDao.findAll();
        model.addAttribute("cards", cards);
        long userId = user.getId();
        List<Long> userPouchIds = userDao.findUserPouchesById(userId);
        List<String> itemsInPouch1 = itemDao.findItemById(userPouchIds.get(0));
        List<String> itemsInPouch2 = itemDao.findItemById(userPouchIds.get(1));
        List<String> itemsInPouch3 = itemDao.findItemById(userPouchIds.get(2));
        model.addAttribute("itemsInPouch1", itemsInPouch1);
        model.addAttribute("itemsInPouch2", itemsInPouch2);
        model.addAttribute("itemsInPouch3", itemsInPouch3);

        List<Card> userCardInfo = cardDao.getUserCards();
        model.addAttribute("userCardInfo", userCardInfo);
        return "/home";


    }

    @PostMapping("/home/addItems")
    public String homePost(Model model, @RequestParam("pouch_id") long pouchId,@RequestParam("item_id") long itemId ){
        Pouch tempPouch = pouchDao.getById(pouchId);
        long quantity = tempPouch.getQuantity();
        if (tempPouch.getQuantity()< 3) {
            pouchItemDao.save(new PouchItem(pouchDao.getById(pouchId), itemDao.getById(itemId)));
            tempPouch.setQuantity(quantity + 1);
        }
        return "/temporary/home";
    }

}
