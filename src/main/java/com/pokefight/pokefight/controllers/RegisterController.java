package com.pokefight.pokefight.controllers;

import com.pokefight.pokefight.models.User;
import com.pokefight.pokefight.repositories.UserRepository;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.*;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.pokefight.pokefight.services.EmailService;

@Controller
public class RegisterController {
    private UserRepository userDao;
    private PasswordEncoder passwordEncoder;

    private final EmailService emailService;

    public RegisterController(UserRepository userDao, PasswordEncoder passwordEncoder, EmailService emailService) {
        this.userDao = userDao;
        this.passwordEncoder = passwordEncoder;
        this.emailService = emailService;
    }

    @GetMapping("/register")
    public String registerGet(Model model){
        model.addAttribute("user", new User());
        return "temporary/register";
    }

    @PostMapping("/register")
    public String registerPost(@ModelAttribute User user, @RequestParam(name = "password-confirm") String passwordConfirm){
        String password = user.getPassword();
        if (!password.equals(passwordConfirm)) {
            System.out.println("Passwords do not match.");
            return "temporary/register";
        }

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

        emailService.sendAccountCreatedMessage(user);
        return "redirect:/";
    }
}
