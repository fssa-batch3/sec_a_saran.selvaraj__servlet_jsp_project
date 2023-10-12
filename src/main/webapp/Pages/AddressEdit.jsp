<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include> 
<form action="/action_page.php">
 <div>
  <h1><label for="w3review">Add address:</label></h1>
  <textarea id="w3review"class="address" name="w3review" rows="7" cols="10">At w3schools.com you will learn how to make a website. They offer free tutorials in all web development technologies.</textarea>
  <br>
  <input type="submit" class="submit"value="Submit">
  </div>
</form>
</body>
<style>
body{
display:flex;
justify-content:center;
align-content:center;
}
/* Apply basic styling to the form */
form {
  min-width: 200px;
  max-width:500px;
  margin: 0 auto;
  padding: 20px;
  border: 1px solid #ccc;
  background-color: #f9f9f9;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  border-radius: 5px;
}

/* Style the label and textarea */
label {
  font-weight: bold;
}

.address {
  width: 90%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
  resize: vertical; /* Allow vertical resizing of the textarea */
}

/* Style the submit button */
.submit{
  width:90%;
  margin:2%;
  background-color: #007bff;
  color: white;
  border: none;
  padding: 10px 20px;
  cursor: pointer;
  border-radius: 5px;
}

/* Add some spacing between elements */
h1 {
  margin: 10px 0;
}

/* Add media query for smaller screens */
@media (max-width: 768px) {
  form {
    max-width: 90%;
  }
}
</style>
</html>