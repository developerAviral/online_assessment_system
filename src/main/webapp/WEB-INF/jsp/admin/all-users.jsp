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
			<c:set var="count" value="0" scope="page" />
			<c:forEach var="userListValue" items="${userList}">
			<c:set var="count" value="${count + 1}" scope="page"/>
			
				<c:forEach var="roleListValue" items="${userListValue.roles}">	
				
					<tr>
						<td><span id="firstName${count}"> ${userListValue.firstName} </span></td>
						<td><span id="lastName${count}">${userListValue.lastName}</span></td>
						<td><span id="email${count}">${userListValue.emailId}</span></td>
						<c:if test = "${fn:toLowerCase(roleListValue.name) == 'admin'}">
							<td><span id="userType${count}">${fn:toLowerCase(roleListValue.name)}</span></td>
						</c:if>
						<c:if test = "${fn:toLowerCase(roleListValue.name) == 'user'}">
							<td><span id="userType${count}">candidate</span></td>
						</c:if>
					</tr>
				</c:forEach>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>