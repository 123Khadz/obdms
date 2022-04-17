<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Hello ${donorUser.firstName }</h2>
	<%-- <c:if test="${not empty object['Donor'].declaredFields}">
    <h2>Declared fields <em>${object.name}</em></h2>
    <ul>
        <c:forEach var="field" items="${object['Donor'].declaredFields}">
            <c:catch><li><span style="font-weight: bold">
                ${field.name}: </span>${object[field.name]}</li>
            </c:catch>
        </c:forEach>
    </ul>
</c:if> --%>


</body>
</html>