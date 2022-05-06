package com.pokefight.pokefight.controllers;

import com.pokefight.pokefight.models.Item;
import com.pokefight.pokefight.models.Pouch;
import com.pokefight.pokefight.models.User;
import com.pokefight.pokefight.repositories.CardRepository;
import com.pokefight.pokefight.repositories.ItemRepository;
import com.pokefight.pokefight.repositories.PouchRepository;
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

    public HomeController(CardRepository cardDao, PouchRepository pouchDao, ItemRepository itemDao){
        this.cardDao = cardDao;
        this.pouchDao = pouchDao;
        this.itemDao = itemDao;
    }

    @GetMapping("/home")
    public String homeGet(Model model){
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        model.addAttribute("user", user);
        List<Item> items = itemDao.findAll();
        model.addAttribute("items", items);
        List<Pouch> pouches = pouchDao.findAll();
        model.addAttribute("pouches", pouches);
        return "/temporary/home";

    }


    @PostMapping("/home/add")
    public String homePost( @RequestParam("addItem") String add){
        long addItem_id = Long.parseLong(add);
//        Pouch pouch = pouchDao.getById(addItem_id);
        System.out.println(addItem_id);
        return "/temporary/home";
    }

    @PostMapping("/home/items_in_pouch")
    public String pouchItemPost(@ModelAttribute Item item , @RequestParam("pouchId") String id ){
        long pouch_id = Long.parseLong(id);
        System.out.println(pouch_id);
        List<Long> items = pouchDao.findItemsInPouchById(pouch_id);
        Item item1 = itemDao.findItemById(items.get(0));
//        long item1L = Long.
//        Item item1 = itemDao.getName(items.get(0));
//        System.out.println(items.get(0));
        System.out.println("item 1: " + items.get(0));
        System.out.println(item1);
        return "/temporary/home";
    }

    @ResponseBody
    @PostMapping("/pouch_and_card/id")
    public String getSearchResultViaAjax( @RequestParam(value = "pouch_id") long pouch_id, @RequestParam(value = "card_id") long card_id ) {

        pouchDao.getById(pouch_id);
        cardDao.getById(card_id);
        System.out.println("pouch id: "+ pouch_id);
        System.out.println("card id: "+ card_id);
        return "got them pouches";
    }
}
