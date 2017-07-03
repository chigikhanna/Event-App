package com.ht.event.service;

import com.ht.event.model.Category;
import com.ht.event.model.Event;

import java.util.List;

/**
 * Created by chigi on 30-Jun-17.
 */
public interface CategoryService {

        public void addCategory(Category category);

        public Category getCategory(Integer id);
        public void deleteCategory(Integer id);
}

