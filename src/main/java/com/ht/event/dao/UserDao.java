package com.ht.event.dao;

import java.util.List;

import com.ht.event.model.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {
    void addUser(User user);

    void updateUser(User user);

    User getUser(Integer id);

    void deleteUser(Integer id);

    List<User> getUsers();
}
