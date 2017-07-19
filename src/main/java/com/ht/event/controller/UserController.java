package com.ht.event.controller;

import java.util.List;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.ht.event.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import com.ht.event.service.UserService;

@Controller
@RequestMapping(value="/user")
public class UserController {

    @Autowired
    private UserService userService;

//    @RequestMapping(value = "/add", method=RequestMethod.GET)
//    public ModelAndView addUserPage() {
//        ModelAndView modelAndView = new ModelAndView("adduser");
//        modelAndView.addObject("user",new User());
//
//        return modelAndView;
//    }

    @RequestMapping(value = "/add", method=RequestMethod.POST)
    public ModelAndView addingUser(@ModelAttribute User user){

        ModelAndView modelAndView=new ModelAndView("home");
        userService.addUser(user);

        return modelAndView;
    }
    @RequestMapping(value = "/list")
    public ModelAndView listOfUsers() throws JsonProcessingException {
        ModelAndView modelAndView=new ModelAndView("listuser");

        List<User> users=userService.getUsers();
        ObjectMapper mapper = new ObjectMapper();
        modelAndView.addObject("users", mapper.writeValueAsString(users));

        return modelAndView;
    }

    @RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
    public ModelAndView editUserPage(@PathVariable String id) {

        ModelAndView modelAndView = new ModelAndView("edituser");
        User user = userService.getUser(Integer.parseInt(id));

        modelAndView.addObject("user",user);
        return modelAndView;
    }
    @RequestMapping(value="/edit/{id}", method=RequestMethod.POST)
    public ModelAndView editingUser(@ModelAttribute User user) {

        ModelAndView modelAndView = new ModelAndView("home");

        userService.updateUser(user);

        String message = "User details were successfully edited.";
        modelAndView.addObject("message", message);

        return modelAndView;
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
