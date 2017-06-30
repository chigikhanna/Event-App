package com.ht.event.controller;

import java.util.List;

import com.google.gson.Gson;
import com.ht.event.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.ht.event.service.UserService;
@Controller
@RequestMapping(value="/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/add", method=RequestMethod.GET)
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
    @RequestMapping(value = "/list", produces= MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody String listOfUsers(){
        ModelAndView modelAndView=new ModelAndView("listuser");

        List<User> users=userService.getUsers();
        String json = new Gson().toJson(users);

        return json;
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
