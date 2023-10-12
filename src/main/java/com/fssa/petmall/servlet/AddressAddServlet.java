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
 * Servlet implementation class AddressAddServlet
 */
@WebServlet("/AddressAddServlet")
public class AddressAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
   	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		
		UserService UserService = new UserService();
		try {
			UserService.createAddress(email, address);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		
	}

}
