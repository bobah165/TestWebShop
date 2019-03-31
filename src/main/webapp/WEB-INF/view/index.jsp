<%--
  Created by IntelliJ IDEA.
  User: Пользователь
  Date: 30.03.2019
  Time: 9:23
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta charset="utf-8">
    <title>WebShopMain</title>
    <style>
      <%@include file="style.css"%>
    </style>
  </head>
  <body>


  <header>
        <div class="top_bar"></div>

        <div class="welcome">
          <h1>Hello Norway</h1>
          <a href="#"><img src="${pageContext.request.contextPath}\ROOT\welcome.jpg" alt="Norway1" width="600" height="250"/></a> <br>

        </div>

        <nav>
          <ul class="menu">
            <li><a href="\about">About</a> </li>
            <li><a href="\con">Contact</a> </li>
            <li><a href="\reg">Registration</a> </li>
          </ul>
        </nav>

  </header>


  <section class="tours">

        <div class="item_1">
          <h4>Tour#1</h4>
          <img src="${pageContext.request.contextPath}\ROOT\1.jpg" alt="Norway1" width="300" height="300"/> <br>
          <br>
        </div>

        <div class="item_2">
          <h4>Tour#2</h4>
          <img src="${pageContext.request.contextPath}\ROOT\2.jpg" alt="Norway2" width="300" height="300"/><br>
        </div>

        <div class="item_3">
          <h4>Tour#3</h4>
          <img src="${pageContext.request.contextPath}\ROOT\3.jpg" alt="Norway3" width="300" height="300"/><br>
        </div>

        <div class="item_4">
          <h4>Tour#4</h4>
          <img src="${pageContext.request.contextPath}\ROOT\4.jpg" alt="Norway4" width="300" height="300"/><br>
        </div>

  </section>


  <section class="Entrance">

    <div class = "form">

      <h3>Entrance in system</h3><br>
      <form method="post" action="">

        <input text="text" required placeholder="login" name="login"><br><br>
        <input type="password" required placeholder="password" name="password"><br><br>
        <input class="button" type="submit" value="Enter">

      </form>
    </div>


  </section>








  </body>
</html>
