<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Pet mall | Profile</title>
<link rel="icon" type="image/png" href="PetMallLogo.png" />
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="profileaddress">
		<form action="../UserUpdateServlet" class="form">
			<h2>User Profile</h2>
			<div class="form-group">
				<label for="email">First Name:</label>
				<div class="relative">
					<input class="form-control" id="fname" name="fname"
						value="${sessionScope.loggedInusername1}" type="text" autofocus=""
						title="Username should only contain letters." required disabled>
				</div>
			</div>
			<div class="form-group">
				<label for="email">Last Name:</label>
				<div class="relative">
					<input class="form-control" id="lname" name="lname"
						value="${sessionScope.loggedInusername2}" type="text" required disabled>
				</div>
			</div>
			<div class="form-group">
				<label for="email">Email address:</label>
				<div class="relative">
					<input class="form-control" name="email" id="email"
						value="${sessionScope.loggedInEmail}" type="email" disabled>
				</div>
			</div>
			<div class="form-group">
				<label for="email">Date of Birth:</label>
				<div class="relative">
					<input class="form-control" id="dob" name="dob"
						value="${sessionScope.loggedIndateOfBirth}" type="text" required disabled>
				</div>
			</div>
			<div class="form-group">

				<label for="email">Phone number:</label>
				<div class="relative">
					<input class="form-control" id="phone" name="phone"
						value="${sessionScope.loggedInmobileNumber}" type="text" required disabled>
				</div>
			</div>
			<div class="form-group">
				<label for="email">Gender:</label>
				<div class="relative">
					<input class="form-control" id="gender" name="gender"
						value="${sessionScope.loggedIngender}" type="text" required disabled>
				</div>
			</div>
			<div class="tright">
				<button class="button" id="update">Update</button> 
				<button class="button" type="Submit">Save</button>
			</div>
		</form>
		
	</div>
	<div class="alladdress">
		<div class="card">
			<h1 class="addressh1">Address 1</h1>
			<div class="address">Lorem ipsum dolor sit amet, consectetur
				adipiscing elit, sed do eiusmod tempor incididunt ut labore et
				dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
				exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat
			</div>
			<div class="button-container">
				<button class="button" onclick="change()">Change address</button>
				<button class="button" onclick="edit()">Edit</button>
			</div>
		</div>
	</div>
</body>
<script>

let update = document.getElementById("update");

update.addEventListener("click",function (event){
    event.preventDefault()
    let inputs = document.getElementById("fname");
    if (inputs.disabled) {
        document.getElementById("fname").disabled = false;
        document.getElementById("lname").disabled = false;
        document.getElementById("phone").disabled = false;
        document.getElementById("dob").disabled = false;
        document.getElementById("gender").disabled = false;

    }else{
    	document.getElementById("fname").disabled = true;
        document.getElementById("lname").disabled = true;
        document.getElementById("phone").disabled = true;
        document.getElementById("dob").disabled = true;
        document.getElementById("gender").disabled = true;
    }
});

function change() {
	window.location.href="ListAllAddress.jsp";
}

</script>
<style>
body {
	/* fallback for old browsers */
	display: flex;
	flex-direction: row;
	/*justify-content: center;*/
	align-items: center;
	font-family: 'Montserrat', sans-serif;
}

.profileaddress{
margin:0px 0px 0px 120px ;
}

.form {
	max-width: calc(100vw - 40px);
	width: 500px;
	height: auto;
	background: var(--sidebar-color);
	border-radius: 8px;
	box-shadow: 0 0 40px -10px #fff;
	margin: 3% auto;
	padding: 25px 50px;
	box-sizing: border-box;
	position: relative;
	border-bottom: 5px solid #ccc;
}

form:before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	height: 8px;
	background: #c4e17f;
	border-radius: 5px 5px 0 0;
	background: rgba(196, 225, 127, 1);
	background: -moz-linear-gradient(left, rgba(196, 225, 127, 1) 0%,
		rgba(196, 225, 127, 1) 20%, rgba(247, 253, 202, 1) 20%,
		rgba(247, 253, 202, 1) 40%, rgba(254, 207, 113, 1) 40%,
		rgba(254, 207, 113, 1) 60%, rgba(240, 119, 108, 1) 60%,
		rgba(240, 119, 108, 1) 80%, rgba(219, 157, 190, 1) 80%,
		rgba(219, 157, 190, 1) 100%);
	background: -webkit-gradient(left top, right top, color-stop(0%, rgba(196, 225, 127,
		1)), color-stop(20%, rgba(196, 225, 127, 1)),
		color-stop(20%, rgba(247, 253, 202, 1)),
		color-stop(40%, rgba(247, 253, 202, 1)),
		color-stop(40%, rgba(254, 207, 113, 1)),
		color-stop(60%, rgba(254, 207, 113, 1)),
		color-stop(60%, rgba(240, 119, 108, 1)),
		color-stop(80%, rgba(240, 119, 108, 1)),
		color-stop(80%, rgba(219, 157, 190, 1)),
		color-stop(100%, rgba(219, 157, 190, 1)));
	background: -webkit-linear-gradient(left, rgba(196, 225, 127, 1) 0%,
		rgba(196, 225, 127, 1) 20%, rgba(247, 253, 202, 1) 20%,
		rgba(247, 253, 202, 1) 40%, rgba(254, 207, 113, 1) 40%,
		rgba(254, 207, 113, 1) 60%, rgba(240, 119, 108, 1) 60%,
		rgba(240, 119, 108, 1) 80%, rgba(219, 157, 190, 1) 80%,
		rgba(219, 157, 190, 1) 100%);
	background: -o-linear-gradient(left, rgba(196, 225, 127, 1) 0%,
		rgba(196, 225, 127, 1) 20%, rgba(247, 253, 202, 1) 20%,
		rgba(247, 253, 202, 1) 40%, rgba(254, 207, 113, 1) 40%,
		rgba(254, 207, 113, 1) 60%, rgba(240, 119, 108, 1) 60%,
		rgba(240, 119, 108, 1) 80%, rgba(219, 157, 190, 1) 80%,
		rgba(219, 157, 190, 1) 100%);
	background: -ms-linear-gradient(left, rgba(196, 225, 127, 1) 0%,
		rgba(196, 225, 127, 1) 20%, rgba(247, 253, 202, 1) 20%,
		rgba(247, 253, 202, 1) 40%, rgba(254, 207, 113, 1) 40%,
		rgba(254, 207, 113, 1) 60%, rgba(240, 119, 108, 1) 60%,
		rgba(240, 119, 108, 1) 80%, rgba(219, 157, 190, 1) 80%,
		rgba(219, 157, 190, 1) 100%);
	background: linear-gradient(to right, rgba(196, 225, 127, 1) 0%,
		rgba(196, 225, 127, 1) 20%, rgba(247, 253, 202, 1) 20%,
		rgba(247, 253, 202, 1) 40%, rgba(254, 207, 113, 1) 40%,
		rgba(254, 207, 113, 1) 60%, rgba(240, 119, 108, 1) 60%,
		rgba(240, 119, 108, 1) 80%, rgba(219, 157, 190, 1) 80%,
		rgba(219, 157, 190, 1) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#c4e17f',
		endColorstr='#db9dbe', GradientType=1);
}

.form h2 {
	margin: 18px 0;
	padding-bottom: 10px;
	width: 210px;
	color: #1e439b;
	font-size: 22px;
	border-bottom: 3px solid #ff5501;
	font-weight: 600;
	margin-bottom: 30px;
}

.form input {
	width: 100%;
	padding: 15px 20px;
	box-sizing: border-box;
	background: white;
	outline: none;
	resize: none;
	border: 0;
	font-family: 'Montserrat', sans-serif;
	border: 2px solid #bebed2;
	transition: all .3s;
}

.form p:before {
	content: attr(type);
	display: block;
	margin: 10px 0 0;
	font-size: 13px;
	color: #5a5a5a;
	float: left;
	width: 40%;
	transition: all .3s;
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

.tright {
    display: flex;
    justify-content: space-around;
	text-align: center;
}

.ui-menu {
	max-height: 150px;
	overflow: auto;
}

.ui-menu .ui-menu-item {
	padding: 5px;
	font-size: 14px;
}

.relative {
	position: relative;
}

.relative i.fa:before {
	color: #444;
	padding: 10px;
	position: absolute;
	left: -3px;
	text-align: center;
}

.relative i.fa {
	position: absolute;
	top: 0;
	right: 0;
	width: 40px;
	text-align: center;
	border-radius: 0 4px 4px 0;
	width: 0;
	height: 0;
	z-index: 99;
	border-left: 20px solid transparent;
	border-right: 30px solid #ccc;
	border-bottom: 34px solid #ccc;
	transition: all 0.15s ease-in-out;
}

.form-control:focus {
	border-color: #1e439b;
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgb(30, 102, 195);
}

.relative input:focus+i.fa {
	border-left: 20px solid transparent;
	border-right: 30px solid #1e439b;
	border-bottom: 34px solid #1e439b;
}

.relative input:focus+i.fa:before {
	color: #fff;
}

.input-group .form-control:not(:first-child):not(:last-child),
	.input-group-addon:not(:first-child):not(:last-child), .input-group-btn:not(:first-child):not(:last-child)
	{
	border-radius: 0 4px 4px 0;
}

.form-control[disabled], .form-control[readonly], fieldset[disabled] .form-control
	{
	background-color: #fff;
}

/* --- Thanks Message Popup --- */
.thanks {
	max-width: calc(100vw - 40px);
	width: 200px;
	height: auto;
	background-color: #444;
	border-radius: 8px;
	box-shadow: 0 0 40px -10px #000;
	padding: 20px;
	box-sizing: border-box;
	position: relative;
	position: absolute;
	top: 20px;
	right: 20px;
	transition: all .3s;
}

.thanks h4, .thanks p {
	color: #fff;
	text-align: center;
}
.alladdress{
   margin:0px 0px 0px 100px;
}
        .card {
        margin:0px 0px 0px 100px ;
            width: 500px;
            height: 350px;
            margin: 0px 0px 0px 0px;
            border: 1px solid #ccc;
            padding: 30px 50px 30px 50px;
            text-align: center;
        }

        .address {
            font-size: 18px;
            margin-bottom: 20px;
        }
        .addressh1{
            margin:0px 0px 25px 0px;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
        }


           .delete {
            padding: 10px 20px;
            background-color:red;
            color: #fff;
            border: none;
            cursor: pointer;
        }

    

        
    
/* --- Media Queries --- */
@media only screen and (max-width: 600px) {
	p:before {
		content: attr(type);
		width: 100%
	}
	input {
		width: 100%;
	}
}
</style>
</html>
