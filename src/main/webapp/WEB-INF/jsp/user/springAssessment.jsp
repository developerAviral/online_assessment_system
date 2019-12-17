<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring Assessment</title>
</head>
<body>
<h1>Spring Assessment</h1>
<br>
<br>
 <form:form method="POST" modelAttribute="springForm" action="${contextPath}/springAssessmentSubmission" class="form-signin">
	<label>Question 1: What is spring?</label>
	<br>
	<form:radiobutton id="Q1-Opt1" path="Question1" name="Question1" value="J2EE App Server" />J2EE App Server
	<br>
	<input type="radio" id="Q1-Opt2" name="Question1" value="J2EE App Development Framework">J2EE App Development Framework</input>
	<br>
	<input type="radio" id="Q1-Opt3" name="Question1" value="Configuration Management Tool">Configuration Management Tool</input>
	<br>
	<input type="radio" id="Q1-Opt4" name="Question1" value="Build Tool">Build Tool</input>
	
	<br>
	<br>
	<label>Question 2: What is the full form of IOC?</label>
	<br>
	<input type="radio" id="Q2-Opt1" name="Question2" value="Inversion Of Control">Inversion Of Control</input>
	<br>
	<input type="radio" id="Q2-Opt2" name="Question2" value="Interjection of Control">Interjection of Control</input>
	<br>
	<input type="radio" id="Q2-Opt3" name="Question2" value="Internal Object Control">Internal Object Control</input>
	<br>
	<input type="radio" id="Q2-Opt4" name="Question2" value="In-built Object Control">In-built Object Control</input>
	
	<br>
	<br>
	<label>Question 3: What is the full form of AOP?</label>
	<br>
	<input type="radio" id="Q3-Opt1" name="Question3" value="Anticipation of Properties">Anticipation of Properties</input>
	<br>
	<input type="radio" id="Q3-Opt2" name="Question3"  value="Aspect Oriented Programming">Aspect Oriented Programming</input>
	<br>
	<input type="radio" id="Q3-Opt3" name="Question3" value="Associated Object Programming">Associated Object Programming</input>
	<br>
	<input type="radio" id="Q3-Opt4" name="Question3" value="Anti Object Programming">Anti Object Programming</input>
	
	<br>
	<br>
	<label>Question 4: Which of the below is a spring container?</label>
	<br>
	<input type="radio" id="Q4-Opt1" name="Question4" value="View Resolver">View Resolver</input>
	<br>
	<input type="radio" id="Q4-Opt2" name="Question4" value="Application Context">Application Context</input>
	<br>
	<input type="radio" id="Q4-Opt3" name="Question4" value="Handler Mapping">Handler Mapping</input>
	<br>
	<input type="radio" id="Q4-Opt4" name="Question4" value="Dispatcher Servlet">Dispatcher Servlet</input>
	
	<br>
	<br>
	<label>Which is Spring's front Controller Implementation?</label>
	<br>
	<input type="radio" id="Q5-Opt1" name="Question5" value="Bean Factory">Bean Factory</input>
	<br>
	<input type="radio" id="Q5-Opt2" name="Question5" value="Class Path Application Context">Class Path Application Context</input>
	<br>
	<input type="radio" id="Q5-Opt3" name="Question5" value="Application Context">Application Context</input>
	<br>
	<input type="radio" id="Q5-Opt4" name="Question5" value="Dispatcher Servlet">Dispatcher Servlet</input>
	
	<br><br>
	 <button id="submitspring" class="btn btn-lg btn-primary btn-block" type="submit">Submitspring</button>
</form:form>
</body>
</html>