package com.ht.event.service;

import java.util.List;

import com.ht.event.model.User;

public interface UserService {
    void addUser(User user);

    void updateUser(User user);

    User getUser(Integer id);

    void deleteUser(Integer id);

    List<User> getUsers();
}
