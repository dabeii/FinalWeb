<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Table of accounts</title>
<link rel="stylesheet" href="css/style1.css">
</head>
<body>
<c:if test="${sessionScope.ac.admin == 1}">
<div class="import">
<a href="AccountServlet" class="active-table" data-toggle="modal">Import Account data</a>
<a href="admin.jsp" class="active-table">Back to manager</a>
</div>
<center>
	<table >
		<thead>
			<tr>
				<th class="block-4-image">username</th>
				<th class="block-4-image">password</th>
				<th class="block-4-image">adminRule</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${listA}" var="o">
				<tr>
					<td>${o.username}</td>
					<td>${o.password}</td>
					<td>${o.admin}</td>
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