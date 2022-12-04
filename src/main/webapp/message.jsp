<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Table of messages</title>
<link rel="stylesheet" href="css/style1.css">
</head>
<body>
<c:if test="${sessionScope.ac.admin == 1}">
<div class="import">
<a href="MessageServlet" class="active-table" data-toggle="modal">Import Messages</a>
<a href="admin.jsp" class="active-table">Back to manager</a>
</div>
<center>
	<table >
		<thead>
			<tr>
				<th class="block-4-image">name</th>
				<th class="block-4-image">email</th>
				<th class="block-4-image">phone_number</th>
				<th class="block-4-image">message</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${listM}" var="o">
				<tr>
					<td>${o.name}</td>
					<td>${o.email}</td>
					<td>${o.phone}</td>
					<td>${o.mess}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</center>
</c:if>
<c:if test="${sessionScope.ac.admin != 1}">
	<center>
			<h1> 
				"STOP HERE" - G12_Manager
			</h1>
	</center>
</c:if>
</body>
</html>