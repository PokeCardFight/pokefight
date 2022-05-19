package com.pokefight.pokefight.controllers;

import com.pokefight.pokefight.models.User;
import com.pokefight.pokefight.services.EmailService;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class ContactController {

    private final EmailService emailService;

    public ContactController(EmailService emailService) {
        this.emailService = emailService;
    }

    @GetMapping("/contact")
    public String contactGet(){
        return "contactUs";
    }

    @PostMapping("/contact")
    public String contactPost(@RequestParam Map<String, String> params){
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        emailService.sendContactReceivedMessage(user,  params.get("subject"),  params.get("message"));
        return "redirect:/home/default";
    }
}
