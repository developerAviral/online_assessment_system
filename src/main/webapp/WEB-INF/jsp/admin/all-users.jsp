<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }" />


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All User Details</title>
</head>
<body>

<h2>List of All Users</h2>
<br><br>

	<c:if test="${not empty userList}">		
		<table border=1>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email ID</th>
				<th>User Type</th>
			</tr>
			<c:forEach var="userListValue" items="${userList}">
				<c:forEach var="roleListValue" items="${userListValue.roles}">	
					<tr>
						<td>${userListValue.firstName}</td>
						<td>${userListValue.lastName}</td>
						<td>${userListValue.emailId}</td>
						<c:if test = "${fn:toLowerCase(roleListValue.name) == 'admin'}">
							<td>${fn:toLowerCase(roleListValue.name)}</td>
						</c:if>
						<c:if test = "${fn:toLowerCase(roleListValue.name) == 'user'}">
							<td>candidate</td>
						</c:if>
					</tr>
				</c:forEach>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>