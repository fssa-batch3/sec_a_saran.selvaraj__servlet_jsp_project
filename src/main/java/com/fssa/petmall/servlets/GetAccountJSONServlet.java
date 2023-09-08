package com.fssa.petmall.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.fssa.petmall.model.*;

/**
 * Servlet implementation class GetAccountJSONServlet
 */
@WebServlet("/GetAccountJSONServlet")
public class GetAccountJSONServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		User user = new User("saran@gmail.com","JuneJupiter@123");
		
		JSONObject accountJson = new JSONObject(user);
		PrintWriter out = response.getWriter();
		out.println(accountJson.toString());
		out.flush();
	}

}