<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View States</title>
</head>
<body>
	<table>
		<tr>
			<th>State Id</th>
			<th>State Name</th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach var="state" items="${stateList }">
		<tr>
			<td>${state.stateId }</td>
			<td>${state.stateName }</td>
			<td><a href="edit_state?stateId=${state.stateId }">Edit</a></td>
			<td><a href="delete_state?stateId=${state.stateId }">Delete</a></td>
		</tr>
		</c:forEach>
	</table>

</body>
</html>