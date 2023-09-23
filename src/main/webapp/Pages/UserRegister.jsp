<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />

<link rel='stylesheet'
	href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>
<title>Register</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	 <div class="Whole-div">
    <div class="title">Registration</div>
    <div class="content">
      <form action="../UserRegisterServlet" id="login_form">
        <div class="admin-details">
          <div class="input-box">
            <span class="details">Full Name</span>
            <input type="text" value="Ram"  name="fname"  required >
          </div>
          <div class="input-box">
            <span class="details">Last name</span>
            <input type="text" value="Ramalingam"  name="lname" required>
          </div>
          
          <div class="input-box">
            <span class="details">Gender</span>
            <input type="text" value="Male"name="gender"  required>
          </div>
          
          <div class="input-box">
            <span class="details">Date of birth</span>
            <input type="text" value="2004-12-21"  name="dob"  required>
          </div>
          <div class="input-box">
            <span class="details">Email</span>
            <input type="email" value="Ram@gmail.com"name="email"  title="Email should contain @ and .com to proceed"   required>
          </div>
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text" value="9876543210" name="phone" required>
          </div>
          <div class="input-box">
            <span class="details">Password</span>
            
            <input type="password" class= "icon" value="Ram@2004"name="password"  title="Password should contain atleast 8 characters and atleast One Capital letter, One Small letter, One Number."   required>
            
          
          </div>
          <div class="input-box">
            <span class="details">Confirm Password</span>
            <input type="password" value="Ram@2004" required>
          </div>
        </div>
        
        </div>
        <div class="select_submit">
        
          
          <button id="submit" class="submit">SUBMIT</button>
        </div>
        <div class="signup-link" style="margin-left:200px;">Do you have an Account? <a href="UserLogin.jsp">Login</a></div>
      </form>
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
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 10px;
  background-image:url(../images/background_image.png);
  background-size: 100% 100%;
}
.Whole-div{
  max-width: 700px;
  width: 100%;
  background-color: #ebfff1;
  padding: 25px 30px;
  border-radius: 5px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
}
.Whole-div .title{
  font-size: 25px;
  font-weight: 500;
  position: relative;
}
.Whole-div .title::before{
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 30px;
  border-radius: 5px;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}
.content form .admin-details{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 20px 0 12px 0;
}
form .admin-details .input-box{
  margin-bottom: 15px;
  width: calc(100% / 2 - 20px);
}
form .input-box span.details{
  display:inline-block;
  font-weight: 500;
  margin-bottom: 5px;
}
.icon{
  display: inline-block;
  right:20px;
  bottom:20px;
}
.admin-details .input-box input{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}

.admin-details .input-box input:valid{
  border-color: #00ff2a;
}

.admin-details .input-box input:invalid{
  border-color: #ff0000;
}
 form .gender-details {
  font-size: 20px;
  font-weight: 500;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  text-align: center;
  padding: 20px;
 }
 form .category{
   display: flex;
   width: 80%;
   margin: 14px 0 ;
   justify-content: space-between;
 }
 form .category label{
   display: flex;
   align-items: center;
   cursor: pointer;
 }
 form .category label .dot{
  height: 18px;
  width: 18px;
  border-radius: 50%;
  margin-right: 10px;
  background: #d9d9d9;
  border: 5px solid transparent;
  transition: all 0.3s ease;
}
 #dot-1:checked ~ .category label .one,
 #dot-2:checked ~ .category label .two,
 #dot-3:checked ~ .category label .three{
   background: #9b59b6;
   border-color: #d9d9d9;
 }
 form input[type="radio"]{
   display: none;
 }
 form .button{
   height: 45px;
   margin: 35px 0
 }
 form .button input{
   height: 100%;
   width: 100%;
   border-radius: 5px;
   border: none;
   color: #fff;
   font-size: 18px;
   font-weight: 500;
   letter-spacing: 1px;
   cursor: pointer;
   transition: all 0.3s ease;
   background: linear-gradient(135deg, #71b7e6, #9b59b6);
 }
 form .button input:hover{
  /* transform: scale(0.99); */
  background: linear-gradient(-135deg, #71b7e6, #9b59b6);
  }
  .select_submit{
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction:column;
    gap: 30px;
  }
  #slt{
    width:500px;
    height: 35px;
    background: linear-gradient(-135deg, #9b59b6, #71b7e6);
    border: none;
    color:white;
    border-radius: 5px;

}
#user,#admin,#seller{
  background: black;
}
#gender{
  
  width:500px;
  height: 35px;
  background: linear-gradient(-135deg, #9b59b6, #71b7e6);
  border: none;
  color:white;
  border-radius: 5px;

}
#Male,#Female,#Others{
background: black;
}
.submit{
  width:500px;
    height: 35px;
    background: linear-gradient(-135deg, #9b59b6, #71b7e6);
    border: none;
    border-radius: 20px;
    color:white;
}
 @media(max-width: 584px){
 .Whole-div{
  max-width: 100%;
}
form .admin-details .input-box{
    margin-bottom: 15px;
    width: 100%;
  }
  form .category{
    width: 100%;
  }
  .content form .admin-details{
    max-height: 300px;
    overflow-y: scroll;
  }
  .admin-details::-webkit-scrollbar{
    width: 5px;
  }
  }
  @media(max-width: 459px){
  .Whole-div .content .category{
    flex-direction: column;
  }
}


</style>
</html>