package com.ht.event.service;

import com.ht.event.dao.CategoryDao;
import com.ht.event.model.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by tanvigupta on 30-Jun-17.
 */
@Service
@Transactional
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

    @Override
    public List<Category> getCategories() {
        return categoryDao.getCategories();
    }
}
