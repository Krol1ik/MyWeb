<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page isELIgnored = "false" %>

<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 12.10.2021
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Costumer</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid" style="background-color: #ffb27f">
        <div class="navbar-header">
            <a href="#" class="navbar-brand">StrongCity</a>
        </div>

        <div>
            <ul class="nav navbar-nav">
                <li> <a href="/costumer">Все пользователи</a> </li>
                <li> <a href="/costumer/searchById">Найти пользователя</a> </li>
                <li><a href="/costumer/new">Создать пользователя</a> </li>
<%--                <li><a href="#">Удалить пользователя</a> </li>--%>
<%--                <li><a href="#">Обновить пользователя</a> </li>--%>
                <li></li>
            </ul>
        </div>
    </div>
</nav>
<table class="table">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">First name</th>
        <th scope="col">Last name</th>
        <th scope="col">Phone number</th>
        <th scope="col">Email</th>
        <th scope="col">Login</th>
        <th scope="col">Password</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${costumer}" var="costumers">
    <tr>
        <td>${costumers.id}</td>
        <td>${costumers.firstName}</td>
        <td>${costumers.lastName}</td>
        <td>${costumers.number}</td>
        <td>${costumers.email}</td>
        <td>${costumers.login}</td>
        <td>${costumers.password}</td>
        <td><input type="button" value="Обновить" onClick='location.href="http://localhost:8080/costumer/${costumers.id}/edit"'>
            <form method="post" action="/costumer/${costumers.id}/delete">
            <input type="submit" value="Удалить" onClick='location.href="http://localhost:8080/costumer/${costumers.id}/delete"'>
            </form>
        </td>
    </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
