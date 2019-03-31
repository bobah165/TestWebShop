package com.servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class AddTour extends HttpServlet {
    final String toursAdd = "/WEB-INF/view/toursAdd.jsp";
    private Map<String,String> dataBaseOfTours = new HashMap<>();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String countTour1 = req.getParameter("count1");// count of first Tour
        String countTour2 = req.getParameter("count2");// count of second Tour
        String countTour3 = req.getParameter("count3");// count of third Tour
        String countTour4 = req.getParameter("count4");// count of fourth Tour

        dataBaseOfTours.put("Tour#1", "");
        dataBaseOfTours.put("Tour#2", "");
        dataBaseOfTours.put("Tour#3", "");
        dataBaseOfTours.put("Tour#4", "");

        bascketInfo(req,resp,countTour1,"Tour#1","countTour1"); // information of Tour1 in bascket
        bascketInfo(req,resp,countTour2,"Tour#2","countTour2"); // information of Tour2 in bascket
        bascketInfo(req,resp,countTour3,"Tour#3","countTour3"); // information of Tour3 in bascket
        bascketInfo(req,resp,countTour4,"Tour#4","countTour4"); // information of Tour4 in bascket
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher(toursAdd).forward(req,resp);
    }

    void bascketInfo(HttpServletRequest req1, HttpServletResponse resp1, String userCount,String tourName, String jspCountTour) throws ServletException, IOException{
        try {
            if (!userCount.equals(null)) {
                dataBaseOfTours.put(tourName, userCount);
                String nameTour = tourName;

                req1.setAttribute("nameTour", nameTour);
                req1.setAttribute(jspCountTour, userCount);

                req1.getRequestDispatcher(toursAdd).forward(req1, resp1);
            }
        } catch (NullPointerException ex) {
            //System.out.println("A");
        }
    }
}
