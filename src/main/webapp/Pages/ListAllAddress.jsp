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
<meta charset="ISO-8859-1">
<title>Pet Mall || Change address</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="alladdresses">
		<%
		String loggedInEmail = (String) session.getAttribute("loggedInEmail");
		List<User> listaddress = new ArrayList<>();
		UserService UserService = new UserService();
		listaddress = UserService.listOfAddress(loggedInEmail);
		int count = 0;
		for (User address : listaddress) {
			count++;
		%>

		<div class="cards">
			<h1 class="addressh1">
				Address
				<%=count%></h1>
			<div class="addresses" id="address"><%=address.getAddress()%>
			</div>
			<div class="button-container">
				<button id="edit" class="button">Edit</button>
			</div>
		</div>
		<form action="../AddressUpdateServlet" class="addresscreate">
			
				<h1 class="h1">
					<label for="w3review" class="label">Add address : <%=count%></label>
				</h1>
				<textarea id="address" class="address" name="address" rows="7"
					cols="25" placeholder="Enter your address" disabled><%=address.getAddress()%></textarea>
				<br> 
				<input type="hidden" name="id" value="<%=address.getId()%>">
				<div style="diplay:flex; align-items:center;">
					<button class="button" id="edit">Edit</button>
					<button class="button" type="Submit" class="submit">Save</button>
				</div>
			
		</form>
		<%
		}
		%>

		<jsp:include page="AddressCreate.jsp"></jsp:include>
	</div>
</body>
<script>
	let editbtn = document.getElementById("edit");

	editbtn.addEventListener("click", function(event) {
		event.preventDefault()
		let address = document.getElementById("address");
		if(address.disabled){
			address.disabled = false;
		}else{
			address.disabled = true;
		}
	});
</script>
<style>
body {
	dipslay: flex;
	justify-content: center;
}

.alladdresses {
	display: grid;
	grid-template-columns: repeat(3, 1fr);
	row-gap: 50px;
	column-gap: 20px;
	margin: 50px 260PX;
}

.cards {
	margin: 0px 0px 0px 100px;
	width: 400px;
	height: 350px;
	margin: 0px 0px 0px 0px;
	border: 1px solid #ccc;
	padding: 30px 50px 30px 50px;
	text-align: center;
}

.addresses {
	font-size: 18px;
	margin-bottom: 20px;
}

.addressh1 {
	margin: 0px 0px 25px 0px;
}

.button-container {
	display: flex;
	justify-content: center;
}

button {
    height:35px;
	padding: 5px 20px;
	font-size:18px;
	margin: 8px 0 0;
	font-family: 'Montserrat', sans-serif;
	border: 2px solid #007bff;
	background: 0;
	background-color: #007bff;
	color: white;
	cursor: pointer;
	transition: all .3s;
}


button:hover {
	background: #78788c;
	border: 2px solid #78788c;
	color: #fff;
}
.delete {
	padding: 10px 20px;
	background-color: red;
	color: #fff;
	border: none;
	cursor: pointer;
}
</style>
</html>