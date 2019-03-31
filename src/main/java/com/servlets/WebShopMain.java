package com.servlets;

import com.DAO.UserService;
import com.model.User;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


public class WebShopMain extends HttpServlet {
    final String index = "/WEB-INF/view/index.jsp";
    final String userJSP = "/WEB-INF/view/user.jsp";


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        final String login = req.getParameter("login");
        final String password = req.getParameter("password");

        boolean isExistUser = false; //flag of existing of user in database

        UserService userService = new UserService();
        int count  = userService.getCountUser();
        count++;

        for (int i=1;i<count;i++){
            if (login.equals(userService.findUser(i).getName())&&
            password.equals(userService.findUser(i).getPassword())) {

                String  nameUser = userService.findUser(i).getName();
                req.setAttribute("nameUser",nameUser);
                req.getRequestDispatcher(userJSP).forward(req,resp);

                isExistUser = true;
                break;
            }
        }

        if (isExistUser==false) resp.sendRedirect("/reg");

    }



    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher(index).forward(req,resp);
    }

}
