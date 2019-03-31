package com.servlets;

import com.DAO.UserService;
import com.model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteUser extends HttpServlet {


    private final String deleteUser = "/WEB-INF/view/deleteUser.jsp";
    private final String isExist = "/WEB-INF/view/isExistUser.jsp";
    boolean isExistUser = false;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        final String delLogin = req.getParameter("delLogin");
        final String delPass = req.getParameter("delPass");
        final String currentID = req.getParameter("id");

        UserService userService = new UserService();
        int count  = userService.getCountUser();
        count++;

        for (int i=1;i<count;i++){
            if (currentID.equals(Integer.toString(i))&&
                    delLogin.equals(userService.findUser(i).getName())&&
                            delPass.equals(userService.findUser(i).getPassword())) {

                User user = new User(i,delLogin,delPass);
                userService.deleteUser(user);

                resp.sendRedirect("/");
                isExistUser = true;
                break;
            }
        }

        if (isExistUser==false) req.getRequestDispatcher(isExist).forward(req,resp);
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher(deleteUser).forward(req,resp);
    }
}
