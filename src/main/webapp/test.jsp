<%@ page import= "java.sql.DriverManager" %>
<%@ page import= "java.sql.Connection" %>
<%@ page import= "java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import= "Uti.Connect2DB" %>
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
	<% 
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = Connect2DB.getConnection();
			Statement st=con.createStatement();
			String str= "select * from product";
			ResultSet rs= st.executeQuery(str);
			while(rs.next())
			{%>
				<tr>
					<td><%=rs.getInt("id") %> </td>
					<td><%=rs.getString("product_id") %> </td>
					<td><%=rs.getString("name") %> </td>
					<td><%=rs.getString("image") %> </td>
					<td><%=rs.getInt("int") %> </td>
					<td><%=rs.getInt("quantity") %> </td>
					<td><%=rs.getString("type") %>> </td>
				</tr>
			<%}
		}
		catch(Exception e){
			e.getMessage();
		}
	%>

</center>
</body>
</html>