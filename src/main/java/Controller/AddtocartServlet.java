package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Models.Cart;

/**
 * Servlet implementation class AddtocartServlet
 */
@WebServlet("/AddtocartServlet")
public class AddtocartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddtocartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try (PrintWriter out = response.getWriter()){
			ArrayList<Cart> cartList= new ArrayList<>();
			int i = Integer.parseInt(request.getParameter("id"));
			Cart cm = new Cart();
			cm.setId(i);
			cm.setQuantity(1);
			
			HttpSession session = request.getSession();
			ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
			
			if(cart_list == null)
			{
				cartList.add(cm);
				session.setAttribute("cart-list", cartList);
				response.sendRedirect("ShowServlet");
			}
			else
			{
				cartList = cart_list;
				boolean exist = false;
				
				
				for(Cart c:cartList)
				{
					if(c.getId() == i)
					{
						exist=true;
						out.println("product exist");
					}
				}
				if(!exist)
				{
					cartList.add(cm);
					response.sendRedirect("ShowServlet");
				}
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
