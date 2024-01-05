<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/allcss.jsp" %>
<%@include file="component/style.jsp" %>
</head>
<body>
	<%@include file="component/navbar.jsp" %>
	<div class="sign">
		<h1><i class="fa-solid fa-user text-info"></i></h1>
        <h2 class="text-center text-info">User Register</h2>
        
        <c:if test="${not empty sucMsg }">
        	<p class="text-center text-success fs-3 fw-bolder">${sucMsg}</p>
        	<c:remove var="sucMsg" scope="session"/>
        </c:if>
        
        <c:if test="${not empty errorMsg }">
        	<p class="text-center text-danger fs-3">${errorMsg}</p>
        	<c:remove var="errorMsg" scope="session"/>
        </c:if>
        
        <form action="user_register" method="post">
         	<div class="mb-6 col-md-12">
                <input required type="text" class="input-box form-control"  name="fullname" placeholder="Full Name">
            </div>
            
            <div class="mb-6 col-md-12">
                <input required type="email" class="input-box form-control"  name="email" placeholder="Email Id">
            </div>
            
            <div class="mb-6 col-md-12">
                <input required type="Password" class="input-box form-control" name="password" placeholder="Your Password">
            </div>
            <p><span><input type="checkbox" class="check"></span>I agree to the terms of services.</p>
            
            <button type="submit" class="sign-btn col-md-9">Register</button>
        </form>
    </div>

</body>
</html>