<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>   

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Confirmation</title>
</head>
<body>
Registered Successfully!!! 
<br>
${firstName} ${lastName} 
<br>
<a href="${contextPath}/login">LOGIN</a>
</body>
</html>