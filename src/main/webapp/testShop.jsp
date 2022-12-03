<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:forEach  items="${listP}" var="p">
<img src="${p.image}" alt="img">
<div class="body">
	<h2>${p.pid}</h2>
	<h2>${p.name}</h2>
	<h2>${p.price}</h2>
	<h2>${p.quantity}</h2>
	<h2>${p.type}</h2>
</div>
</c:forEach>
</body>
</html>