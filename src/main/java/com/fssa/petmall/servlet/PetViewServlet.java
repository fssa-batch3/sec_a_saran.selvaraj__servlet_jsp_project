package com.fssa.petmall.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.petmall.model.Pet;
import com.fssa.petmall.utills.Utills;

/**
 * Servlet implementation class PetViewServlet
 */
@WebServlet("/PetViewServlet")
public class PetViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Pet> petList = new ArrayList<>();
        Connection connection = Utills.getConnection();
        try {


            // Create a SQL statement
            Statement statement = (Statement) connection;
            String sql = "SELECT * FROM pet_details where isNotBought = 0";
            ResultSet resultSet = statement.executeQuery(sql);

            // Iterate through the result set and populate the petList
            while (resultSet.next()) {
            	int isNotBought = resultSet.getInt("isNotBought");
            	if(isNotBought == 0) {
            	int id = resultSet.getInt("uniqueID");
                String uniqueID = String.valueOf(id);
                String realName = resultSet.getString("realName");
                String price = resultSet.getString("Price");
                String image = resultSet.getString("image");
                String personalName = resultSet.getString("personalName");
                String dob = resultSet.getString("dob");
                String specialTalent = resultSet.getString("specialTalent");
                String behavior = resultSet.getString("behavior");
                String mobile = resultSet.getString("mobile");
                String vaccinationCertificate = resultSet.getString("vaccinationCertificate");

                Pet pet = new Pet(uniqueID, realName, price, image, personalName, dob, specialTalent, behavior, mobile, vaccinationCertificate);
                petList.add(pet);
                }
            }

            // Close the resources
            resultSet.close();
            statement.close();
            connection.close();

        } catch (Exception e) {
            e.printStackTrace();
            // Handle exceptions appropriately
        }

        // Set the petList as an attribute in the request
        request.setAttribute("petList", petList);

        // Forward the request to the JSP for rendering
        request.getRequestDispatcher("../ListAllPets.jsp").forward(request, response);
    }
}
