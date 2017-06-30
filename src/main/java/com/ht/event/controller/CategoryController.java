package com.ht.event.controller;

/**
 * Created by chigi on 30-Jun-17.
 */

import com.google.gson.Gson;
import com.ht.event.model.User;
import com.ht.event.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import com.ht.event.service.UserService;
@Controller
@RequestMapping(value="/category")
public class CategoryController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/add", method= RequestMethod.GET)
    public ModelAndView addUserPage() {
        ModelAndView modelAndView = new ModelAndView("adduser");
        modelAndView.addObject("user",new User());

        return modelAndView;
    }

    @RequestMapping(value = "/add", method=RequestMethod.POST)
    public String addingUser(@ModelAttribute User user){

        ModelAndView modelAndView=new ModelAndView("home");
        userService.addUser(user);

        String message="You have successfully signed up.";
        modelAndView.addObject("message",message);
        String json = new Gson().toJson(user);
        return json;
        //        return modelAndView;
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView deleteUser(@PathVariable String id){
        ModelAndView modelAndView=new ModelAndView("home");
        userService.deleteUser(Integer.parseInt(id));
        String message="Successfully deleted.";
        modelAndView.addObject("message",message);
        return modelAndView;
    }
}

