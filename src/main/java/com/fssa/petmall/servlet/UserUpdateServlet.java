package com.fssa.petmall.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.petmall.model.User;
import com.fssa.petmall.services.UserService;
import com.fssa.petmall.services.exception.ServiceException;

/**
 * Servlet implementation class AddPetServlet
 */
@WebServlet("/UserUpdateServlet")
public class UserUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String dob = request.getParameter("dob");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		User user = new User(fname,lname,gender,phone,dob);
		UserService userService = new UserService();

		HttpSession session = request.getSession();

		String email = (String) session.getAttribute("loggedInEmail");
			try {
				if(UserService.updateUser(user,email)) {
				    PrintWriter out = response.getWriter();
					out.println("User registered successfully");
					session.setAttribute("loggedInusername1",fname);
					session.setAttribute("loggedInusername2",lname);
					session.setAttribute("loggedIngender",gender);
			        session.setAttribute("loggedInmobileNumber",phone);
			        session.setAttribute("loggedIndateOfBirth",dob);
					response.sendRedirect(request.getContextPath()+"/Pages/Home.jsp");
				}
			} catch (ServiceException | IOException e) {
				PrintWriter out = response.getWriter();
				out.println("Update unsuccessfull");
				out.print(e.getMessage());			}
	}
}
