package com.ht.event.service;

import com.ht.event.model.Category;

import java.util.List;

/**
 * Created by tanvigupta on 03/07/17.
 */
public interface CategoryService {
    public void addCategory(Category category);
    public Category getCategory(Integer id);
//    public List<Category> getCategory();
    public void deleteCategory(Integer id);
}
