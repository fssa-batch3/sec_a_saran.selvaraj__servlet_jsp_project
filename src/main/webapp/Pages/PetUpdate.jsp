<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.fssa.petmall.services.PetService"%>
<%@ page import="com.fssa.petmall.model.*"%>
<%@page import="java.util.List"%>
<%@page import="javax.swing.JOptionPane"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/png" href="PetMallLogo.png" />
<title>Pet mall | Pet Update</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<%
	String email = (String) session.getAttribute("loggedInEmail");
	String id = request.getParameter("id");
	int uniqueid = Integer.parseInt(id);
	List<Pet> listpets = new ArrayList<>();
	PetService petService = new PetService();
	listpets = petService.viewPet(uniqueid);
	//JOptionPane.showMessageDialog(null, "This is an alert message.", "Alert", JOptionPane.WARNING_MESSAGE);
	%>

	<div class="container">
		<header>Update your Pet's Detail</header>

		<form action="../PetUpdateServlet?id=<%=id%>" id="seller_form" method="get">
			<div class="form first">
				<div class="details personal">
					<span class="title">Personal Details</span>

					<div class="fields">

                        <div class="input-field">
							<label>Pet image</label> <input type="url" name="image"
								value="<%=listpets.get(0).getpetimageurl()%>"
								id="pet_img">
						</div>
						<div class="input-field">
							<label>Real Name : </label> <input type="text" name="name"
								value="<%=listpets.get(0).getRealName()%>" id="pet_name_alt">
						</div>

						<div class="input-field">
							<label>Personal Name(Nick name)</label> <input type="text"
								name="personalname"
								value="<%=listpets.get(0).getPersonalName()%>"
								id="pet_personal_name">
						</div>

						<div class="input-field">
							<label>DOB of the pet(YYYY-MM-DD)</label> <input type="text"
								name="dob" value="<%=listpets.get(0).getDob()%>" id="dob_pet">
						</div>

						<div class="input-field">
							<label>Special talent</label> <input type="text" name="talent"
								value="<%=listpets.get(0).getSpecialTalent()%>"
								id="special_talent">
						</div>

						<div class="input-field">
							<label>Behavior</label> <input type="text" name="behavior"
								value="<%=listpets.get(0).getBehavior()%>" id="behavior">
						</div>
						
					</div>
				</div>

				<div class="details ID">

					<div class="fields">

<div class="input-field">
							<label>Pets price(in numbers)</label> <input type="text"
								name="price" value="<%=listpets.get(0).getPrice()%>"
								id="pet_price">
						</div>

						<div class="input-field">
							<label>Mobile number</label> <input type="text" name="phone"
								value="<%=listpets.get(0).getMobileNumber()%>"
								id="seller_contact">
						</div>
						<div class="input-field">
							<label>Vaccination certificate</label> <input type="text"
								name="vaccination"
								value="<%=listpets.get(0).getVaccinationCertificate()%>"
								id="vaccination">
						</div>
						<input type="number" name="id" value="<%=listpets.get(0).getuniqueID()%>" style="display:none;">
						
					</div>
					<div class="buttons">
					    <a href="../PetDeleteServlet?id=<%=listpets.get(0).getuniqueID()%>"class="delete">
							<span class="btnText">Delete</span> 
						</a>
						<button class="nextBtns" type="submit">
							<span class="btnText">Update</span> 
						</button>
					</div>
				</div>
			</div>
		</form>
	</div>
	
</body>
<style>
/* ===== Google Font Import - Poppins ===== */
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

body {
	min-height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
	background: var(--body-color);
}

.container {
	position: relative;
	max-width: 900px;
	width: 100%;
	border-radius: 6px;
	padding: 30px;
	margin: 0 15px;
	background-color: var(--sec-color);
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
}

.container header {
	position: relative;
	font-size: 20px;
	font-weight: 600;
	color: #333;
}

.container header::before {
	content: "";
	position: absolute;
	left: 0;
	bottom: -2px;
	height: 3px;
	width: 27px;
	border-radius: 8px;
	background-color: var(--sec-color);
}

.container form {
	position: relative;
	margin-top: 16px;
	min-height: 400px;
	background-color: var(--sec-color);
	overflow: hidden;
}

.container form .form {
	position: absolute;
	background-color: var(--sec-color);
	transition: 0.3s ease;
}

.container form .form.second {
	opacity: 0;
	pointer-events: none;
	transform: translateX(100%);
}

form.secActive .form.second {
	opacity: 1;
	pointer-events: auto;
	transform: translateX(0);
}

form.secActive .form.first {
	opacity: 0;
	pointer-events: none;
	transform: translateX(-100%);
}

.container form .title {
	display: block;
	margin-bottom: 8px;
	font-size: 16px;
	font-weight: 500;
	margin: 6px 0;
	color: #333;
}

.container form .fields {
	display: flex;
	align-items: center;
	justify-content: space-between;
	flex-wrap: wrap;
}

form .fields .input-field {
	display: flex;
	width: calc(100%/ 3 - 15px);
	flex-direction: column;
	margin: 4px 0;
}

.input-field label {
	font-size: 12px;
	font-weight: 500;
	color: #2e2e2e;
}

.input-field input, select {
	outline: none;
	font-size: 14px;
	font-weight: 400;
	color: #333;
	border-radius: 5px;
	border: 1px solid #aaa;
	padding: 0 15px;
	height: 42px;
	margin: 8px 0;
}

.input-field input :focus, .input-field select:focus {
	box-shadow: 0 3px 6px rgba(0, 0, 0, 0.13);
}

.input-field select, .input-field input[type="date"] {
	color: #707070;
}

.input-field input[type="date"]:valid {
	color: #333;
}

.nextBtns {
	display: flex;
	align-items: center;
	justify-content: center;
	height: 45px;
	max-width: 250px;
	width: 100%;
	border: none;
	outline: none;
	color: #fff;
	border-radius: 5px;
	margin: 25px 0;
	background-color: var(--primary-color);
	transition: all 0.3s linear;
	cursor: pointer;
}
.delete{
  width : 120px;
  height: 45px;
  text-decoration: none;
  outline: none;
  border:none;
  padding: 8px 0px;
  border-radius: 6px;
  font-size: 18px;
  font-weight: 500;
  color: #fff;
  background-color: red;
  cursor: pointer;
  transition: all 0.3s ease;
text-align: center;
}

.container form .btnText {
	font-size: 20px;
	font-weight: 400;
}

form button:hover {
	background-color: #265df2;
}

form button i, form .backBtn i {
	margin: 0 6px;
}

form .backBtn i {
	transform: rotate(180deg);
}

form .buttons {
	display: flex;
	align-items: center;
	justify-content: center;
	column-gap: 100px;
	font-size: 50px;
}

form .buttons button, .backBtn {
	margin-right: 14px;
}

@media ( max-width : 750px) {
	.container form {
		overflow-y: scroll;
	}
	.container form::-webkit-scrollbar {
		display: none;
	}
	form .fields .input-field {
		width: calc(100%/ 2 - 15px);
	}
}

@media ( max-width : 550px) {
	form .fields .input-field {
		width: 100%;
	}
}
.
</style>
</html>