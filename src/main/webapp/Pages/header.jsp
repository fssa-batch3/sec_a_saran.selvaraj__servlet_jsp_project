<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
     <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
    <title>User Sidebar</title>
    <!-- Include necessary CSS and JavaScript libraries -->
    <!-- You can add the links here -->
</head>
<body>

<%
    // Retrieve user_persona from localStorage and convert it to a Java variable
    String userPersona = (String) pageContext.getAttribute("user_persona");
%>

<nav class="sidebar close">
    <header>
        <div class="image-text">
            <div class="text logo-text">
                <span class="name">Pet Mall</span>
                <span class="profession">E-commerce</span>
            </div>
            <i class="bx bx-chevron-right toggle"></i>
        </div>
    </header>

    <div class="menu-bar">
        <div class="menu">
            <li class="search-box">
                <i class="bx bx-search icon"></i>
                <input type="text" placeholder="Search...">
            </li>
            
            <ul class="menu-links">
                <% if ("seller".equals(userPersona)) { %>
                    <li class="nav-link">
                        <a href="PetCreate.jsp">
                            <i class="bx bx-bar-chart-alt-2 icon"></i>
                            <span class="text nav-text">Sell Pet</span>
                        </a>
                    </li>
                    <li class="nav-link">
                        <a href="PetCreate.jsp">
                            <i class="bx bx-bell icon"></i>
                            <span class="text nav-text">Sold pets</span>
                        </a>
                    </li>
                <% } %>
                <% if (!"seller".equals(userPersona)) { %>
                
                    <li class="nav-link">
                        <a href="Home.jsp">
                            <i class='bx bx-home-alt icon'></i>
                            <span class="text nav-text">Home</span>
                        </a>
                    </li>
                    <li class="nav-link">
                        <a href="Home.jsp">
                            <i class="bx bx-bell icon"></i>
                            <span class="text nav-text">Order details</span>
                        </a>
                    </li>
                    <li class="nav-link">
                        <a href="Home.jsp">
                            <i class="bx bx-cart add icon"></i>
                            <span class="text nav-text">Cart</span>
                        </a>
                    </li>
                <% } %>
                <li class="nav-link">
                    <a href="UserProfile.jsp" id="account">
                        <i class="bx bx-user icon"></i>
                        <span class="text nav-text">Account</span>
                    </a>
                </li>
                <li class="nav-link">
                    <a href="Home.jsp">
                        <i class="bx bx-pie-chart-alt icon"></i>
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
                
                <span class="mode-text text">Dark mode</span>
                <div class="toggle-switch">
                    <span class="switch"></span>
                </div>
            </li>
        </div>
    </div>
</nav>

<script>
    // You can keep the JavaScript code as it is since it doesn't need modification for JSP.
</script>

</body>
<script>
const body = document.querySelector('body'),
section = document.querySelector('section'),
sidebar = body.querySelector('nav'),
toggle = body.querySelector(".toggle"),
searchBtn = body.querySelector(".search-box"),
modeSwitch = body.querySelector(".toggle-switch"),
modeText = body.querySelector(".mode-text");


toggle.addEventListener("click" , () =>{
sidebar.classList.toggle("close");
})

searchBtn.addEventListener("click" , () =>{
sidebar.classList.remove("close");
})

modeSwitch.addEventListener("click" , () =>{
body.classList.toggle("dark");
section.classList.toggle("dark");

if(body.classList.contains("dark")){
modeText.innerText = "Light mode";
}else{
modeText.innerText = "Dark mode";

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
    --body-color: #ebfff1;
    --sidebar-color: #b7ffaf;
    --primary-color: #14a800;
    --primary-color-light: #F6F5FF;
    --toggle-color: #14a800;
    --text-color: #14a800;
    --sec-color:#d5ffd0;
    --bottom-content:#91ff85;
    --botttom-text:black;
    --card-background1:#91ff85;
    --card-background2:#c4ffbc;
    

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
    align-items: center;

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
.mode .sun-moon i.sun{
    opacity: 0;
}
body.dark .mode .sun-moon i.sun{
    opacity: 1;
}
body.dark .mode .sun-moon i.moon{
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
.card {
  position: relative;
  width: 340px;
  height: 550px;
  background-color:var(--card-background1);
  transition: var(--tran-05); 
  border-radius: 20px;
  overflow: hidden;
  margin: 50px 0px 50px 70px;
}

.card::before {
  content: "";
  position: absolute;
  top: -50%;
  width: 100%;
  height: 100%;
  background-color: var(--card-background2);
  transition: var(--tran-05);
  transform: skewY(345deg);

}

.card:hover::before {
  top: -70%;
  transform: skewY(390deg);
}

.card::after {
 
  position: absolute;
  bottom: 0;
  left: 0;
  font-weight: 600;
  font-size: 6em;
  color: rgba(0, 0, 0, 0.1);
}

.card .imgBox {
  position: relative;
  width: 100%;
  height: 60%;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 20px;
  z-index: 1;
}
.imgBox img{
    max-width:90% ;
    max-height: 90%;
    border-radius: 15px;
}
.card .imgBox img {
    max-width: 90%;
    transition: .5s;
}

.card:hover .imgBox img {
    max-width: 90%;
}

.card .contentBox {
  position: relative;
  padding: 20px;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  z-index: 2;
}

.card .contentBox h3 {
  font-size: 18px;
  color: #1877f2;
  font-weight: 500;
  text-transform: uppercase;
  letter-spacing: 1px;
}

.card .contentBox .price {
  font-size: 24px;
  color: #1877f2;
  font-weight: 700;
  letter-spacing: 1px;
}

.card .contentBox .buy {
  position: relative;
  top: 100px;
  opacity: 0;
  padding: 10px 30px;
  color: #000000;
  text-decoration: none;
  background: #ffce00;
  border-radius: 30px;
  text-transform: uppercase;
  letter-spacing: 1px;
  transition: 0.5s;
}

.card:hover .contentBox .buy {
  top: 0;
  /* margin: 0px 0px 20px 0px; */
  margin-bottom: 35px;
  opacity: 1;
}

.mouse {
  height: 300px;
  width: auto;
}
.update,.delete{
    
    top: 0px;
    opacity: 1;
    padding: 7.5px 20px;
    color: #000000;
    text-decoration: none;
    background: #ffce00;
    border-radius: 30px;
    text-transform: uppercase;
    /* letter-spacing: 1px; */
    transition: 0.5s;
 }
.edit_delete{
    display: flex;
    justify-content: center;
    text-align:center;
    align-items: center;
    align-content: center;
    column-gap: 50px;
}
.card:hover .update,.card:hover .delete{
    top: 1;
    margin-bottom: 100px;
  opacity: 1;

}
 @media (max-width: 1500px) {
    footer .content .link-boxes{
      flex-wrap: wrap;
    }
    footer .content .link-boxes .input-box{
      width: 40%;
      margin-top: 10px;
    }
    .whole-card{
        display: flex;
        flex-wrap: wrap;
        margin: 50px 50px ;
      }
  }
  @media (max-width: 900px) {
    footer .content .link-boxes{
      flex-wrap: wrap;
    }
    footer .content .link-boxes .input-box{
      width: 40%;
      margin-top: 10px;
    }
    .whole-card{
        display: flex;
        flex-wrap: wrap;
      }
  }

  @media (max-width: 700px){
    footer{
      position: relative;
    }
    .content .top .logo-details{
      font-size: 26px;
    }
    .content .top .media-icons a{
      height: 35px;
      width: 35px;
      font-size: 14px;
      line-height: 35px;
    }
    footer .content .link-boxes .box{
      width: calc(100% / 3 - 10px);
    }
    footer .content .link-boxes .input-box{
      width: 60%;
    }
    .bottom-details .bottom_text span,
    .bottom-details .bottom_text a{
      font-size: 12px;
    }
    .whole-card{
        display: flex;
        flex-wrap: wrap;
      }
  }
  @media (max-width: 520px){
    footer::before{
      top: 145px;
    }
    footer .content .top{
      flex-direction: column;
    }
    .content .top .media-icons{
      margin-top: 16px;
    }
    footer .content .link-boxes .box{
      width: calc(100% / 2 - 10px);
    }
    footer .content .link-boxes .input-box{
      width: 100%;
    }
    .whole-card{
        display: flex;
        flex-wrap: wrap;
      }
  }
  
</style>


