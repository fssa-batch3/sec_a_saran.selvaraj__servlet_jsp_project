package com.fssa.petmall.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.fssa.petmall.model.*;

/**
 * Servlet implementation class GetAllAccounts
 */
@WebServlet("/GetAllAccountJSONServlet")
public class GetAllAccountJSONServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//
//	protected void doGet(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		
//		List<Pet> accounts = new ArrayList<Pet> ();
//		
//		accounts.add(new User("Male","1234567890","21/12/2004", null, null));
//		accounts.add(new User("Male","1234567890 ","21/12/2004 ", null, null));
//		accounts.add(new User("Male","1234567890 ","21/12/2004 ", null, null));
//		JSONArray accountsJSonArray = new JSONArray(accounts);
//		PrintWriter out = response.getWriter();
//		out.println(accountsJSonArray.toString());
//		out.flush();
//	}

}