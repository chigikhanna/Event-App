package com.ht.event.controller;

import com.ht.event.model.EventDTO;
import com.ht.event.service.CategoryService;
import com.ht.event.service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LinkController {
    @Autowired
    EventService eventService;

    @Autowired
    CategoryService categoryService;

    @RequestMapping(value = "/home")
    public ModelAndView homePage() {
        ModelAndView modelAndView = new ModelAndView("home");
        EventDTO eventDTO = new EventDTO();
        modelAndView.addObject("events", eventService.getEvents(eventDTO));
        modelAndView.addObject("category",categoryService.getCategories());
        return modelAndView;
    }
    @RequestMapping(value = "/event/details{id}")
    public ModelAndView showDetails(@PathVariable String id){
        ModelAndView modelAndView = new ModelAndView("details");
        modelAndView.addObject("events",eventService.getEvent(Integer.parseInt(id)));
        return modelAndView;
    }
}
