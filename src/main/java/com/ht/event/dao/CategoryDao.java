package com.ht.event.dao;

import com.ht.event.model.Category;

import java.util.List;

/**
 * Created by tanvigupta on 03/07/17.
 */

public interface CategoryDao {
    public void addCategory(Category category);

    public Category getCategory(Integer id);

    public void deleteCategory(Integer id);
    public List<Category> getCategories();
}
