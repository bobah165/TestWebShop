<%--
  Created by IntelliJ IDEA.
  User: Пользователь
  Date: 30.03.2019
  Time: 22:16
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ToursAdd</title>

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
            <li><a href="\con">Contact</a> </li>
            <li><a href="\">Quit</a> </li>
        </ul>
    </nav>

</header>





<section class="tours">

    <div class="item_1">
        <h4>Tour#1</h4>
        <p><img src="${pageContext.request.contextPath}\ROOT\1.jpg" alt="Norway1" width="300" height="300"/></p><br>

        <form method="post" action="">
            <input text="text" required placeholder="count" name="count1">
            <input class="button" type="submit" value="Add">

        </form>

    </div>

    <div class="item_2">
        <h4>Tour#2</h4>
        <p><img src="${pageContext.request.contextPath}\ROOT\2.jpg" alt="Norway1" width="300" height="300"/></p><br>

        <form method="post" action="">
            <input text="text" required placeholder="count" name="count2">
            <input class="button" type="submit" value="Add">
        </form>

    </div>

    <div class="item_3">
        <h4>Tour#3</h4>
        <p><img src="${pageContext.request.contextPath}\ROOT\3.jpg" alt="Norway1" width="300" height="300"/></p><br>

        <form method="post" action="">
            <input text="text" required placeholder="count" name="count3">
            <input class="button" type="submit" value="Add">

        </form>

    </div>


    <div class="item_4">
        <h4>Tour#4</h4>
        <p><img src="${pageContext.request.contextPath}\ROOT\4.jpg" alt="Norway1" width="300" height="300"/></p><br>

        <form method="post" action="">
            <input text="text" required placeholder="count" name="count4">
            <input class="button" type="submit" value="Add">

        </form>

    </div>


</section>






<div class="bascket">
    <h3>Корзина</h3>

    YOU CHOOSE <c:set var = "nameTour" value = "${nameTour}"/>
                    <c:out value = "${nameTour}"/>

    <br>
    COUNT
                    <c:set var = "countTour1" value = "${countTour1}"/>
                    <c:out value = "${countTour1}"/>

                    <c:set var = "countTour2" value = "${countTour2}"/>
                    <c:out value = "${countTour2}"/>

                    <c:set var = "countTour3" value = "${countTour3}"/>
                    <c:out value = "${countTour3}"/>


                    <c:set var = "countTour4" value = "${countTour4}"/>
                    <c:out value = "${countTour4}"/>



</div>



</body>
</html>
