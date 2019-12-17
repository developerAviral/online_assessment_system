<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
      <link href="${contextPath}/resources/static/css/bootstrap.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/static/css/common.css" rel="stylesheet">
</head>
<body>
	    <div class="container">

        <form:form method="POST" modelAttribute="userForm" class="form-signin" action="${contextPath}/registration">
            <h2 class="form-signin-heading">Create your account</h2>
           
           <label for="firstname">First Name</label>
            <spring:bind path="firstName">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input id="firstname" type="text" path="firstName" class="form-control" placeholder="First Name"
                                autofocus="true"  pattern="[a-zA-Z]{1,}" required="required"></form:input>
                    <form:errors path="firstName"></form:errors>
                </div>
            </spring:bind>
            
            <br>
            
            <label for="lastname">Last Name</label>
            <spring:bind path="lastName">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input id="lastname" type="text" path="lastName" class="form-control" placeholder="Last Name"
                                autofocus="true" pattern="[a-zA-Z]{1,}" required="required"></form:input>
                    <form:errors path="lastName"></form:errors>
                </div>
            </spring:bind>
            
            <br>
            
            <label for="email">Email ID</label>
            <spring:bind path="emailId">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input id="email" type="email" path="emailId" class="form-control" placeholder="EmailId"
                                autofocus="true" required="required"></form:input>
                    <form:errors path="emailId"></form:errors>
                </div>
            </spring:bind>
			
			<br>
			
			<label for="password">Password</label>
            <spring:bind path="password">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input id="password" type="password" path="password" class="form-control" pattern=".{8,}" placeholder="Password" required="required"></form:input>
                    <form:errors path="password"></form:errors>
                </div>
            </spring:bind>

            <button id="register" class="btn btn-lg btn-primary btn-block" type="submit">REGISTER</button>
        </form:form>

    </div>
    
    <script src="${contextPath}/resources/static/js/jquery.min.js"></script>
    <script src="${contextPath}/resources/static/js/bootstrap.min.js"></script>
</body>
</html>