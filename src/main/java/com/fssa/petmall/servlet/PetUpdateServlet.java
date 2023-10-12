package com.fssa.petmall.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.petmall.model.Pet;
import com.fssa.petmall.services.PetService;
import com.fssa.petmall.services.exception.ServiceException;
/**
 * Servlet implementation class PetUpdateServlet
 */
@WebServlet("/PetUpdateServlet")
public class PetUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String image = request.getParameter("image");
		String name = request.getParameter("name");
		String personalname = request.getParameter("personalname");
		String specialtalent = request.getParameter("talent");
		String dob = request.getParameter("dob");
		String behavior = request.getParameter("behavior");
		String price = request.getParameter("price");
		String phone = request.getParameter("phone");
		String vaccination = request.getParameter("vaccination");
		String id = request.getParameter("id");
		int uniqueId =Integer.parseInt(id);
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
		pet.setuniqueID(uniqueId);
		PetService PetService = new PetService();
		try {
			com.fssa.petmall.services.PetService.updatePet(pet);
			response.sendRedirect(request.getContextPath()+"/Pages/Home.jsp");
		} catch (ServiceException e) {
			e.printStackTrace();
		}
	}


}
