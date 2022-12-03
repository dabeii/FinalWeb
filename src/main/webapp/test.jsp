<%@ page import= "java.sql.DriverManager" %>
<%@ page import= "java.sql.Connection" %>
<%@ page import= "Models.Product" %>
<%@ page import="java.util.List" %>
<%@ page import= "DAO.DAO" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
	<table>
		<thead>
			<tr>
				<th>id</th>
				<th>product_id</th>
				<th>name</th>
				<th>image</th>
				<th>price</th>
				<th>quantity</th>
				<th>type</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${listS}" var="o">
				<tr>
					<td>${o.id}</td>
					<td>${o.pid}</td>
					<td>${o.name}</td>
					<td>${o.image}</td>
					<td>${o.price}</td>
					<td>${o.quantity}</td>
					<td>${o.type}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</center>
</body>
</html>