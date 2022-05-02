package com.pokefight.pokefight.controllers;

import com.pokefight.pokefight.models.User;
import com.pokefight.pokefight.repositories.UserRepository;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.*;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class RegisterController {
    private UserRepository userDao;
    private PasswordEncoder passwordEncoder;

    public RegisterController(UserRepository userDao, PasswordEncoder passwordEncoder) {
        this.userDao = userDao;
        this.passwordEncoder = passwordEncoder;
    }

    @GetMapping("/register")
    public String registerGet(Model model){
        model.addAttribute("user", new User());
        return "temporary/register";
    }

    @PostMapping("/register")
    public String registerPost(@ModelAttribute User user){
        String hash = passwordEncoder.encode(user.getPassword());
        userDao.save(new User(
            user.getUsername(),
                user.getEmail(),
                hash,
                "http:\\",
                0,
                0,
                0
        ));
        return "redirect:temporary/splash";
    }
}
