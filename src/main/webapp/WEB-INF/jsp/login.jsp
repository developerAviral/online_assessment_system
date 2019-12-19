<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Assessment - Home Page</title>

      <link href="${contextPath}/resources/static/css/bootstrap.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/static/css/common.css" rel="stylesheet">
</head>
<body>
    <div class="container">
      <form method="POST" action="${contextPath}/login" class="form-signin">
        <h2 class="form-heading">Log in</h2>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <br><br>
            <label for="emailId">Email ID</label>
            <input id="email" name="emailId" type="email" class="form-control" placeholder="Email"
                   autofocus="true" required="required"/>
                   <br><br>
            <label for="password">Password</label>
            <input id="password" name="password" type="password" class="form-control" placeholder="Password" required/>
            <br><br>
            <span>${error}</span>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<br><br>
            <button id="login" class="btn btn-lg btn-primary btn-block" type="submit">LOGIN</button>
            <br><br>
            <label>New User ?</label>
            <h4 class="text-center"><a href="${contextPath}/register.html">register here</a></h4>
        </div>
      </form>
    </div>
    
    <script src="${contextPath}/resources/static/js/jquery.min.js"></script>
    <script src="${contextPath}/resources/static/js/bootstrap.min.js"></script>
</body>
</html>