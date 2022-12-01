package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Uti.Connect2DB;

/**
  Servlet implementation class LoginServlet
**/

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = Connect2DB.getConnection();
			String n= request.getParameter("txtName");
			String p= request.getParameter("txtPassword");
			PreparedStatement ps = con.prepareStatement("select username from login where username=? and password=?");	
			ps.setString(1, n);
			ps.setString(2, p);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				if(n.equals("admin"))
				{
					RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
					rd.forward(request, response);
				}
				else
				{
					RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
					rd.forward(request, response);
				}
			}
			else 
			{
				out.print("<a href=login.jsp font-size:33pt margin-left:auto margin-right:auto>TRY AGAIN</a>");
			}
			
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
