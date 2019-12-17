<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hibernate Assessment</title>
</head>
<body>

<h1>Hibernate</h1>
<br>
<br>
<form:form method="POST" modelAttribute="hibernateForm" action="${contextPath}/hibernateAssessmentSubmission" class="form-signin">
<label>Question 1: What is the full form of ORM?</label>
<br>
<input type="radio" id="Q1-Opt1" name="Question1" value="Object Random Memory">Object Random Memory</input>
<br>
<input type="radio" id="Q1-Opt2" name="Question1" value="Object Relational Mismatch">Object Relational Mismatch</input>
<br>
<input type="radio" id="Q1-Opt3" name="Question1" value="Object Relational Mapping">Object Relational Mapping</input>
<br>
<input type="radio" id="Q1-Opt4" name="Question1" value="Object Random Mapping">Object Random Mapping</input>

<br>
<br>
<label>Question 2: In Hibernate, based on directionality, what could be the mappings?</label>
<br>
<input type="radio" id="Q2-Opt1" name="Question2" 
value="uni-directional & bi-directional">uni-directional & bi-directional</input>
<br>
<input type="radio" id="Q2-Opt2" name="Question2" value="one-to-many & many-to-one">one-to-many & many-to-one</input>
<br>
<input type="radio" id="Q2-Opt3" name="Question2" value="inheritance mapping">inheritance mapping</input>
<br>
<input type="radio" id="Q2-Opt4" name="Question2" value="north & south mapping">north & south mapping</input>

<br>
<br>
<label>Question 3: In an Hibernate application, which file would have datasource details?</label>
<br>
<input type="radio" id="Q3-Opt1" name="Question3" value="hibernate mapping file">hibernate mapping file</input>
<br>
<input type="radio" id="Q3-Opt2" name="Question3" value="configuration file">configuration file</input>
<br>
<input type="radio" id="Q3-Opt3" name="Question3" value="Model/Entity class">Model/Entity class</input>
<br>
<input type="radio" id="Q3-Opt4" name="Question3" value="HibernateUtil class">HibernateUtil class</input>

<br>
<br>
<label>Question 4: What is the full form of HQL?</label>
<br>
<input type="radio" id="Q4-Opt1" name="Question4" value="High-level Query Language">High-level Query Languag</input>
<br>
<input type="radio" id="Q4-Opt2" name="Question4" value="Hidden Query Language">Hidden Query Language</input>
<br>
<input type="radio" id="Q4-Opt3" name="Question4" value="Hibernate Query Language">Hibernate Query Language</input>
<br>
<input type="radio" id="Q4-Opt4" name="Question4" value="Hibernate Quadratic Language">Hibernate Quadratic Language</input>

<br>
<br>
<label>Question 5: In an Hibernate application, concurrency can be controlled by setting?</label>
<br>
<input type="radio" id="Q5-Opt1" name="Question5" value="concurrency level">concurrency level</input>
<br>
<input type="radio" id="Q5-Opt2" name="Question5" value="one-to-one mapping">one-to-one mapping</input>
<br>
<input type="radio" id="Q5-Opt3" name="Question5" value="many-to-one bi-directional mapping">many-to-one bi-directional mapping</input>
<br>
<input type="radio" id="Q5-Opt4" name="Question5" value="isolation levels">isolation levels</input>

<br><br>
 <button id="submithibernate" class="btn btn-lg btn-primary btn-block" type="submit">Submithibernate</button>
</form:form>
</body>
</html>