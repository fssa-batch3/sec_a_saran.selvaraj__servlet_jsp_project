<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/png" href="PetMallLogo.png" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>
<title>Pet mall | Login</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
   <div style="display:flex; flex-direction:column;">
     <%String error = request.getParameter("error");
     if(error != null){
     %>	 
     <div class="errordiv">
     	<p><%=error%></p>
     </div>
     <%}%>
     
     <div class="container"> 
      <div class="wrapper">
        <div class="title"><span>Login Form</span></div>
        <form action="../UserLoginServlet" method="post" id="form">
            
          <div class="row">
            
            <input type="text" id="email" value="saran@gmail.com" name="email" required>
          </div>
          <div class="row">
            <input type="password" id="password" value="Saran@2004" name="password" required>
          </div>
          <!-- <div class="pass"><a href="#">Forgot password?</a></div> -->
          <div class="row button">
            <input type="submit" value="Login">
          </div>
          <div class="signup-link">Not a member? <a href="UserRegister.jsp">Signup now</a></div>
        </form>
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
  background: white;
  overflow: hidden;
  display: flex;
  justify-content: center;
  align-items: center;
}
::selection{
  background: rgba(26,188,156,0.3);
}
.container{
  /* max-width: 440px; */
  padding: 0 20px;
margin:50px ;
display:flex;
}
.wrapper{
  width: 400px;
  background:#eff6ff;
  border-radius: 5px;
  box-shadow: 0px 4px 10px 1px rgba(0,0,0,0.1);
}
.wrapper .title{
  height: 90px;
  background:#1877f2;
  border-radius: 5px 5px 0 0;
  color: #fff;
  font-size: 30px;
  font-weight: 600;
  display: flex;
  align-items: center;
  justify-content: center;
}
.wrapper form{
  padding: 30px 25px 25px 25px;
}
.wrapper form .row{
  height: 45px;
  margin-bottom: 15px;
  position: relative;
}
.wrapper form .row input{
  height: 100%;
  width: 100%;
  outline: none;
  padding-left:10px;
  border-radius: 5px;
  border: 1px solid lightgrey;
  font-size: 16px;
  transition: all 0.3s ease;
}
form .row input:focus{
  border-color: #1877f2;
  box-shadow: inset 0px 0px 2px 2px rgba(26,188,156,0.25);
}
form .row input::placeholder{
  color: #999;
}
.wrapper form .row i{
  position: absolute;
  width: 47px;
  height: 100%;
  color: #fff;
  font-size: 18px;
  background: #1877f2;
  border: 1px solid #1877f2;
  border-radius: 5px 0 0 5px;
  display: flex;
  align-items: center;
  justify-content: center;
}
.wrapper form .pass{
  margin: -8px 0 20px 0;
}
.wrapper form .pass a{
  color: #1877f2;
  font-size: 17px;
  text-decoration: none;
}
.wrapper form .pass a:hover{
  text-decoration: underline;
}
.wrapper form .button input{
  color: #fff;
  font-size: 20px;
  font-weight: 500;
  padding-left: 0px;
  background: #1877f2;
  border: 1px solid #1877f2;
  cursor: pointer;
}
form .button input:hover{
  background: #1877f2;
}
.wrapper form .signup-link{
  text-align: center;
  margin-top: 20px;
  font-size: 17px;
}
.wrapper form .signup-link a{
  color: #1877f2;
  text-decoration: none;
}
form .signup-link a:hover{
  text-decoration: underline;
}
.errordiv {
	background-color: #ffcccc;
	padding:5px 10px ;
	border-radius:10px;
	width:320px;
    color: #ff0000; /* Red text color for error message */
    font-size: 14px;
    margin-top: 10px; /* Add some space between the form and error message */
	margin-left: 110px;
}

</style>
</html>
    