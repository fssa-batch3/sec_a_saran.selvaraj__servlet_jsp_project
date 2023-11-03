package com.fssa.petmall.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.petmall.services.*;
import com.fssa.petmall.services.exception.ServiceException;
/**
 * Servlet implementation class AddressAddServlet
 */
@WebServlet("/AddressAddServlet")
public class AddressAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
   	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   		HttpSession session = request.getSession(true);
   		
		String email = (String) session.getAttribute("loggedInEmail");
		String address = request.getParameter("address");
		
		UserService UserService = new UserService();
		try {
			UserService.createAddress(email, address);
			response.sendRedirect(request.getContextPath()+"/Pages/UserProfile.jsp");
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		
	}

}
