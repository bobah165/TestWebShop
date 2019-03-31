<%--
  Created by IntelliJ IDEA.
  User: Пользователь
  Date: 30.03.2019
  Time: 9:51
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User</title>

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
            <li><a href="/add">Choose tour</a> </li>
            <li><a href="/up">upgrade</a> </li>
            <li><a href="/del">delete</a> </li>
            <li><a href="/">Quit</a> </li>
        </ul>
    </nav>

</header>

<h2 class="user">
    Hello User
    <c:set var = "nameUser" value = "${nameUser}"/>
    <c:out value = "${nameUser}"/>
</h2>



</body>
</html>
