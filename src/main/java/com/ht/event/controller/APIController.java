package com.ht.event.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.google.gson.Gson;
import com.ht.event.model.Event;
import com.ht.event.model.User;
import com.ht.event.service.EventService;
import com.ht.event.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServlet;
import java.util.List;

/**
 * Created by chigi on 13-Jul-17.
 */
@Controller
@RequestMapping(value="/api")
public class APIController {
    @Autowired
    private EventService eventService;

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/event/list", produces= MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody String listOfEventsJson(){
        List<Event> events=eventService.getEvents();
        String event = new Gson().toJson(events);
        return event;
    }

    @RequestMapping(value = "/user/list", produces= MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody String listOfUsersJson(){
        List<User> users=userService.getUsers();
        String json = new Gson().toJson(users);
        return json;
    }
}
