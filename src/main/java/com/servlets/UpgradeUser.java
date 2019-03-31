package com.servlets;

import com.DAO.UserService;
import com.model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UpgradeUser extends HttpServlet {
    private final String upgradeUser = "/WEB-INF/view/upgradeUser.jsp";
    private final String userJSP = "/WEB-INF/view/user.jsp";
    private final String isExist = "/WEB-INF/view/isExistUser.jsp";
    boolean isExistUser = false;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        final String upgradeLogin = req.getParameter("upgradeLogin");
        final String upgradePass = req.getParameter("upgradePass");
        final String currentID = req.getParameter("id");

        UserService userService = new UserService();
        int count  = userService.getCountUser();
        count++;

        for (int i=1;i<count;i++){
            if (currentID.equals(Integer.toString(i))) {

                User user = new User(i,upgradeLogin,upgradePass);
                userService.updateUser(user);

                String  nameUser = userService.findUser(i).getName();
                req.setAttribute("nameUser",nameUser);
                req.getRequestDispatcher(userJSP).forward(req,resp);

                isExistUser = true;
                break;
            }
        }

        if (isExistUser==false) req.getRequestDispatcher(isExist).forward(req,resp);


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher(upgradeUser).forward(req,resp);
    }
}
