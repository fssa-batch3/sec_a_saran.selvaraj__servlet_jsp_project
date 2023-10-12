<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="com.fssa.petmall.model.*"%>
<%@ page import="com.fssa.petmall.services.*"%>
<%@ page import="com.fssa.petmall.services.exception.*"%>
<%@ page import="com.fssa.petmall.utills.*"%>
<%@ page import="java.text.DecimalFormat"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
  <head>
    <link rel="icon" type="image/png" href="PetMallLogo.png" />
    <meta charset="ISO-8859-1" />
    <title>Pet mall | Order Details</title>
  </head>
  <body>
    <jsp:include page="header.jsp"></jsp:include>
    <div class="whole-card">
    <h1>Order Details</h1>
        
    <%String LoggedInUserEmail = (String) session.getAttribute("loggedInEmail");
    List<Pet> orderedPets = new ArrayList<>();
	PetService petService = new PetService();
	orderedPets = petService.orderedPets(LoggedInUserEmail);
	System.out.println(orderedPets);
	if(orderedPets.size() != 0){
	for (Pet pets : orderedPets) {
    %>
      <a href="PetDetails.jsp?id=<%=pets.getuniqueID()%>" class="card">
        <div class="card-content">
          <div class="space">
            <img src="<%=pets.getpetimageurl()%>" alt="Pet Image" />
          </div>
          <div class="space">
            <div class="name">Pet Name : <%=pets.getRealName()%></div>
            <div class="name">Personal Name : <%=pets.getPersonalName()%></div>
          </div>

          <div class="price space"><%=pets.getPrice()%></div>
          <form action="../CancelOrderServlet">
            <input type="hidden" name="id" value="<%=pets.getuniqueID()%>">
            <button type="submit" class="cancel-button" id="cancel">Cancel Order</button>
          </form>
        </div>
      </a>
      <%} }else{%>
    	  <div class="no-orders">
    	       <img src="No-orders.png">
    	       <a href="Home.jsp" class="order-now">Order now</a>
    	  </div>
     <% }%>
    </div>
  </body>
  <style>
    .whole-card {
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
      margin-top: 40px;
    }
    .card {
      width: 950px;
      height: 120px;
      border: 1px solid #ccc;
      border-radius: 10px;
      overflow: hidden;
      text-decoration: none;
      display: flex;
      justify-content:center;
      /* flex-wrap: wrap; */

    }
    .card .card-content {
      display: flex;
      justify-content: center;
      align-items: center;
      text-align: center;
      margin-right: 20px;
      padding: 40px;
    }
    .space{
      margin:0px 100px 0px 0px;
    }
    .card-content img {
      width: 100px;
      height: 100px;
      display: flex;
      float: left;
      border-radius: 100%;
      margin: 0px;
      object-fit: contain;
    }
    .card-content .name {
      font-size: 18px;
      font-weight: bold;
      margin-bottom: 5px;
    }
    .card-content .price {
      font-size: 16px;
      margin-bottom: 10px;
    }

    .cancel-button {
      width: 200px;
      padding: 10px;
      background-color: red;
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      align-self: flex-end;
    }
    
    .no-orders {
    margin-top:50px;
    display:flex;
    flex-direction:column;
    justify-content:center;
    align-items:center;
    box-shadow: 0px 0px 40px rgb(221, 220, 220);
    color: #888;
    border-radius:10px;
    }
    .order-now{
     font-size: 18px;
     font-weight:bold;
      width: 150px;
      height:40px;
      margin-bottom:50px;
      border-radius:25px;
      padding: 3px;
      text-decoration:none;
      background-color: white;
      color: #1877f2;
      border: 3.5px solid #1877f2;
      cursor: pointer;
    }

  </style>
</html>
