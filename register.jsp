<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Page</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
   <input type = "hidden" id ="status" value= "<%= request.getAttribute("status") %>">

    <div class="registration-box">
        <h2>Register Here</h2>
        <form action="registration" method="get">
            <p>Full Name</p>
            <input type="text" name="fullname" placeholder="Enter Full Name">
            <p>Email Address</p>
            <input type="email" name="email" placeholder="Enter Email Address">
            <p>Mobile Number</p>
            <input type="tel" name="mobile number" placeholder="Enter Mobile Number">
            <p>Password</p>
            <input type="password" name="password" placeholder="Enter Password">
            <p>Confirm Password</p>
            <input type="password" name="confirmpassword" placeholder="Confirm Password">
            <input type="submit" name="submit" value="Register">
            <a href="#">Already have an account?</a>
        </form>
    </div>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
<script type = "text/javascript">
  
   var status = document.getElementById("status").value;
   if(status == "success"){
   	swal("Booking Successfully", "Success");
   }
 </script>
</body>
</html>