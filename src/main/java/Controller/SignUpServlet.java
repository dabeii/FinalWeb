package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Uti.Connect2DB;

/**
 * Servlet implementation class SignUpServlet
 */
@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
		response.setContentType(getServletInfo());
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = Connect2DB.getConnection();
		String n=request.getParameter("txtName");
		String p=request.getParameter("txtPassword");
		String rp=request.getParameter("txtRepassword");
		if(!p.equals(rp)) {
			request.setAttribute("warn2", "Re-entered password doesn't match");
			request.getRequestDispatcher("signup.jsp").forward(request,response);
		}
		else {
			try {
			
			PreparedStatement ps = con.prepareStatement("insert into login value (?,?,0)");	
			ps.setString(1, n);
			ps.setString(2, p);
			ps.executeUpdate();
			response.sendRedirect("login.jsp");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				request.setAttribute("warn", "Username already exist");
				request.getRequestDispatcher("signup.jsp").forward(request,response);
			}
			}
		}catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}
	}
}
