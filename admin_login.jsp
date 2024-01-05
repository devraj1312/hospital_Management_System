<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login Page</title>
<%@include file="component/allcss.jsp"%>
<%@include file="component/style.jsp"%>

</head>
<body>
<%@include file="component/navbar.jsp" %>

	<div class="sign">
		<h1><i class="fa-solid fa-user text-info"></i></h1>
        <h2 class="text-center text-info">Admin Login</h2>
        
        <c:if test="${not empty succMsg }">
        	<p class="text-center text-success fs-5 fw-bold">${succMsg}</p>
        	<c:remove var="succMsg" scope="session"/>
        </c:if>
        
        <c:if test="${not empty errorMsg }">
        	<p class="text-center text-danger fs-5 fw-bold">${errorMsg}</p>
        	<c:remove var="errorMsg" scope="session"/>
        </c:if>
        
        <form action="adminLogin" method="post">
         	<div class="mb-6 col-md-12">
                <input required type="email" class="input-box form-control"  name="email" placeholder="Email Id">
            </div>
            <div class="mb-6 col-md-12">
                <input required type="Password" class="input-box form-control" name="password" placeholder="Your Password">
            </div>
            <p><span><input type="checkbox" class="check"></span>I agree to the terms of services.</p>
            
            <button type="submit" class="sign-btn col-md-9">Log-In</button>
        </form>
    </div>

</body>
</html>