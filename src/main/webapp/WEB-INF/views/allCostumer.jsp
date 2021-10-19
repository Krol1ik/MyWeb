<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page isELIgnored = "false" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title><spring:message code="app.title"/></title>
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
                <li> <a href="/costumer"><spring:message code="app.nav.cust"/></a> </li>
                <li><a href="/costumer/new"><spring:message code="app.nav.create"/></a> </li>
            </ul>
            <div class="btn-group-vertical">
                <a type="button" class="btn btn-info" href="?lang=en"><spring:message code="app.lang.english"/></a>
                <a type="button" class="btn btn-primary" href="?lang=ru"><spring:message code="app.lang.russia"/></a>
            </div>

        </div>
    </div>
</nav>
<table class="table">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col"><spring:message code="app.page.firstname"/></th>
        <th scope="col"><spring:message code="app.page.lastname"/></th>
        <th scope="col"><spring:message code="app.page.phonenumber"/></th>
        <th scope="col"><spring:message code="app.page.email"/></th>
        <th scope="col"><spring:message code="app.page.login"/></th>
        <th scope="col"><spring:message code="app.page.password"/></th>
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
        <td><input type="button" value=<spring:message code="app.button.update"/> onClick='location.href="http://localhost:8080/costumer/${costumers.id}/edit"'>
            <form method="post" action="/costumer/${costumers.id}/delete">
            <input type="submit" value=<spring:message code="app.button.delete"/> onClick='location.href="http://localhost:8080/costumer/${costumers.id}/delete"'>
            </form>
        </td>
    </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
