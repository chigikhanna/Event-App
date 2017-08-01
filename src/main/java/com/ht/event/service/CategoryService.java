package com.ht.event.service;

import com.ht.event.model.Category;

import java.util.List;

/**
 * Created by tanvigupta on 03/07/17.
 */
public interface CategoryService {
    void addCategory(Category category);

    Category getCategory(Integer id);

    //    public List<Category> getCategories();
    void deleteCategory(Integer id);

    List<Category> getCategories();
}
