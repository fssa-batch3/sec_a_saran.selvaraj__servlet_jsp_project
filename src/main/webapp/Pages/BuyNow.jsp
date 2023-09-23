<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="Logo.png">
<meta charset="ISO-8859-1">
<title>Buy Now</title>
</head>
<body>
 
  <div class="modal">
    <form action="../BuyNowServlet" class="form" id="form" method="post">
      <div class="payment--options"> 
      </div>
      <div class="credit-card-info--form">
        <div class="input_container">
          <label for="password_field" class="input_label">Card holder full name</label>
          <input id="card_holder_name" class="input_field"  type="text" name="input-name" title="Inpit title" value="saran s">
        </div>
        <div class="input_container">
          <label for="password_field" class="input_label">Card Number</label>
          <input id="card_Number" class="input_field" type="text" name="input-name" pattern="[0-9]{4}[0-9]{4}[0-9]{4}[0-9]{4}" title="Inpit title" value="9876987698769876">
        </div>
        <div class="input_container">
          <label for="password_field"  class="input_label">Expiry Date / CVV</label>
          <div class="split">
          <input id="expiry_Date" class="input_field" type="month" name="input-name" title="Expiry Date" value="01/23">
          <input id="cvv" class="input_field" type="password" name="cvv" title="CVV" value="375">
        </div>
        </div>
        <%  String id = request.getParameter("id");
        int uniqueid = Integer.parseInt(id); %>
        <input value="<%=id%>" name="id" style="display:none;">
      </div>
        <button class="purchase--btn"id="checkout">Checkout</button>
        <button class="purchase--btn" id="buy_with_emi">Buy with EMI</button>
    </form>
    </div>
  </body>
  <script>
  let card_holder_name = document.getElementById("card_holder_name").value;
  let card_number = document.getElementById("card_Number").value;
  let expiry_Date =document.getElementById("expiry_Date").value;
  let cvv = document.getElementById("cvv").value;

  if(check == null || check == undefined ){
  localStorage.setItem("bought_pets",JSON.stringify(thispet))

  if (card_holder_name === "") {
    alert("Your name should not null")
  }else if(card_number === "" ){
    alert("card number should not be null")
  }else if(card_number < 16 ){
    alert("card number should not be less than 16")
  }else if(expiry_Date === ""){
    alert("Expiry date should not be null")
  }else if(cvv === ""){
    alert("Cvv should not be null")
  }else if(cvv < 3){
    alert("Cvv should not be less than or greater than 3")
  }else{
    alert("Successfully bought the pet!")
    window.location.href="OrderDetails.jsp"
  }
  </script>
  <style>
  body {
  margin-top: 200px;
  display: flex;
  justify-content: center;
  align-items: center;
  align-content: center;
  background-image: url(../images/background_image.png);
}
.modal {
  width: fit-content;
  height: fit-content;
  background: #FFFFFF;
  box-shadow: 0px 0px 40px #14a800;
  border:solid 0.1px #14a800;
  border-radius: 26px;
  max-width: 450px;
  padding: 51px;
}
.modal:hover{
  box-shadow: 0px 0px 40px #14a800;
  padding: 52px;
}

.form {
  display: flex;
  flex-direction: column;
  gap: 20px;

}

.password_field{
  font-size:0px;
}

.credit-card-info--form {
  display: flex;
  flex-direction: column;
  gap: 15px;
}

.input_container {
  width: 100%;
  height: fit-content;
  display: flex;
  flex-direction: column;
  gap: 5px;
}

.split {
  display: flex;
  gap: 15px;
}

.split input {
  width: 100%;
}

.input_label {
  color: #8B8E98;
  font-weight: 600;
}

.input_field {
  width: auto;
  height: 40px;
  padding: 0 0 0 16px;
  border-radius: 9px;
  outline: none;
  background-color: #F2F2F2;
  border: 1px solid #e5e5e500;
  transition: all 0.3s cubic-bezier(0.15, 0.83, 0.66, 1);
}

.input_field:focus {
  border: 1px solid transparent;
  box-shadow: 0px 0px 0px 2px #242424;
  background-color: transparent;
}

.purchase--btn {
  height: 55px;
  border-radius: 11px;
  border: 0;
  outline: none;
  color: #ffffff;
  background: linear-gradient(180deg, #363636 0%, #1B1B1B 50%, #000000 100%);
  box-shadow: 0px 0px 0px 0px #FFFFFF, 0px 0px 0px 0px #000000;
  transition: all 0.3s cubic-bezier(0.15, 0.83, 0.66, 1);
}

.purchase--btn:hover {
  box-shadow: 0px 0px 0px 2px #FFFFFF, 0px 0px 0px 4px #0000003a;
}


.input_field::-webkit-outer-spin-button,
.input_field::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}

  
  </style>
</html>