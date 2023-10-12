package com.fssa.petmall.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.petmall.services.PetService;
import com.fssa.petmall.services.exception.ServiceException;

@WebServlet("/PetDeleteServlet")
public class PetDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ID = request.getParameter("id");
		int id = Integer.parseInt(ID);

		PetService PetService = new PetService();
		try {
			com.fssa.petmall.services.PetService.deletePet(id,0);
			response.sendRedirect(request.getContextPath()+"/Pages/Home.jsp");
		} catch (ServiceException e) {
			e.printStackTrace();
		}
	}

}
