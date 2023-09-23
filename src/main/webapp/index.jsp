<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<jsp:include page="Pages/header.jsp"></jsp:include>
<body>

<div >
<%
	String loggedInEmail = (String) session.getAttribute("loggedInEmail");
    String loggedInusername = (String) session.getAttribute("loggedInusername1");
    
	if(loggedInEmail == null) {
		response.sendRedirect("UserLogin.jsp");
	}
%>
<div>
<h1 class="h1">Welcome to Pet Mall web App "<%= loggedInusername%>"</h1>
<p class="p">Logged In user: ${loggedInEmail}</p>
<jsp:include page="Pages/ListAllPets.jsp"></jsp:include> 

</div>

            <footer>
              <div class="content">	
                <div class="top">
                  <div class="logo-details">
                    <i class="fab fa-slack"></i>
                    <span class="logo_name">Pet Mall</span>
                  </div>
                  <div class="media-icons">
                    <a href="https://www.facebook.com/"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="https://www.instagram.com/accounts/login/?next=https%3A%2F%2Fwww.instagram.com%2Freels%2FCrQVENlONIu%2F%3F__coig_login%3D1"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-linkedin-in"></i></a>
                    <a href="https://www.linkedin.com/feed/?trk=sem-ga_campid.14650114788_asid.150089839322_crid.656569072783_kw.www%20linkedin_d.c_tid.kwd-2246447582_n.g_mt.e_geo.9061971"><i class="fab fa-youtube"></i></a>
                  </div>
                </div>
                <div class="link-boxes">
                  <ul class="box">
                    <li class="link_name">Company</li>
                    <li><a src="./home-page-2.html">Home</a></li>
                    <li><a href="#">Contact us</a></li>
                    <li><a href="#">About us</a></li>
                    <li><a href="#">Get started</a></li>
                  </ul>
                  <ul class="box">
                    <li class="link_name">Services</li>
                    <li><a href="#">App design</a></li>
                    <li><a href="#">Web design</a></li>
                    <li><a href="#">Logo design</a></li>
                    <li><a href="#">Banner design</a></li>
                  </ul>
                  <ul class="box">
                    <li class="link_name">Account</li>
                    <li><a href="#">Profile</a></li>
                    <li><a href="#">My account</a></li>
                    <li><a href="#">Prefrences</a></li>
                    <li><a href="#">Purchase</a></li>
                  </ul>
                  <ul class="box">
                    <li class="link_name">Courses</li>
                    <li><a href="#">HTML & CSS</a></li>
                    <li><a href="#">JavaScript</a></li>
                    <li><a href="#">Photography</a></li>
                    <li><a href="#">Photoshop</a></li>
                  </ul>
                  
                </div>
              </div>
              <div class="bottom-details">
                <div class="bottom_text">
                  <span class="copyright_text">Copyright © 2021 <a href="#">CodingLab.</a>All rights reserved</span>
                  <span class="policy_terms">
                    <a href="#">Privacy policy</a>
                    <a href="#">Terms & condition</a>
                  </span>
                </div>
              </div>
            </footer>
        </div>
</body>
<style>
.h1,.p{

margin-top:0px;
margin-left:110px;
}
</style>
</html>