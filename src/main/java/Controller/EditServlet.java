package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DAO;

/**
 * Servlet implementation class EditServlet
 */
@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditServlet() {
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
		String id= request.getParameter("id");
		String pid= request.getParameter("pid");
		String name= request.getParameter("name");
		String image= request.getParameter("image");
		String price= request.getParameter("price");
		String quantity= request.getParameter("quantity");
		String type= request.getParameter("type");
		int i= Integer.parseInt(id);
		int p= Integer.parseInt(price);
		int q= Integer.parseInt(quantity);
		DAO d= new DAO();
		d.editProduct(i,pid, name, image, p, q, type);
		response.sendRedirect("admin.jsp");
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
