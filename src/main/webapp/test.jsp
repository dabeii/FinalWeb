<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Table of products</title>
<link rel="stylesheet" href="css/style1.css">
</head>
<body>
<a href="ManagerServlet" class="active-table" data-toggle="modal">Import Table</a>


<center>
	<table >
		<thead>
			<tr>
				<th class="block-4-image">id</th>
				<th class="block-4-image">product_id</th>
				<th class="block-4-image">name</th>
				<th class="block-4-image">image</th>
				<th class="block-4-image">price</th>
				<th class="block-4-image">quantity</th>
				<th class="block-4-image">type</th>
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

<a href="admin.jsp" class="active-table">Back to manager</a>
</body>
</html>