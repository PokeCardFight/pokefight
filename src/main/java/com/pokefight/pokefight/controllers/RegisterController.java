package com.pokefight.pokefight.controllers;

import com.pokefight.pokefight.models.*;
import com.pokefight.pokefight.repositories.*;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.*;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.pokefight.pokefight.services.EmailService;

import java.util.List;

@Controller
public class RegisterController {
    private UserRepository userDao;
    private UserCardRepository userCardDao;
    private ItemRepository itemDao;
    private CardRepository cardDao;
    private PouchRepository poachDao;
    private PouchItemRepository poachItemDao;

    private PasswordEncoder passwordEncoder;

    private final EmailService emailService;

    public RegisterController(UserRepository userDao, CardRepository cardDao, UserCardRepository userCardDao, ItemRepository itemDao, PouchRepository poachDao, PouchItemRepository poachItemDao, PasswordEncoder passwordEncoder, EmailService emailService) {
        this.userDao = userDao;
        this.userCardDao = userCardDao;
        this.cardDao = cardDao;
        this.itemDao = itemDao;
        this.poachDao = poachDao;
        this.poachItemDao = poachItemDao;
        this.passwordEncoder = passwordEncoder;
        this.emailService = emailService;
    }

    @GetMapping("/register")
    public String registerGet(Model model){
        model.addAttribute("user", new User());

        return "/registration";
    }

    @PostMapping("/register")
    public String registerPost(@ModelAttribute User user, @RequestParam(name = "password-confirm") String passwordConfirm){
        String password = user.getPassword();
        if (!password.equals(passwordConfirm)) {
            System.out.println("Passwords do not match.");
            return "registration";
        }

        String hash = passwordEncoder.encode(user.getPassword());
        User newUser = userDao.save(new User(
                user.getUsername(),
                user.getEmail(),
                hash,
                "../static/img/DefaultProfilePic.png",
                10,
                0,
                1
        ));

        poachDao.save(new Pouch(newUser));
        poachDao.save(new Pouch(newUser));
        poachDao.save(new Pouch(newUser));

        List<Long> pouchIds = poachDao.findUserPouchesById(newUser.getId());
        Pouch newPouch = poachDao.getById(pouchIds.get(0));

        poachItemDao.save(new PouchItem(newPouch, itemDao.getById(1L)));
        poachItemDao.save(new PouchItem(newPouch, itemDao.getById(4L)));
        poachItemDao.save(new PouchItem(newPouch, itemDao.getById(7L)));

        userCardDao.save(new UserCard(newUser, cardDao.getById(cardDao.getRandomCommonCard())));

        emailService.sendAccountCreatedMessage(user);
        return "redirect:/";
    }
}
