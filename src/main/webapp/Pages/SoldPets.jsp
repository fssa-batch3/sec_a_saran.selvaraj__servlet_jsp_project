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
<meta charset="ISO-8859-1">
<title>Pet Mall || Sold pets</title>
<style>
@import
	url('https://fonts.googleapis.com/css?family=Roboto:400,500,700');

* {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

.whole-card{
	display: grid;
	grid-template-columns: repeat(3, 1fr);
	row-gap: 50px;
	column-gap: 20px;
}
.no-order{
    width:700px;
    height:550px;
    box-shadow: 0px 0px 40px rgb(221, 220, 220);
    color: #888;
    border-radius:10px;
    display:flex;
    flex-direction:column;
    justify-content:center;
    align-items:center;
}
.no-orders {
    display:flex;
    flex-direction:column;
    justify-content:center;
    align-items:center;
    text-align:center;
    }
    .order-now{
     font-size: 18px;
     font-weight:bold;
      width: 150px;
      height:40px;	
      border-radius:25px;
      padding: 3px;
      text-decoration:none;
      background-color: white;
      color: #1877f2;
      border: 3.5px solid #1877f2;
      cursor: pointer;
    }
a {
	text-decoration: none;
}

.product-card {
	border-radius: 10px;
	width: 300px;
	height:450px;
	position: relative;
	box-shadow: 0 2px 7px #dfdfdf;
	margin: 30px 30px 30px 50px;
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
	border-radius: 10px 10px 0px 0px;
	display: flex;
	align-items: center;
	justify-content: center;
	height: 250px;
	padding: 10px;
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
	color: var(--text-color);
	text-decoration: none;
	transition: 0.3s;
}

.button {
	background: var(--text-color);
	color: white;
	padding: 2px 10px;
	border-radius: 4px;
	text-align: center;
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
	diplay: flex;
	flex-direction: column;
}

.product-bottom-details div {
	float: center;
	width: 100%;
}

.product-price {
	diplay: flex;
	text-align: center;
	font-size: 18px;
	color: var(--text-color);
	font-weight: 600;
}

footer {
	background-color: var(--sec-color);
	width: 100%;
	bottom: 0;
	left: 0;
	top: 100%;
	transition: var(--tran-05);
	/* position: absolute; */
}

footer::before {
	content: '';
	left: 0;
	top: 100px;
	height: 1px;
	width: 100%;
	background: #AFAFB6;
}

footer .content {
	max-width: 1250px;
	margin: auto;
	padding: 30px 40px 40px 40px;
}

footer .content .top {
	display: flex;
	align-items: center;
	justify-content: space-between;
	margin-bottom: 50px;
}

.content .top .logo-details {
	color: var(--text-color);
	font-size: 30px;
	transition: var(--tran-03);
}

.content .top .media-icons {
	display: flex;
}

.content .top .media-icons a {
	height: 40px;
	width: 40px;
	margin: 0 8px;
	border-radius: 50%;
	text-align: center;
	line-height: 40px;
	color: #fff;
	font-size: 17px;
	text-decoration: none;
	transition: all 0.4s ease;
}

.top .media-icons a:nth-child(1) {
	background: #4267B2;
}

.top .media-icons a:nth-child(1):hover {
	color: #4267B2;
	background: #fff;
}

.top .media-icons a:nth-child(2) {
	background: #1DA1F2;
}

.top .media-icons a:nth-child(2):hover {
	color: #1DA1F2;
	background: #fff;
}

.top .media-icons a:nth-child(3) {
	background: #E1306C;
}

.top .media-icons a:nth-child(3):hover {
	color: #E1306C;
	background: #fff;
}

.top .media-icons a:nth-child(4) {
	background: #0077B5;
}

.top .media-icons a:nth-child(4):hover {
	color: #0077B5;
	background: #fff;
}

.top .media-icons a:nth-child(5) {
	background: #FF0000;
}

.top .media-icons a:nth-child(5):hover {
	color: #FF0000;
	background: #fff;
}

footer .content .link-boxes {
	width: 100%;
	display: flex;
	justify-content: space-between;
}

footer .content .link-boxes .box {
	width: calc(100%/ 5 - 10px);
}

.content .link-boxes .box .link_name {
	color: var(--text-color);
	font-size: 18px;
	font-weight: 400;
	margin-bottom: 10px;
	position: relative;
}

.link-boxes .box .link_name::before {
	content: '';
	position: absolute;
	left: 0;
	bottom: -2px;
	height: 2px;
	width: 35px;
	background: #fff;
}

.content .link-boxes .box li {
	margin: 6px 0;
	list-style: none;
}

.content .link-boxes .box li a {
	color: var(--text-color);
	font-size: 14px;
	font-weight: 400;
	text-decoration: none;
	opacity: 0.8;
	transition: all 0.4s ease
}

.content .link-boxes .box li a:hover {
	opacity: 1;
	text-decoration: underline;
}

.content .link-boxes .input-box {
	margin-right: 55px;
}

.link-boxes .input-box input {
	height: 40px;
	width: calc(100% + 55px);
	outline: none;
	border: 2px solid #AFAFB6;
	background: #140B5C;
	border-radius: 4px;
	padding: 0 15px;
	font-size: 15px;
	color: #000000;
	margin-top: 5px;
}

.link-boxes .input-box input::placeholder {
	color: var(--text-color);
	font-size: 16px;
}

.link-boxes .input-box input[type="button"] {
	background: #fff;
	color: #140B5C;
	border: none;
	font-size: 18px;
	font-weight: 500;
	margin: 4px 0;
	opacity: 0.8;
	cursor: pointer;
	transition: all 0.4s ease;
}

.input-box input[type="button"]:hover {
	opacity: 1;
}

footer .bottom-details {
	width: 100%;
	color: var(--botttom-text);
	transition: var(--tran-05);
	background-color: var(--bottom-content);
}

footer .bottom-details:after {
	width: 100%;
	color: var(--botttom-text);
	transition: var(--tran-05);
	background-color: var(--bottom-content);
}

footer .bottom-details .bottom_text {
	max-width: 1250px;
	margin: auto;
	padding: 20px 40px;
	display: flex;
	justify-content: space-between;
}

.bottom-details .bottom_text span, .bottom-details .bottom_text a {
	font-size: 14px;
	font-weight: 300;
	color: var(--botttom-text);
	transition: var(--tran-05);
	opacity: 0.8;
	text-decoration: none;
}

.bottom-details .bottom_text a:hover {
	opacity: 1;
	text-decoration: underline;
}

.bottom-details .bottom_text a {
	margin-right: 10px;
}

@media ( max-width : 1500px) {
	footer .content .link-boxes {
		flex-wrap: wrap;
	}
	footer .content .link-boxes .input-box {
		width: 40%;
		margin-top: 10px;
	}
	.whole-card {
		display: flex;
		flex-wrap: wrap;
		margin: 50px 50px;
	}
}

@media ( max-width : 900px) {
	footer .content .link-boxes {
		flex-wrap: wrap;
	}
	footer .content .link-boxes .input-box {
		width: 40%;
		margin-top: 10px;
	}
	.whole-card {
		display: flex;
		flex-wrap: wrap;
	}
}

@media ( max-width : 700px) {
	footer {
		position: relative;
	}
	.content .top .logo-details {
		font-size: 26px;
	}
	.content .top .media-icons a {
		height: 35px;
		width: 35px;
		font-size: 14px;
		line-height: 35px;
	}
	footer .content .link-boxes .box {
		width: calc(100%/ 3 - 10px);
	}
	footer .content .link-boxes .input-box {
		width: 60%;
	}
	.bottom-details .bottom_text span, .bottom-details .bottom_text a {
		font-size: 12px;
	}
	.whole-card {
		display: flex;
		flex-wrap: wrap;
	}
}

@media ( max-width : 520px) {
	footer::before {
		top: 145px;
	}
	footer .content .top {
		flex-direction: column;
	}
	.content .top .media-icons {
		margin-top: 16px;
	}
	footer .content .link-boxes .box {
		width: calc(100%/ 2 - 10px);
	}
	footer .content .link-boxes .input-box {
		width: 100%;
	}
	.whole-card {
		display: flex;
		flex-wrap: wrap;
	}
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<%
		    String loggedInEmail = null;
			loggedInEmail = (String) session.getAttribute("loggedInEmail");
			List<Pet> soldpets = new ArrayList<>();
			PetService petService = new PetService();
			soldpets = petService.soldPets(loggedInEmail);
			if(soldpets.size() > 0){
			for (Pet pets : soldpets) {
		%> 
<div class="whole-card">
		

		<div class="product-card">
			<div class="product-tumb">
				<img src="<%=pets.getpetimageurl()%>"
					alt="<%=pets.getRealName()%> image">
			</div>
			<div class="product-details">
				<h4>
					<a href="">Pet Name : <%=pets.getRealName()%>
					</a>
				</h4>
				<p>
					Name :
					<%=pets.getPersonalName()%><br>DOB :
					<%=pets.getDob()%>
				</p>
				<div class="product-bottom-details">
					<div class="product-price">
						Price : <i class='bx bx-rupee'></i>
						<%=pets.getPrice()%>
					</div>
				</div>
			</div>
		</div>
<%}%>	
</div>
	<%}else{ %>
          <div class="no-order">
               <div class="no-orders">
               <h1>Customer have not bought <br>anything you've sold !</h1>
    	       <img src="No-Sold-Pets.png" style="width:500px;height:350px;">
    	       <a href="PetCreate.jsp" class="order-now">Sell now</a>
    	       </div>
    	  </div>
    	  <style>
    	  body{
    	    display:flex;
            justify-content:center;
            align-items:center;
    	  }</style>
    	  <%} %></body>

</html>