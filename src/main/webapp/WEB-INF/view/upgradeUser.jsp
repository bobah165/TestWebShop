<%--
  Created by IntelliJ IDEA.
  User: Пользователь
  Date: 31.03.2019
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>upgradeUser</title>
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
            <li><a href="\add">choose tour</a> </li>
            <li><a href="\">quit</a> </li>
        </ul>
    </nav>

</header>

<h2 class="user">
    Do you want to upgrade?
</h2>

<section class="reg">
    <form method="post" action="">

        <input text="text" required placeholder="ID" name="id"><br><br>
        <input text="text" required placeholder="login" name="upgradeLogin"><br><br>
        <input type="password" required placeholder="password" name="upgradePass"><br><br>
        <input class="button" type="submit" value="Upgrade">

    </form>
</section>

</body>
</html>
