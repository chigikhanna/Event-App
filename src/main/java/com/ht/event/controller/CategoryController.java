package com.ht.event.controller;

import com.google.gson.Gson;
import com.ht.event.model.Category;
import com.ht.event.model.Event;
import com.ht.event.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

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


    @RequestMapping(value = "/list")
    public ModelAndView listOfCategory(){
        ModelAndView modelAndView=new ModelAndView("listcategory");

        List<Category> categories=categoryService.getCategories();
        modelAndView.addObject("categories",categories);
//        String event = new Gson().toJson(modelAndView);
//        return event;
        return modelAndView;
    }


    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView deleteCategory(@PathVariable String id){
        ModelAndView modelAndView=new ModelAndView("home");
        categoryService.deleteCategory(Integer.parseInt(id));
        String message="Successfully deleted.";
        modelAndView.addObject("message",message);
        return modelAndView;
    }
}
