package com.ht.event.dao;

import com.ht.event.model.Category;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * Created by chigi on 30-Jun-17.
 */
@Repository
public class CategoryDaoImpl implements CategoryDao {
    @Autowired
    private SessionFactory sessionFactory;

    private Session getCurrentSession(){

        return sessionFactory.getCurrentSession();
    }
    @Override
    public void addCategory(Category category) {
        getCurrentSession().save(category);
    }

    @Override
    public Category getCategory(Integer id) {
        Category category=(Category) getCurrentSession().get(Category.class, id);
        return category;
    }


    @Override
    public void deleteCategory(Integer id) {
        Category category=getCategory(id);
        if(category!=null)
            getCurrentSession().delete(category);
    }

}
