package com.pokefight.pokefight.controllers;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class SplashController {
    @GetMapping("/")
    public String splashGet(){
        return "index";
    }

    @GetMapping("favicon.ico")
    @ResponseBody
    public void disableFavicon() {
        //Method is void to avoid browser 404 issue by returning nothing in the response.
    }

}
