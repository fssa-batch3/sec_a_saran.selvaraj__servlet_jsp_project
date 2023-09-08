package com.fssa.petmall.servlet;

import java.io.IOException;


import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.fssa.petmall.model.*;
import com.fssa.petmall.utills.*;
import com.fssa.petmall.services.UserService;
import com.fssa.petmall.services.exception.ServiceException;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		PrintWriter out = response.getWriter();
	    UserService userService = new UserService();
	    User user = new User(email, password);
	    // Create session.
	    HttpSession session = request.getSession();
	    // Passing email for getting userID.
	    User userObject = fetchUserIDByEmail(email);
	    try {
	        if (userService.loginUser(user) && (userObject.getIsDeleted() == 0)) {
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
	            response.sendRedirect(request.getContextPath()+"/Pages/UserLogin.jsp?error=Authentication failed. Please check your email and password.");
	        }
	    } catch (ServiceException e) {
	        // Handle ServiceException by redirecting to the login page with an error message
	        response.sendRedirect(request.getContextPath()+"/Pages/UserLogin.jsp?error=Authentication failed. Please check your email and password.");
	    }
	}
	private User fetchUserIDByEmail(String email) {
		User user1 = null;
		// Database query
		String query = "SELECT * FROM user_details WHERE email = ?";
		try (Connection connection = Utills.getConnection();
		    PreparedStatement statement = connection.prepareStatement(query)) {
			statement.setString(1, email);
			try (ResultSet resultSet = statement.executeQuery()) {
				if (resultSet.next()){
					int userID = resultSet.getInt("userID");
					String Email = resultSet.getString("Email");
					String First_name = resultSet.getString("First_name");
					String Last_name = resultSet.getString("Last_name");
					String Date_of_birth = resultSet.getString("Date_of_birth");
					String Gender = resultSet.getString("Gender");
					String Phone_number = resultSet.getString("Phone_number");
					String Password = resultSet.getString("Password");
					int isDeleted = resultSet.getInt("is_deleted");
					user1 = new User(userID,First_name,Last_name,Gender,Phone_number,Date_of_birth,isDeleted);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user1;
	}
}