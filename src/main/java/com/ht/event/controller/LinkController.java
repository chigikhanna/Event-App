package com.ht.event.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LinkController {

    @RequestMapping(value = "/event/home")
    public ModelAndView homePage(){
        return new ModelAndView(("home"));
    }

    @RequestMapping(value = "/event/search")
    public ModelAndView search(){
        return new ModelAndView(("eventSearch"));
    }

}
