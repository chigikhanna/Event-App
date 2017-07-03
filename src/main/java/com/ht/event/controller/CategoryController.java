package com.ht.event.controller;

/**
 * Created by chigi on 30-Jun-17.
 */

import com.google.gson.Gson;
import com.ht.event.model.Category;
import com.ht.event.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/category")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @RequestMapping(value = "/add", method= RequestMethod.GET)
    public ModelAndView addCategoryPage() {
        ModelAndView modelAndView = new ModelAndView("addcategory");
        modelAndView.addObject("category",new Category());
        return modelAndView;
    }

    @RequestMapping(value = "/add", method=RequestMethod.POST)
    public String addingCategory(@ModelAttribute Category category){

        ModelAndView modelAndView=new ModelAndView("home");
        categoryService.addCategory(category);

        String message="You have successfully signed up.";
        modelAndView.addObject("message",message);
        String json = new Gson().toJson(category);
        return json;
        //        return modelAndView;
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView deleteUser(@PathVariable String id){
        ModelAndView modelAndView=new ModelAndView("home");
        categoryService.deleteCategory(Integer.parseInt(id));
        String message="Successfully deleted.";
        modelAndView.addObject("message",message);
        return modelAndView;
    }
}

