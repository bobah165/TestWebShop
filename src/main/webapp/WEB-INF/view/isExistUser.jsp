<%--
  Created by IntelliJ IDEA.
  User: Пользователь
  Date: 31.03.2019
  Time: 20:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>isExistUser</title>
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
            <li><a href="\add">back</a> </li>
        </ul>
    </nav>

</header>

<h2 class="user">
    There is no User with that ID
</h2>

</body>
</html>
