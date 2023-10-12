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
<title>Pet Mall || Change address</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="alladdress">
<%
String loggedInEmail = (String) session.getAttribute("loggedInEmail");
List<User> listaddress = new ArrayList<>();
UserService UserService = new UserService();
listaddress = UserService.listOfAddress(loggedInEmail);
int count = 0;
for (User address : listaddress) {
	count++;
%>

		<div class="card">
			<h1 class="addressh1">Address <%=count%></h1>
			<div class="address"><%=address.getAddress()%>
			</div>
			<div class="button-container">
				<button class="button">Edit</button>
			</div>
		</div>
		<%} %>
	</div>
</body>
<style>
body{
dipslay:flex;
justify-content:center;

}
.alladdress{
   display: grid;
	grid-template-columns: repeat(3, 1fr);
	row-gap: 50px;
	column-gap: 20px;
	margin:50px 260PX;
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

</style>
</html>