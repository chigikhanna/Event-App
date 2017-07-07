package com.ht.event.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LinkController {
    @RequestMapping(value = "/event")
    public ModelAndView mainPage(){
        return new ModelAndView(("redirect"));
    }

    @RequestMapping(value = "/home")
    public ModelAndView homePage(){
        return new ModelAndView(("home"));
    }

}
