package com.servlets;

import com.DAO.UserService;
import com.model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class Registration extends HttpServlet {

    final String regPage = "/WEB-INF/view/registration.jsp";
    final String userJSP = "/WEB-INF/view/user.jsp";
    final String thereIsUser = "/WEB-INF/view/thereIsUser.jsp";
    boolean ifExistUser = false;


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        final String newLogin = req.getParameter("newLogin");
        final String newPass = req.getParameter("newPass");

        UserService userService = new UserService();
        int count  = userService.getCountUser();
        count++;

        for (int i=1;i<count;i++){
            if (newLogin.equals(userService.findUser(i).getName())&&
                    newPass.equals(userService.findUser(i).getPassword())) {
                ifExistUser = true;

                req.getRequestDispatcher(thereIsUser).forward(req,resp);
                break;
            }
        }

        if (ifExistUser==false){

            User newUser = new User(count,newLogin,newPass);
            userService.saveUser(newUser);

            String  nameUser = userService.findUser(count).getName();
            req.setAttribute("nameUser",nameUser);
            req.getRequestDispatcher(userJSP).forward(req,resp);

            resp.sendRedirect("/user");
        }
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher(regPage).forward(req,resp);

    }
}
