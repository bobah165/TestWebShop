package com.DAO;

import com.model.User;

public class UserService {

       /*
    Именно UserDAO — "сердце" приложения. Однако, мы не будем создавать DAO напрямую.
    Вся логика будет перемещена в класс UserService.
     */

    private UserDAO userDAO = new UserDAO();

    public UserService() {}

    public User findUser(int id) {return userDAO.fondById(id);}

    public void saveUser (User user) {userDAO.save(user);}
    public void deleteUser (User user) {userDAO.delete(user);}
    public void updateUser (User user) {userDAO.update(user);}
    public int getCountUser () {return userDAO.getCount();}
}
