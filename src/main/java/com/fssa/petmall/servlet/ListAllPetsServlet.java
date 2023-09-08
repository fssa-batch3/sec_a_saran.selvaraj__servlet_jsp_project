package com.fssa.petmall.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.petmall.model.Pet;
import com.fssa.petmall.services.*;
import com.fssa.petmall.services.exception.ServiceException;
/**
 * Servlet implementation class ListAllPetsServlet
 */
@WebServlet("/ListAllPetsServlet")
public class ListAllPetsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PetService petservice = new PetService(); 
		List<Pet> list = new ArrayList<>(); 
		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("loggedInEmail");
		try {
			list = petservice.listAllPets(email);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
	}


}
