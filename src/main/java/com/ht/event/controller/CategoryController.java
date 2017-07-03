package com.ht.event.controller;

import com.google.gson.Gson;
import com.ht.event.model.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by chigi on 03-Jul-17.
 */

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

        String message="Category added.";
        modelAndView.addObject("message",message);

        String json = new Gson().toJson(modelAndView);
        return json;
    }
}
