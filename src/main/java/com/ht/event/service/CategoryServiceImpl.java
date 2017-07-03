package com.ht.event.service;

import com.ht.event.dao.CategoryDao;
import com.ht.event.model.Category;
import com.ht.event.model.Event;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by chigi on 30-Jun-17.
 */
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryDao categoryDao;

    @Override
    @Transactional
    public void addCategory(Category category) {
        categoryDao.addCategory(category);
    }


    @Override
    public Category getCategory(Integer id) {
        return categoryDao.getCategory(id);
    }

    @Override
    public void deleteCategory(Integer id) {

        categoryDao.deleteCategory(id);
    }


}
