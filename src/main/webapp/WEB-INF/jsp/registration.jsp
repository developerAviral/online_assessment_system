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

        <form:form method="POST" modelAttribute="userForm" class="form-signin">
            <h2 class="form-signin-heading">Create your account</h2>
            <spring:bind path="emailId">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="emailId" class="form-control" placeholder="EmailId"
                                autofocus="true"></form:input>
                    <form:errors path="emailId"></form:errors>
                </div>
            </spring:bind>
            
            <spring:bind path="firstName">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="firstName" class="form-control" placeholder="First Name"
                                autofocus="true"></form:input>
                    <form:errors path="firstName"></form:errors>
                </div>
            </spring:bind>
            
            <spring:bind path="lastName">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="lastName" class="form-control" placeholder="Last Name"
                                autofocus="true"></form:input>
                    <form:errors path="lastName"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="password">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                    <form:errors path="password"></form:errors>
                </div>
            </spring:bind>

<%--             <spring:bind path="passwordConfirm">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="passwordConfirm" class="form-control"
                                placeholder="Confirm your password"></form:input>
                    <form:errors path="passwordConfirm"></form:errors>
                </div>
            </spring:bind> --%>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
        </form:form>

    </div>
    
    <script src="${contextPath}/resources/static/js/jquery.min.js"></script>
    <script src="${contextPath}/resources/static/js/bootstrap.min.js"></script>
</body>
</html>