<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width ,initial-scale=1.0 ">
    <title>Bali</title>
 <link rel="stylesheet" href="alert/dist/sweetalert.css">   
<link rel="stylesheet" href="style.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css">

</head>
<body>
    <input type = "hidden" id ="status" value= "<%= request.getAttribute("status") %>">
    <section class="Baliheader">
        <nav>
            <a href="index.html"><img src="images/logoFinal.png"></a>
            <div class="nav-links" id="navLinks">
                <i class="fa fa-times" onclick="hideMenu()" ></i>
                <ul>
                    <li><a href="index.html" >HOME</a></li>
                    <li><a href=" ">SERVICES</a></li>
                    <li><a href=" ">ABOUT US</a></li>
                    <li><a href=" ">BLOG</a></li>
                    <li><a href=" ">CONTACT</a></li>
                </ul>
             </div>
              <i class="fa fa-bars" onclick="showMenu()"></i>
        </nav>
 </section>
 <div class="trip_box">
    <form action="BaliT" method="get">
        <div class="search_box">
            <div class="cbox">
                <h4>Destination</h4>
                <select id="destination" name="destination">
                    <option value="--">--</option>
                    <option value="Bali">Bali</option>
                   
                </select>
            </div> 
            <div class="cbox">
                <h4>Start Date</h4>
                <input type="date" placeholder="Enter Start Date" name="SDate">
            </div>  
            <div class="cbox">
                <h4>End Date</h4>
                <input type="date" placeholder="Enter End Date" name="EDate">
            </div>  
            <div class="cbox">
                <h4>No. of People</h4>
                <input type="number" placeholder="Enter Number of People" name="people">
            </div>  
              <br> 
            <input type="submit" value="Submit" class="submit"  required> 
        </div>
    </div>
    
    </form>
    <br>
    <br>
    <br>

<a href="BaliTrav.jsp">
    <button>Transportation</button>
  </a>  
  <a href="BaliAcco.jsp">
    <button>Accommodation</button>
  </a>  
  </a>  
  <a href="payment.jsp">
    <button>Payment</button>
  </a> 
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
<script type = "text/javascript">
  
   var status = document.getElementById("status").value;
   if(status == "success"){
   	swal("Booking Successfully", "Success");
   }
 </script>        

   
   
    

     


</body>

</html>

    