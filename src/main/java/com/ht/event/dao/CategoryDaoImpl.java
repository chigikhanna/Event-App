package com.ht.event.dao;

import com.ht.event.model.Category;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class CategoryDaoImpl implements CategoryDao {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public void addCategory(Category category) {
        getCurrentSession().save(category);
    }

    @Override
    public Category getCategory(Integer id) {
        return (Category) getCurrentSession().get(Category.class, id);
    }


    @Override
    public void deleteCategory(Integer id) {
        Category category = getCategory(id);
        if (category != null)
            getCurrentSession().delete(category);
    }

    @Override
    public List<Category> getCategories() {
        Criteria criteria = getCurrentSession().createCriteria(Category.class);
        return criteria.list();
    }
}
