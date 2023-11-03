package com.fssa.petmall.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.fssa.petmall.services.*;
import com.fssa.petmall.services.exception.ServiceException;
/**
 * Servlet implementation class AddressUpdateServlet
 */
@WebServlet("/AddressUpdateServlet")
public class AddressUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String address = request.getParameter("address");
		String ID = request.getParameter("id");
		
		int id = Integer.parseInt(ID);
		
		UserService UserService = new UserService();
		try {
			UserService.updateAddress(address, id);
			response.sendRedirect(request.getContextPath()+"/Pages/ListAllAddress.jsp");
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		
		
		
		
	}

}
