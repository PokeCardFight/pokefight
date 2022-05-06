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
//        String item1 = itemDao.findItemById(items.get(0));
//        String item2 = itemDao.findItemById(items.get(1));
//        String item3 = itemDao.findItemById(items.get(2));
//        if (item1 ==)
//        long item1L = Long.
//        Item item1 = itemDao.getName(items.get(0));
//        System.out.println(items.get(0));
        System.out.println("item 1: " + items.get(0));
//        System.out.println(item1);
//        System.out.println(item2);
//        System.out.println(item3);
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
