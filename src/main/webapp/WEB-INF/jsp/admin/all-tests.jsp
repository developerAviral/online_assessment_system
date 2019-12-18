<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Tests Details</title>
</head>
<body>
<h2>List of Candidates and Tests</h2>
<br><br>

	<c:if test="${not empty testList}">		
		<table border=1>
			<tr>
				<th>Test Date</th>
				<th>Assessment</th>
				<th>Test Marks</th>
				<th>Email ID</th>
				<th>Total Marks</th>
				<th>Result</th>
			</tr>
			<c:forEach var="testListValue" items="${testList}">
					<tr>
						<td>${testListValue.testDate}</td>
						<td>${testListValue.assessmentName}</td>
						<td>${testListValue.testMarks}</td>
						<td>${testListValue.emailId}</td>
						<td>${testListValue.totalMarks}</td>
						<td>${testListValue.result}</td>
					</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>