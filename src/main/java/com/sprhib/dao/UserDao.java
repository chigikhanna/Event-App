package com.sprhib.dao;

import java.util.List;
import com.sprhib.model.User;

public interface UserDao {
    public void addUser(User user);
    public void updateUser(User user);
    public User getUser(Integer id);
    public void deleteUser(Integer id);
    public List<User> getUsers();
}
