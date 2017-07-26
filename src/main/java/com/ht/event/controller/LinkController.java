package com.ht.event.controller;

import com.ht.event.model.EventDTO;
import com.ht.event.service.CategoryService;
import com.ht.event.service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LinkController {
    @Autowired
    EventService eventService;

    @RequestMapping(value = "/home")
    public ModelAndView homePage() {
        ModelAndView modelAndView = new ModelAndView("home");
        EventDTO eventDTO = new EventDTO();
        modelAndView.addObject("events", eventService.getEvents(eventDTO));
        return modelAndView;
    }
}
