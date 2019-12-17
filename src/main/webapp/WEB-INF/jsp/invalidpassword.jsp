<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Password Error Page</title>
</head>
<body>
<h1 id="msg">Sorry your Password is Wrong !!! Login again !!!</h1>

<a href="${contextPath}/login">Home Page</a>
</body>
</html>