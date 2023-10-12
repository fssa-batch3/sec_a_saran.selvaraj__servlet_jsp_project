<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
     <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
    <title>Pet mall | Sidebar</title>
    <link rel="icon" type="image/png" href="PetMallLogo.png" />
    <!-- Include necessary CSS and JavaScript libraries -->
    <!-- You can add the links here -->
</head>
<body>

<%

    String email = null;
    try{
    email = (String)session.getAttribute("loggedInEmail");
    }catch(Exception e){
    	 response.sendRedirect(request.getContextPath()+"/Pages/UserLogin.jsp");  
    }
%>

<nav class="sidebar close">
    <header>
        <div class="image-text">
        
       <a href="Home.jsp"><img style="width:50px; height:50px; margin:0px 20px 0px 5px;"src="PetMallLogo.png"></a>
        
            <div class="text logo-text">
                <span class="name">Pet Mall</span>
                <span class="profession">E-commerce</span>
            </div>
            <i class="bx bx-chevron-right toggle"></i>
        </div>
    </header>
 <%String currentURL = request.getRequestURI();
   if(!currentURL.equals("/petmall-web/index.jsp")){ 
   if (email == null ) { %>
    <div class="menu-bar">
        <div class="menu">
         <ul class="menu-links">
            <li class="search-box">
                <i class="bx bx-search icon"></i>
                <input type="text" placeholder="Search...">
           </li>
                    <li class="nav-link">
                        <a href="Home.jsp">
                            <i class='bx bx-home-alt icon'></i>
                            <span class="text nav-text">Home</span>
                        </a>
                    </li>
                    <li class="nav-link">
                    <a href="Home.jsp">
                        <i class='bx bxs-group icon'></i>
                        <span class="text nav-text">About us</span>
                    </a>
                </li>
                   </ul>
                </div>
                <div class="bottom-content">
        
                <li class="nav-link">
                    <a href="UserLogin.jsp">
                        <i class='bx bx-log-in icon'></i>
                        <span class="text nav-text">Log in</span>
                    </a>
                </li>
                <li class="mode">
                
                <span class="mode-text text"id="mode-text">Light mode</span>
                <div class="toggle-switch">
                    <span class="switch"></span>
                </div>
                </li>
              </div>
                </div>
                <% } else{ %>
                <div class="menu-bar">
                 <div class="menu">
            <li class="search-box">
                <i class="bx bx-search icon"></i>
                <input type="text" placeholder="Search...">
            </li>
            
                
                <ul>
                    <li class="nav-link">
                        <a href="Home.jsp" title="Home">
                            <i class='bx bx-home-alt icon'></i>
                            <span class="text nav-text">Home</span>
                        </a>
                    </li>
                    <%if(email.equals("ram@gmail.com")){  %>
                    <li class="nav-link">
                        <a href="PetCreate.jsp">
                           <i class="bx bx-bar-chart-alt-2 icon"></i>
                            <span class="text nav-text">Sell Pet</span>
                        </a>
                    </li>
                    <li class="nav-link">
                        <a href="SoldPets.jsp">
                            <i class='bx bx-basket icon'></i>
                            <span class="text nav-text">Sold pets</span>
                        </a>
                    </li>
                    <%}else{ %>
                    <li class="nav-link">
                        <a href="OrderDetails.jsp">
                            <i class="bx bx-bell icon"></i>
                            <span class="text nav-text">Order details</span>
                        </a>
                    </li>
                    <%} %>
                    <li class="nav-link">
                    <a href="UserProfile.jsp" id="account">
                        <i class="bx bx-user icon"></i>
                        <span class="text nav-text">Account</span>
                    </a>
                </li>
                <li class="nav-link">
                    <a href="Home.jsp">
                        <i class='bx bxs-group icon'></i>
                        <span class="text nav-text">About us</span>
                    </a>
                </li> 
            </ul>
        </div>

        <div class="bottom-content">
        
                <li class="nav-link">
                    <a href="../UserLogoutServlet">
                        <i class='bx bx-log-out icon'></i>
                        <span class="text nav-text">Log out</span>
                    </a>
                </li>
                <li class="mode">
                <div class="sun-moon">
                        <i class='bx bx-moon icon moon'></i>
                        <i class='bx bx-sun icon sun'></i>
                    </div>
                <span class="mode-text text" id="mode-text"></i>Light mode</span>
                <div class="toggle-switch">
                    <span class="switch"></span>
                </div>
                </li>
        </div>
        </div>
        <%}}else{
        if (email == null || email.isEmpty()) { %>
    <div class="menu-bar">
        <div class="menu">
            <li class="search-box">
                <i class="bx bx-search icon"></i>
                <input type="text" placeholder="Search...">
            </li>
            
            <ul class="menu-links">
                    <li class="nav-link">
                        <a href="Home.jsp">
                            <i class='bx bx-home-alt icon'></i>
                            <span class="text nav-text">Home</span>
                        </a>
                    </li>
                    <li class="nav-link">
                    <a href="Home.jsp">
                        <i class='bx bxs-group icon'></i>
                        <span class="text nav-text">About us</span>
                    </a>
                </li>
                   </ul>
                </div>
                <div class="bottom-content">
        
                <li class="nav-link">
                    <a href="UserLogin.jsp">
                        <i class='bx bx-log-in icon'></i>
                        <span class="text nav-text">Log in</span>
                    </a>
                </li>
                <li class="mode">
                <div class="sun-moon">
                        <i class='bx bx-moon icon moon'></i>
                        <i class='bx bx-sun icon sun'></i>
                    </div>
                <span class="mode-text text" id="mode-text"></i>Light mode</span>
                <div class="toggle-switch">
                    <span class="switch"></span>
                </div>
                </li>
              </div>
                </div>
                <% }else{ %>
                 <div class="menu-bar">
                 <div class="menu">
            <li class="search-box">
                <i class="bx bx-search icon"></i>
                <input type="text" placeholder="Search...">
            </li>
                
                <ul>
                    <li class="nav-link">
                        <a href="Home.jsp">
                            <i class='bx bx-home-alt icon'></i>
                            <span class="text nav-text">Home</span>
                        </a>
                    </li>
                    <%if(email.equals("ram@gmail.com")) {%>
                    <li class="nav-link">
                        <a href="PetCreate.jsp">
                            <i class="bx bx-bar-chart-alt-2 icon"></i>
                            <span class="text nav-text">Sell Pet</span>
                        </a>
                    </li>
                    <li class="nav-link">
                        <a href="SoldPets.jsp">
                            <i class='bx bx-basket icon'></i>
                            <span class="text nav-text">Sold Pets</span>
                        </a>
                    </li>
                    <%} %>
                    <li class="nav-link">
                        <a href="OrderDetails.jsp">
                            <i class="bx bx-bell icon"></i>
                            <span class="text nav-text">Order details</span>
                        </a>
                    </li>
                    <li class="nav-link">
                    <a href="UserProfile.jsp" id="account">
                        <i class="bx bx-user icon"></i>
                        <span class="text nav-text">Account</span>
                    </a>
                </li>
                <li class="nav-link">
                    <a href="Home.jsp">
                       <i class='bx bxs-group icon'></i>
                        <span class="text nav-text">About us</span>
                    </a>
                </li> 
            </ul>
        </div>

        <div class="bottom-content">
            <li class="nav-link">
                    <a href="UserLogoutServlet">
                        <i class='bx bx-log-out icon'></i>
                        <span class="text nav-text">Log out</span>
                    </a>
                </li>
                <li class="mode">
                <div class="sun-moon">
                        <i class='bx bx-moon icon moon'></i>
                        <i class='bx bx-sun icon sun'></i>
                    </div>
                <span class="mode-text text" id="mode-text"></i>Light mode</span>
                <div class="toggle-switch">
                    <span class="switch"></span>
                </div>
                </li>
        	</div>
        <%}}%>
        
    </div>
</nav>

<script>
    // You can keep the JavaScript code as it is since it doesn't need modification for JSP.
</script>

</body>
<script>
const body = document.querySelector('body'),
sidebar = body.querySelector('nav'),
toggle = body.querySelector(".toggle"),
searchBtn = body.querySelector(".search-box"),
modeSwitch = body.querySelector(".toggle-switch"),
modeText = document.getElementById("mode-text");


toggle.addEventListener("click" , () =>{
sidebar.classList.toggle("close");
})

searchBtn.addEventListener("click" , () =>{
sidebar.classList.remove("close");
})

modeSwitch.addEventListener("click" , () =>{
body.classList.toggle("dark");
if(body.classList.contains("dark")){
	modeText.innerText = "Dark mode";
	}else{
	modeText.innerText = "Light mode";
}
});

</script>
</html>
<style>
/* Google Font Import - Poppins */
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;

      
}

:root{
    /* ===== Colors ===== */
    --body-color: white;
    --sidebar-color:#eff6ff;
    --primary-color: #1877f2;
    --primary-color-light: #8cbeff;
    --toggle-color: #1877f2;
    --text-color: #1877f2;
    --sec-color:#eff6ff;
    --bottom-content:#1877f2;
    --botttom-text:black;
    --card-background1:#63a6ff;
    --card-background2:#8cbeff;
    

    /* ====== Transition ====== */
    --tran-03: all 0.2s ease;
    --tran-03: all 0.3s ease;
    --tran-04: all 0.3s ease;
    --tran-05: all 0.3s ease;
}

body{
    min-height: 100vh;
    background-color: var(--body-color);
    transition: var(--tran-05);
    display: flex;
    justify-content: center;

}

::selection{
    background-color: var(--primary-color);
    color: #fff;
}

body.dark{
    --body-color: #18191a;
    --sidebar-color: #242526;
    --primary-color: #3a3b3c;
    --primary-color-light: #3a3b3c;
    --toggle-color: #fff;
    --text-color: #ccc;
    --card-background1:#3a3b3c;
    --card-background2:#242526;
    --footer-color:#3a3b3c;
    --sec-color:#3a3b3c;
    --bottom-content:#2c2c2c;
    --botttom-text:#ccc;
}

/* ===== Sidebar ===== */
 .sidebar{
    position: fixed;
    top: 0;
    left: 0;
    height: 100%;
    width: 250px;
    padding: 10px 14px;
    background: var(--sidebar-color);
    transition: var(--tran-05);
    z-index: 100;  
}
.sidebar.close{
    width: 88px;
}
ol, ul {
    padding-left: 0rem;
}

.sidebar li{
    height: 50px;
    list-style: none;
    display: flex;
    align-items: center;
    margin-top: 10px;
}

.sidebar header .image,
.sidebar .icon{
    min-width: 60px;
    border-radius: 6px;
}

.sidebar .icon{
    min-width: 60px;
    border-radius: 6px;
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 20px;
}

.sidebar .text,
.sidebar .icon{
    color: var(--text-color);
    transition: var(--tran-03);
}

.sidebar .text{
    font-size: 17px;
    font-weight: 500;
    white-space: nowrap;
    opacity: 1;
}
.sidebar.close .text{
    opacity: 0;
}
/* =========================== */

.sidebar header{
    position: relative;
}

.sidebar header .image-text{
    display: flex;
    align-items: center;
}
.sidebar header .logo-text{
    display: flex;
    flex-direction: column;
}
header .image-text .name {
    margin-top: 2px;
    font-size: 18px;
    font-weight: 600;
}

header .image-text .profession{
    font-size: 16px;
    margin-top: -2px;
    display: block;
}

.sidebar header .image{
    display: flex;
    align-items: center;
    justify-content: center;
}

.sidebar header .image img{
    width: 40px;
    border-radius: 6px;
}

.sidebar header .toggle{
    position: absolute;
    top: 50%;
    right: -25px;
    transform: translateY(-50%) rotate(180deg);
    height: 25px;
    width: 25px;
    background-color: var(--primary-color);
    color: var(--sidebar-color);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 22px;
    cursor: pointer;
    transition: var(--tran-05);
}

body{
    color: var(--text-color);
}

.sidebar.close .toggle{
    transform: translateY(-50%) rotate(0deg);
}

.sidebar .menu{
    margin-top: 40px;
}

.sidebar li.search-box{
    border-radius: 6px;
    background-color: var(--primary-color-light);
    cursor: pointer;
    transition: var(--tran-05);
}

.sidebar li.search-box input{
    height: 100%;
    width: 100%;
    outline: none;
    border: none;
    background-color: var(--primary-color-light);
    color: var(--text-color);
    border-radius: 6px;
    font-size: 17px;
    font-weight: 500;
    transition: var(--tran-05);
}
.sidebar li a{
    list-style: none;
    height: 100%;
    background-color: transparent;
    display: flex;
    align-items: center;

    width: 100%;
    border-radius: 6px;
    text-decoration: none;
    transition: var(--tran-03);
}

.sidebar li a:hover{
    background-color: var(--primary-color);
}
.sidebar li a:hover .icon,
.sidebar li a:hover .text{
    color: var(--sidebar-color);
}
body.dark .sidebar li a:hover .icon,
body.dark .sidebar li a:hover .text{
    color: var(--text-color);
}

.sidebar .menu-bar{
    height: calc(100% - 55px);
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    /* overflow-y: scroll; */
}
.menu-bar::-webkit-scrollbar{
    display: none;
}
.sidebar .menu-bar .mode{
    border-radius: 6px;
    background-color: var(--primary-color-light);
    position: relative;
    transition: var(--tran-05);
}

.menu-bar .mode .sun-moon{
    height: 50px;
    width: 60px;
}
.mode .sun-moon i{
    position: absolute;
}
.mode .sun-moon i.moon{
    opacity: 0;
}
body.dark .mode .sun-moon i.moon{
    opacity: 1;
}
body.dark .mode .sun-moon i.sun{
    opacity: 0;
}


.menu-bar .bottom-content .toggle-switch{
    position: absolute;
    right: 0;
    height: 100%;
    min-width: 60px;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 6px;
    cursor: pointer;
}
.toggle-switch .switch{
    position: relative;
    height: 22px;
    width: 40px;
    border-radius: 25px;
    background-color: var(--toggle-color);
    transition: var(--tran-05);
}
.no_item{
  position: relative;
  margin-left: 340px;
  font-size: 80px;
  transition: var(--tran-05);
  color:var(--text-color);
}
.switch::before{
    content: '';
    position: absolute;
    height: 15px;
    width: 15px;
    border-radius: 50%;
    top: 50%;
    left: 5px;
    transform: translateY(-50%);
    background-color: var(--sidebar-color);
    transition: var(--tran-04);
}

body.dark .switch::before{
    left: 20px;
}

 
.home{
    position: relative;
    top: 0px;
    left: 0px;
    height: 100vh;
    width: calc(100% - 250px);
    background-color: var(--body-color);
    transition: var(--tran-05);
}

.home .text{
    font-size: 30px;
    font-weight: 500;
    color: var(--text-color);
    padding: 12px 60px;
    text-align: center;
}

.sidebar.close ~ .home{
    left: 78px;
    height: 100vh;
    width: calc(100% - 78px);
}
body.dark .home .text{
    color: var(--text-color);
}


.whole-card{
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    margin-left: 60px;

}

    
</style>


