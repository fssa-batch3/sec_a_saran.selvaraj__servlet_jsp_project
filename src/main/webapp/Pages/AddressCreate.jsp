<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pet Mall || Add Address</title>
</head>
<body>
<form action="../AddressAddServlet"method="post" class="addresscreate">
 <div>
  <h1 class="h1"><label for="w3review" class="label">Add address : </label></h1>
  <textarea id="w3review"class="address" name="address" rows="7" cols="25" placeholder="Enter your address"></textarea>
  <br>
  <input type="submit" class="submit"value="Submit">
  </div>
</form>
</body>
<style>

/* Apply basic styling to the form */
.addresscreate {
  min-width: 300px;
  max-width:500px;
  max-height:350px;
  margin: 0 auto;
  padding: 20px;
  border: 1px solid #ccc;
  background-color: #f9f9f9;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  border-radius: 5px;
}

/* Style the label and textarea */
.label {
  font-weight: bold;
}

.address {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
  resize: horizontal; /* Allow vertical resizing of the textarea */
}

/* Style the submit button */
.submit{
  width:90%;
  margin:5%;
  background-color: #007bff;
  color: white;
  border: none;
  padding: 10px 20px;
  cursor: pointer;
  border-radius: 5px;
}

/* Add some spacing between elements */
.h1 {
  margin: 10px 0;
}

/* Add media query for smaller screens */
@media (max-width: 768px) {
  .addresscreate {
    max-width: 90%;
  }
}
</style>
</html>