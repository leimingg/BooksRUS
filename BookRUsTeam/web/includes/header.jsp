

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="<c:url value='/styles/main.css'/>">
        <link rel="stylesheet" type="text/css" href="<c:url value='/styles/bootstrap.min.css'/>">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="styles/bootstrap.min.css" type="text/css"/>
        <script src="JS/jquery-1.11.3.min.js" type="text/javascript"></script>
        <script src="JS/bootstrap.min.js" type="text/javascript"></script>
        <title>Books R Us</title>
    </head>
    <body>
        
        <div class="container-fluid">
            <div class="col-md-4">
                <img src="<c:url value='/images/booksrus2.png'/>" alt="Application logo" >
            </div>
            <div class="col-md-8" style="padding-top: 50px">
                <ol class="list-inline">
                    <li><a href="${pageContext.request.contextPath}/ProductCatalogServlet/?action=goHome">HOME</a> |</li>
                    <li><a href="${pageContext.request.contextPath}/ProductCatalogServlet/?action=showClassics">Classics</a> |</li>
                    <li><a href="${pageContext.request.contextPath}/ProductCatalogServlet/?action=showBusiness">Business</a> |</li>
                    <li><a href="${pageContext.request.contextPath}/ProductCatalogServlet/?action=showTechnology">Technology</a> |</li>
                    <li><a href="${pageContext.request.contextPath}/ProductCatalogServlet/?action=showCart">Cart</a> |</li>
                    <li><a href="${pageContext.request.contextPath}/ProductCatalogServlet/?action=showRegistration">Register</a> |</li>
                    <li><a href="${pageContext.request.contextPath}/AccountServlet/?action=logout">Logout</a> |</li>
                    <!-- Line for debugging purposes only
                    <c:url var="actionUrl" value="/AccountServlet/"/>
                    <li><a href="${actionUrl}?action=deleteCookies">cookieClean</a></li>
                    -->
                </ol>
            </div>
        </div>
        <hr>
        <h2>Welcome to Books R Us - The Best Specialty Book e-Store!</h2>
        <hr>