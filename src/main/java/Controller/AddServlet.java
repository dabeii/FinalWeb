package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DAO;

/**
 * Servlet implementation class AddServlet
 */
@WebServlet(name="AddServlet", urlPatterns= {"/AddServlet"})
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String pid= request.getParameter("pid");
		String name= request.getParameter("name");
		String image= request.getParameter("image");
		String price= request.getParameter("price");
		String quantity= request.getParameter("quantity");
		String type= request.getParameter("type");
		int p= Integer.parseInt(price);
		int q= Integer.parseInt(quantity);
		DAO d= new DAO();
		d.addProduct(pid, name, image, p, q, type);  
		response.sendRedirect("admin.jsp");
	}

}
