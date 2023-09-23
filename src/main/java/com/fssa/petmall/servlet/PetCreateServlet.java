package com.fssa.petmall.servlet;

import java.io.IOException;


import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.petmall.model.Pet;
import com.fssa.petmall.services.PetService;

/**
 * Servlet implementation class AddPetServlet
 */
@WebServlet("/PetCreateServlet")
public class PetCreateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String image = request.getParameter("image");
		String name = request.getParameter("name");
		String personalname = request.getParameter("personalname");
		String specialtalent = request.getParameter("talent");
		String dob = request.getParameter("dob");
		String behavior = request.getParameter("behavior");
		String price = request.getParameter("price");
		String phone = request.getParameter("phone");
		String vaccination = request.getParameter("vaccination");
		HttpSession session = request.getSession();
		String soldUserEmail = (String) session.getAttribute("loggedInEmail");
		Pet pet = new Pet();
		pet.setpetimageurl(image);
		pet.setRealName(name);
		pet.setPersonalName(personalname);
		pet.setSpecialTalent(specialtalent);
		pet.setDob(dob);
		pet.setBehavior(behavior);
		pet.setPrice(price);
		pet.setMobileNumber(phone);
		pet.setVaccinationCertificate(vaccination);
		pet.setsoldUserEmail(soldUserEmail);
		try {
			if(PetService.createPet(pet)) {

			PrintWriter out = response.getWriter();
				out.println("Pet created successfully");
				
				response.sendRedirect(request.getContextPath()+"/Pages/Home.jsp");
			}else {
				PrintWriter out = response.getWriter();
				out.println("Pet creation Failed");
			}

		} catch (Exception e) {
		    e.printStackTrace();
		}
	}
}
