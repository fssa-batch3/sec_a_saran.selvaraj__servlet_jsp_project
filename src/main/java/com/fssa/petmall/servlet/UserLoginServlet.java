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
 * Servlet implementation class LoginServlet
 */
@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		PrintWriter out = response.getWriter();
	    UserService userService = new UserService();
	    User user = new User(email, password);
	    // Create session.
	    HttpSession session = request.getSession();
	    // Passing email for getting userID.
	    User userObject = null;
		try {
			userObject = userService.fetchUserIDByEmail(email);
			if(userObject == null) {
				response.sendRedirect(request.getContextPath()+"/Pages/UserLogin.jsp?error=User not found please check you Email");
			}else if (UserService.loginUser(user) ) {
	            // Setting attributes in session
	            session.setAttribute("loggedInEmail",email);
	            session.setAttribute("loggedInUserID",userObject.getUserID());
	            session.setAttribute("loggedInusername1",userObject.getfirst_name());
	            session.setAttribute("loggedInusername2",userObject.getlast_name());
	            session.setAttribute("loggedIngender",userObject.getGender());
	            session.setAttribute("loggedInmobileNumber",userObject.getPhone_number());
	            session.setAttribute("loggedIndateOfBirth",userObject.getDate_of_birth());
	            response.sendRedirect(request.getContextPath()+"/Pages/Home.jsp");
	        } else {
	            // Invalid user credentials
	            response.sendRedirect(request.getContextPath()+"/Pages/UserLogin.jsp?error=Authentication failed. Please check your password.");
	        }
	    } catch (ServiceException e) {
	        // Handle ServiceException by redirecting to the login page with an error message
	        response.sendRedirect(request.getContextPath()+"/Pages/UserLogin.jsp?error=Authentication failed. Please check your email and password.");
	    }
	}

}