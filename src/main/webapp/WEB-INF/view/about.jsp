<%--
  Created by IntelliJ IDEA.
  User: Пользователь
  Date: 31.03.2019
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>About</title>
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
            <li><a href="\">home</a> </li>
        </ul>
    </nav>

</header>

<section class="about" >
    <p>
        Приложение позволяет добавлять, авторизировать, удалять и изменять параметры пользователей.
        Авторизированный пользователь имеет возможность добавить товар в "импровизированную" корзину.<br>
        В рамках данного проекта использовались следующие технологии:
        Servlet, Hibernate, SQL, Maven, JSP, Tomcat, html, css. Для корректной работы
        приложения необходимо поменять настройке в файле hibernate.cg.xml:
        настройки подключения к БД. В данном приложении БД была создана на
        основе PostgreSQL. Скрипт БД находится в файле V1__Base_version.sql.
    </p>

</section>

</body>
</html>
