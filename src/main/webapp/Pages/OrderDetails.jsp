<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="Logo.png">
<meta charset="ISO-8859-1">
<title>Order Details</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="whole-card">
	<a href="#" class="card"> 
		<div class="card-content">
		<img src="pet-image.jpg" alt="Pet Image">
			<div>
				<div class="name">Pet Name</div>
				<div class="name">Personal Name</div>
			</div>

			<div class="price">$99.99</div>
			<div>
			<button class="cancel-button">Cancel Order</button>
			</div>
		</div>
	</a>
	</div>
</body>

<style>
.whole-card{
    display: flex;
    flex-direction:column;

	align-items:center;
	text-align:center;
}
.card {
	width: 750px;
	height: 120px;
	border: 1px solid #ccc;
	border-radius: 10px;
	overflow: hidden;
	text-decoration: none;
	display: flex;
	justify-content:center;
	align-items:center;
	text-align:center;
	
}
.card img {
	width: 100px;
	height: 100px;
	border-radius: 50%;
	margin: 20px;
}


.card-content {
	display: flex;
	justify-content: center;
	margin-right: 20px;
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
	background-color:red;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	align-self: flex-end;
}
</style>
</html>