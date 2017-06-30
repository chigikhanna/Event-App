package com.ht.event.dao;

import com.ht.event.model.Category;
import com.ht.event.model.Event;

/**
 * Created by chigi on 30-Jun-17.
 */
public interface CategoryDao {
    public void addCategory(Category category);
    public void deleteCategory(Integer id);
    public Category getCategory(Integer id);
}
