package com.ht.event.service;

import com.ht.event.model.Category;

/**
 * Created by tanvigupta on 03/07/17.
 */
public interface CategoryService {
    public void addCategory(Category category);
    public Category getCategory(Integer id);
    public void deleteCategory(Integer id);
}
