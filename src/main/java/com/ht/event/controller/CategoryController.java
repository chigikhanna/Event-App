package com.ht.event.controller;

import com.ht.event.model.Category;
import com.ht.event.service.CategoryService;
import org.jboss.logging.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(value = "/category")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public ModelAndView addCategoryPage() {
        ModelAndView modelAndView = new ModelAndView("addcategory");
        modelAndView.addObject("category", new Category());
        return modelAndView;
    }

    @RequestMapping(value = "/show/{id}")
    public ModelAndView show(@PathVariable String id){
        ModelAndView modelAndView = new ModelAndView("categoryevent");
        modelAndView.addObject("category",categoryService.getCategory(Integer.parseInt(id)));
        return modelAndView;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView addingCategory(@ModelAttribute Category category) {

        ModelAndView modelAndView = new ModelAndView("redirect:/home");
        categoryService.addCategory(category);
        return modelAndView;
    }


    @RequestMapping(value = "/list")
    public ModelAndView listOfCategory() {
        ModelAndView modelAndView = new ModelAndView("listcategory");

        List<Category> categories = categoryService.getCategories();
        modelAndView.addObject("categories", categories);
//        String event = new Gson().toJson(modelAndView);
//        return event;
        return modelAndView;
    }


    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView deleteCategory(@PathVariable String id) {
        ModelAndView modelAndView = new ModelAndView("redirect:home");
        categoryService.deleteCategory(Integer.parseInt(id));
        String message = "Successfully deleted.";
        modelAndView.addObject("message", message);
        return modelAndView;
    }
}
