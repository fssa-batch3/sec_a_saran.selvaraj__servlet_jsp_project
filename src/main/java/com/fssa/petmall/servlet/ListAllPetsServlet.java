package com.fssa.petmall.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.petmall.model.Pet;
import com.fssa.petmall.services.PetService;
import com.fssa.petmall.services.exception.ServiceException;
/**
 * Servlet implementation class ListAllPetsServlet
 */
@WebServlet("/ListAllPetsServlet")
public class ListAllPetsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PetService PetService = new PetService();
		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("loggedInEmail");
		try {
			PrintWriter out = response.getWriter();
			List<Pet> listpets = new ArrayList<>();
			PetService petService = new PetService();
			listpets = petService.listAllPets();

			request.setAttribute("petList", listpets);

			response.sendRedirect(request.getContextPath()+"/Pages/ListAllPets.jsp");


		} catch (ServiceException e) {
			e.printStackTrace();
		}
	}


}
