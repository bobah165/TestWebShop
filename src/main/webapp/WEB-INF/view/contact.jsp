<%--
  Created by IntelliJ IDEA.
  User: Пользователь
  Date: 31.03.2019
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>contacts</title>
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
            <li><a href="/">home</a> </li>
        </ul>
    </nav>

    <h2 class="user">
        Country: Norway <br>
        City: Reine<br>
        Adresss: asdfjewrui<br>
        Tel/Fax: 1231-23412-1234<br>
    </h2>

</header>


</body>
</html>
