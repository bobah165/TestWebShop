<%--
  Created by IntelliJ IDEA.
  User: Пользователь
  Date: 30.03.2019
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>thereIsUser</title>

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
            <li><a href="\con">Contact</a> </li>
            <li><a href="\reg">Try Again</a> </li>
        </ul>
    </nav>

</header>

<h2 class="user">This User have been created</h2>


</body>
</html>
