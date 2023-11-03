<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.util.ArrayList"%>
<%@page import="com.fssa.petmall.services.PetService"%>
 <%@ page import="com.fssa.petmall.model.*"%>
<%@page import="java.util.List"%>

    
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="PetMallLogo.png" />
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<meta charset="ISO-8859-1">
<title>Pet mall | Pet Details</title>
>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include> 
     <%
     String email = (String)session.getAttribute("loggedInEmail");
     String id = request.getParameter("id");
     int uniqueid = Integer.parseInt(id);
     List<Pet> listpets = new ArrayList<>();
 	PetService petService = new PetService(); 
 	listpets = petService.viewPet(uniqueid); %>
    <div class="container" style="display: flex; flex-direction: column">
      <a class="back" href="Home.jsp"><i class='bx bx-arrow-back bx-tada' ></i></a>
      <div style="display: flex">
        <div class="box one">
          <div class="details">
            <div class="topic" id="description">More About : <%=listpets.get(0).getRealName()%></div>
            <p id="info1">Date of birth : <%=listpets.get(0).getDob()%></p>
            <p id="info2">Special Talent : <%=listpets.get(0).getSpecialTalent()%></p>
            <p id="info3">Behavior : <%=listpets.get(0).getBehavior()%></p>
            <p id="info4">Seller contact : <%=listpets.get(0).getMobileNumber()%></p>
            
            <div class="price-box">
              
              <div class="price" id="price">Price : <%=listpets.get(0).getPrice()%></div>
            </div>
          </div>
          <div class="moreimage">Vaccination certificate : <img id="real_image" style="width:295px; height:200px;" src="<%=listpets.get(0).getVaccinationCertificate()%>"></div>
            
        </div>
        <div class="box two">
          <div class="image-box">
            <div class="image">
              <img id="real_image" src="<%=listpets.get(0).getpetimageurl()%>"/>
            </div>
            <div class="info">
              <div class="pet-info">
                <div style="display: flex;">
                  <div class="brand">Name&nbsp;&nbsp;:&nbsp;&nbsp;</div>
                  <div class="name" id="real_name">  <%=listpets.get(0).getRealName()%></div>
                </div>
                <div style="display: flex;">
                  <div class="brand">Personal name&nbsp;&nbsp;:&nbsp;&nbsp;</div>
                  <div class="name" id="nick_name"><%=listpets.get(0).getPersonalName()%></div>
                </div>
                
              </div>
              <div class="button1">
              <% if(email.equals(listpets.get(0).getsoldUserEmail())){%>
                <a class="delete" href="../PetDeleteServlet?id=<%=listpets.get(0).getuniqueID()%>" id="buy_now">Delete Pet</a>
                <a class="buttons" href="PetUpdate.jsp?id=<%=listpets.get(0).getuniqueID()%>" id="buy_now">Update pet details</a>
                
                <%} else if(email != null){ %>
                <a class="buttons" href="BuyNow.jsp?id=<%=listpets.get(0).getuniqueID()%>" id="buy_now">Buy Now</a>
                
                <%}else{%>
                <a class="buttons" href="UserLogin.jsp" id="buy_now">Buy Now</a>
                <%} %>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
body{
  display: flex;
  width: 100%;
  height: 100vh;
  align-items: center;
  justify-content: center;
  background: #d1e5ff;
}
::selection{
  background: #fee6eb;
}
body:before{
  content: '';
  position: absolute;
  width: 100%;
  height: 100%;
  clip-path: circle(55% at right 30%);
  background: #e6e6e6;
  background-image: linear-gradient( 0deg,  #5ba2ff 10%,  #1877f2 100%);
}
.container{
  display: flex;
  padding: 0px 50px;
  height: 550px;
  width: 75%;
  background: #fff;
  border-radius: 12px;
  justify-content: space-between;
  background-color: transparent;
  box-shadow: 10px 10px 20px rgba(0, 0, 0, 0.15);
  position: relative;
}
.pet-info{
	width:200px;
	height:80px;
}
.container .box.one{
  padding: 35px 5px 0px 35px;
}
.box.one .details .topic{
  font-size: 30px;
  font-weight: 500;
}
.discription{
width: 300px;
position: relative;
}
.box.one .details p{
  color: #737373;
  font-size: 13px;
  font-weight: 500;
}
.box.one .rating{
  color: #fd9bb0;
  font-size: 14px;
  margin-top: 10px;
}
.box.one .price-box{
  margin-top: 16px;
}

.box.one .price{
  color: #fc6989;
  font-size: 30px;
}
 .button1{
  margin-top: 35px;
  left:200px;
  display: flex;
 
  
}
 .buttons{
  width : 200px;
  height: 50px;
  text-decoration: none;
  outline: none;
  border:none;
  padding: 12px 0px;
  border-radius: 6px;
  font-size: 18px;
  font-weight: 500;
  color: #fff;
  background-color: #1877f2;
  cursor: pointer;
  transition: all 0.3s ease;
text-align: center;
}
.delete{
  width : 120px;
  height: 50px;
  text-decoration: none;
  outline: none;
  border:none;
  padding: 12px 0px;
  border-radius: 6px;
  font-size: 18px;
  font-weight: 500;
  color: #fff;
  background-color: red;
  cursor: pointer;
  transition: all 0.3s ease;
text-align: center;
}
.back{
  width : 30px;
  height: 25px;
  outline: none;
  border:none;
  padding: 0px 2px 0px 0px;
  border-radius: 6px;
  font-size: 18px;
  font-weight: 500;
  color: #fff;
  background-color: #1877f2;
  cursor: pointer;
  margin: 20px 0px 0px -20px;
  transition: all 0.3s ease;
  text-align: center;
}
.button1 button:hover{
  transform: scale(0.98);
}
.button2{
  /* width : 50px;
  height: 40px; */
  text-decoration: none;
  outline: none;
  border:none;
  padding: 8px 16px;
  border-radius: 6px;
  font-size: 18px;
  font-weight: 500;
  color: #fff;
  background: #00e6e6;
  cursor: pointer;
  transition: all 0.3s ease;
}
.button1{
  display: flex;
  gap: 20px;
}
.moreimages{
  display: flex;
  gap: 20px;
}
.price-box{
  display: flex;
  gap: 40px;
}
.moreimage{
  display: flex;
  flex-direction: column;
  gap: 25px;
}
.moreimages img{
  border-radius: 20px;
}
.container .box.two .image{
  position: relative;
  right: 80px;
  top: 20px;
  left:150px;
  height: 340px;
  width: 400px;
}
.image img{
  height: 75%;
  width: 75%;
  border-radius: 10px;
}

.container .box.two .image-box{
  text-align: right;
  left: 30px;
  bottom: 27px;
}
.container .box.two .image-
.image{
  text-align: center;
  left: 0px;
  bottom: 27px;
}
.box.two .image-box .info{
  margin: 0px 0px 50px 165px;
}

.pet-info{
  margin-left: 25%;
  margin-top: -10%;
}
.box.two .info .brand{
 font-size: 17px;
 font-weight: 600;
 color: #c9032e;
}
.box.two .info .name{
 font-size: 20px;
 font-weight: 500;
 color: #fff;
}
.box.two .info .shipping{
 font-size: 14px;
 font-weight: 400;
 color: #000;
}
.box.two .button2{
  margin: 17px 0;
}
.info{
    /*position: relative; */
    display: flex;
    flex-direction: column;
    /* justify-content:right; */
    /* align-items:center; */
    text-align:left;
    /* align-content: end; */
}

.button2 button{
  outline: none;
  color: #fff;
  border: 1px solid #fff;
  border-radius: 12px;
  padding: 8px 17px;
  background: transparent;
  font-size: 15px;
  font-weight: 400;
  cursor: pointer;
}

</style>

</html>