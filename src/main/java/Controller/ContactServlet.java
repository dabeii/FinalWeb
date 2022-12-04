package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DAO;

/**
 * Servlet implementation class ContactServlet
 */
@WebServlet(name="ContactServlet", urlPatterns={"/ContactServlet"})
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactServlet() {
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
		String name= request.getParameter("txtname");
		String email= request.getParameter("txtemail");
		String phone= request.getParameter("txtphone");
		String mess= request.getParameter("txtmess");
		long p = Integer.parseUnsignedInt(phone);
		DAO d= new DAO();
		d.contact(name, email, p, mess);
		response.sendRedirect("contact.jsp");
		}catch(Exception e)
		{
			request.setAttribute("warn", "Invalid phone number");
			request.getRequestDispatcher("contact.jsp").forward(request, response);
		}
	}

}
