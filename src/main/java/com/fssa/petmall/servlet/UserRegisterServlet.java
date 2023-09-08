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

import com.fssa.petmall.model.User;
import com.fssa.petmall.services.UserService;

/**
 * Servlet implementation class AddPetServlet
 */
@WebServlet("/UserRegisterServlet")
public class UserRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String gender = request.getParameter("gender");
		String dob = request.getParameter("dob");
		String phone = request.getParameter("phone");
		User user1 = new User(fname,lname,gender,phone,dob,email, password);
		UserService userService = new UserService();

		try {
			if(userService.registerUser(user1)) {

			PrintWriter out = response.getWriter();
				out.println("User registered successfully");
				
				response.sendRedirect(request.getContextPath()+"/Pages/UserLogin.jsp");
			}

		} catch (Exception e) {	
			if (email == null || "".equals(email)) {
				PrintWriter out = response.getWriter();
				out.println("Invalid Email");
				response.sendRedirect("/petmall-web/Pages/UserLogin.jsp?errorMessage=Invalid Email");
			}

			else if (password == null || "".equals(password) || password.length() < 8) {
				response.sendRedirect("/petmall-web/Pages/UserLogin.jsp?errorMessage=Invalid Password");
			}
		}
	}
}
