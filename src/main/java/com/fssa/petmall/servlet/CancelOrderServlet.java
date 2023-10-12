package com.fssa.petmall.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.petmall.services.PetService;
import com.fssa.petmall.services.exception.ServiceException;

/**
 * Servlet implementation class CancelOrderServlet
 */
@WebServlet("/CancelOrderServlet")
public class CancelOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ID = request.getParameter("id");
		int id = Integer.parseInt(ID);

		PetService PetService = new PetService();

		try {
			PetService.cancelOrder(id);
			response.sendRedirect(request.getContextPath()+"/Pages/OrderDetails.jsp");
		} catch (ServiceException e) {
			e.printStackTrace();
		}


	}

}
