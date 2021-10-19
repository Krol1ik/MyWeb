<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            </ul>
        </div>
    </div>
</nav>

<form method="post" action="/costumer">
<div class="container col-xs-6 col-sm-4 col-md-5 col-lg-3">
    <form role="form" class="form-horizontal">
        <div align="center">
            <h1>Форма регистрации</h1>
        </div>
        <div class="form-group">
            <label for="firstName" class="control-label col-md-4">Имя: </label>
            <div class="col-md-8">
            <input type="text" class="form-control " id="firstName" name="firstName">
            </div>
        </div>
        <div class="form-group">
            <label for="lastName" class="control-label col-md-4">Фамилия: </label>
            <div class="col-md-8">
            <input type="text" class="form-control" id="lastName" name="lastName">
            </div>
        </div>
        <div class="form-group">
            <label for="email" class="control-label col-md-4">Email: </label>
            <div class="col-md-8">
                <input type="email" class="form-control" id="email" name="email">
            </div>
        </div>
        <div class="form-group">
            <label for="number" class="control-label col-md-4">Телефон: </label>
            <div class="col-md-8">
                <input type="number" class="form-control" id="number" name="number">
            </div>
        </div>
        <div class="form-group">
            <label for="login" class="control-label col-md-4">Логин: </label>
            <div class="col-md-8">
                <input type="text" class="form-control" id="login" name="login">
            </div>
        </div>
        <div class="form-group">
            <label for="password" class="control-label col-md-4">Пароль: </label>
            <div class="col-md-8">
                <input type="password" class="form-control" id="password" name="password">
            </div>
        </div>
    </form>
    <div role="button" align="center">
    <button type="submit" class="btn btn-success">Регаистрация</button>
    </div>
</div>
</form>
</body>
</html>