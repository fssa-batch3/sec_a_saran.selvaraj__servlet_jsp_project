<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include> 
<div >


<%
	String loggedInEmail = (String) session.getAttribute("loggedInEmail");
String loggedInusername = (String) session.getAttribute("loggedInusername");
	if(loggedInEmail == null) {
		response.sendRedirect("UserLogin.jsp");
	}
	
%>
<h1 class="h1">Welcome to Pet Mall web App "<%=loggedInusername%>"</h1>
<p class="p">Logged In user: <%=loggedInEmail%> <a href="../UserLogoutServlet">logout</a></p>
<jsp:include page="ListAllPets.jsp"></jsp:include>
</div>
</body>
<style>
.h1,.p{
margin-top:0px;
margin-left:90px;
}
</style>
</html>