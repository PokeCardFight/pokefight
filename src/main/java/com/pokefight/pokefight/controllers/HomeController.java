package com.pokefight.pokefight.controllers;

import com.pokefight.pokefight.models.Card;
import com.pokefight.pokefight.models.Item;
import com.pokefight.pokefight.models.Pouch;
import com.pokefight.pokefight.models.User;
import com.pokefight.pokefight.repositories.CardRepository;
import com.pokefight.pokefight.repositories.ItemRepository;
import com.pokefight.pokefight.repositories.PouchRepository;
import com.pokefight.pokefight.repositories.UserRepository;
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

    public HomeController(CardRepository cardDao, PouchRepository pouchDao, ItemRepository itemDao, UserRepository userDao){
        this.cardDao = cardDao;
        this.pouchDao = pouchDao;
        this.itemDao = itemDao;
        this.userDao = userDao;
    }

    @GetMapping("/home")
    public String homeGet(Model model){
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        model.addAttribute("user", user);
        List<Item> items = itemDao.findAll();
        model.addAttribute("items", items);
        List<Pouch> pouches = pouchDao.findAll();
        model.addAttribute("pouches", pouches);
        List<Card>  cards = cardDao.findAll();
        model.addAttribute("cards" , cards);
        long userId = user.getId();
        List<Long> userPouchIds = userDao.findUserPouchesById(userId);
        List<String> itemsInPouch1 = itemDao.findItemById(userPouchIds.get(0));
        List<String> itemsInPouch2 = itemDao.findItemById(userPouchIds.get(1));
        List<String> itemsInPouch3 = itemDao.findItemById(userPouchIds.get(2));
        model.addAttribute("itemsInPouch1", itemsInPouch1);
        model.addAttribute("itemsInPouch2", itemsInPouch2);
        model.addAttribute("itemsInPouch3", itemsInPouch3);
        List<String> userCardImage = cardDao.getUserCards();
        model.addAttribute("userCardImage", userCardImage );
        return "/temporary/home";

    }
  
    @PostMapping("/home/addItems")
    public String homePost( @RequestParam("pouch_id") int pouchId,@RequestParam("item_id") int itemId ){
        System.out.println(itemId);
        System.out.println(pouchId);
        return "/temporary/home";
    }

    @PostMapping("/home/items_in_pouch")
    public String pouchItemPost(@ModelAttribute Item item , @RequestParam("pouchId") String id ){
        long pouch_id = Long.parseLong(id);
        System.out.println(pouch_id);
        List<Long> items = pouchDao.findItemsInPouchById(pouch_id);
        return "/temporary/home";
    }
}
