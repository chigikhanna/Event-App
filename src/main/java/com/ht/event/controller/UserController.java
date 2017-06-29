package com.ht.event.controller;

import java.util.List;

import com.ht.event.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ht.event.service.UserService;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "{name}", method=RequestMethod.GET)
   public @ResponseBody User getUSerInJSON(@PathVariable String name){
        User user = new User();
        user.setName(name);
        return user;
    }

}
