package com.fssa.petmall.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.petmall.services.PetService;
import com.fssa.petmall.services.exception.ServiceException;
/**
 * Servlet implementation class BuyNowServlet
 */
@WebServlet("/BuyNowServlet")
public class BuyNowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PetService PetService = new PetService();
		String id = request.getParameter("id");
		int uniqueID = Integer.parseInt(id);
		HttpSession session = request.getSession();
		String loggedInUserEmail = (String) session.getAttribute("loggedInEmail");
		try {
			if(PetService.placeOrder(uniqueID,loggedInUserEmail)) {
				response.sendRedirect(request.getContextPath()+"/Pages/OrderDetails.jsp");
			}
			//else {
//				response.sendRedirect(request.getContextPath()+"/Pages/OrderDetails.jsp");
			//}

		} catch (ServiceException e) {
			e.printStackTrace();
		}
	}

}
