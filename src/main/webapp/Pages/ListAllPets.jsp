<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.fssa.petmall.model.*"%>
<%@ page import="com.fssa.petmall.services.*"%>
<%@ page import="com.fssa.petmall.services.exception.*"%>
<%@ page import="com.fssa.petmall.utills.*"%>
<%@ page import="java.text.DecimalFormat"%>
<%@ page  import="java.sql.Connection"%>
<%@ page  import="java.sql.ResultSet"%>
<%@ page  import="java.sql.Statement"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<title>List of Pets</title>
</head>
<body>
<div class="whole-card">
	<% 
   
   if(session.getAttribute("loggedInemail") == null) {
         response.sendRedirect("login.html");
     } else {
         String loggedInEmail = (String) session.getAttribute("loggedInemail");
         UserService userService = new UserService();
         PetService petService1 = new PetService();
	     List<Pet> pet = new ArrayList<>();
     }	
	final String selectQuery = "SELECT * FROM pet_details";
    Utills utills = new Utills();
    
    Connection connection = Utills.getConnection();
    Statement stmt = connection.createStatement();
    //Step 05: Get the resultset
    ResultSet rs = stmt.executeQuery(selectQuery);
    
	String soldUserEmail1 = (String) session.getAttribute("loggedInEmail");
	while 	(rs.next()){ 
	String realName = rs.getString("realName");
	String personalName = rs.getString("personalName");
	String image = rs.getString("image");
	String Price = rs.getString("Price");
	String dob = rs.getString("dob");
	String id = rs.getString("uniqueID");
	String soldUserEmail2 = rs.getString("soldUserEmail");
	
	%>
	<div class="product-card">

		<div class="product-tumb">
			<img
				src="<%=image%>"
				alt="">
		</div>
		<div class="product-details">
			<h4>
				<a href="">Pet Name : <%=realName%></a>
			</h4>
			<p>
				Name : <%=personalName%><br>DOB : <%=dob%>
			</p>
			<div class="product-bottom-details">
				<div class="product-price">Price : ₹ <%=Price%></div>
				<div class="product-links">
				<%if(soldUserEmail1.equals(soldUserEmail2)){ %>
				    <a class="button" href="PetUpdate.jsp?id=<%=id%>">Update</a>
				     <a class="button" href="PetDetails.jsp?id=<%=id%>">View</a> 
				    <%} else{%>
				    <a class="button" href="PetDetails.jsp?id=<%=id%>">Buy now</a>
				    <%} %>
				</div>
			</div>
		</div>
	</div>
	<% }%>
</div>
</body>
<style>
@import url('https://fonts.googleapis.com/css?family=Roboto:400,500,700');
*
{
    -webkit-box-sizing: border-box;
            box-sizing: border-box;
    margin: 0;
    padding: 0;
}
whole-card{
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    row-gap: 20px;
    column-gap: 20px;
}


a
{
    text-decoration: none;
}
.product-card {
    width: 300px;
    position: relative;
    box-shadow: 0 2px 7px #dfdfdf;
    margin: 30px ;
    background: var(--card-background2);
    
}

.badge {
    position: absolute;
    left: 0;
    top: 20px;
    text-transform: uppercase;
    font-size: 13px;
    font-weight: 700;
    background: red;
    color: #fff;
    padding: 3px 10px;
}

.product-tumb {
    display: flex;
    align-items: center;
    justify-content: center;
    height:250px;
    padding:10px;
    background: var(--card-background1);
}

.product-tumb img {
    border-radius: 8px;
    max-width: 250px;
    max-height: 250px;
}

.product-details {
    padding: 30px;
    
}



.product-details h4 a {
    font-weight: 500;
    display: block;
    margin-bottom: 18px;
    text-transform: uppercase;
    color:var(--text-color);
    text-decoration: none;
    transition: 0.3s;
}
.button{
    background:var(--text-color);
    color: white;
    padding:2px 10px;
    border-radius: 4px;
    text-align:center;
    float: center;
    width: 100%;
}
.product-details h4 a:hover {
    color: var(--card-background2);
}

.product-details p {
    font-size: 15px;
    line-height: 22px;
    margin-bottom: 18px;
    color: #999;
}

.product-bottom-details {
    overflow: hidden;
    border-top: 1px solid #eee;
    padding-top: 20px;
    diplay:flex;
    flex-direction:column;
}

.product-bottom-details div {
    float: center;
    width: 100%;
}

.product-price {
    diplay:flex;
    text-align:center;
    font-size: 18px;
    color:var(--text-color);
    font-weight: 600;
}

.product-links {
    display:flex;
    gap:10px;
    

}

.product-links a {
    display: inline-block;
    margin-left: 5px;
    transition: 0.3s;
    font-size: 17px;
}

</style>
</html>
