package com.ht.event.dao;

import com.ht.event.model.Category;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by tanvigupta on 03/07/17.
 */
@Repository
public interface CategoryDao {
    void addCategory(Category category);

    Category getCategory(Integer id);

    void deleteCategory(Integer id);

    List<Category> getCategories();
}
