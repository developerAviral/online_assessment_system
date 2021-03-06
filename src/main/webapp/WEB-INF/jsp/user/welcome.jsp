<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Tests</title>
      <link href="${contextPath}/resources/static/css/bootstrap.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/static/css/common.css" rel="stylesheet">
</head>
<body>
  <div class="container">
  <div id="msg">Select the Test</div>
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

		<a href="${contextPath}/user/springAssessment">Spring Assessment</a>	
		<br>
		<a href="${contextPath}/user/hibernateAssessment">Hibernate Assessment</a>	
        <br>
        <a href="#" onclick="document.forms['logoutForm'].submit()">Logout</a>
    </c:if>
  </div>
  
  <script src="${contextPath}/resources/static/js/jquery.min.js"></script>
  <script src="${contextPath}/resources/static/js/bootstrap.min.js"></script>
    
</body>
</html>