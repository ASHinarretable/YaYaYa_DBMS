<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>TokyoTrav</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css">
<link rel="stylesheet" href="alert/dist/sweetalert.css">
</head>
<body>

   <input type = "hidden" id ="status" value= "<%= request.getAttribute("status") %>">
    <section class="TokyoTravheader">
        <nav>
            <a href="index.html"><img src="images/logoFinal.png"></a>
            <div class="nav-links" id="navLinks">
                <i class="fa fa-times" onclick="hideMenu()"></i>
                <ul>
                    <li><a href="index.html">HOME</a></li>
                    <li><a href="#">SERVICES</a></li>
                    <li><a href="#">ABOUT US</a></li>
                    <li><a href="#">BLOG</a></li>
                    <li><a href="#">CONTACT</a></li>
                </ul>
             </div>
             <i class="fa fa-bars" onclick="showMenu()"></i>
        </nav>
        <hr>
        <div class="content">
            <h4>Pune to Tokyo Flights</h4>
            <br>
            <br>
            <div class="cards">
                <form action="TokyoTrav" method="get">
                    <div class="card">
                        <h3>Economy</h3>
                        <img src="images/economyClass.png" alt="Economy">
                        <div class="btn_flight">
                            <label for="departure">Flight Type:</label>
                            <select id="departure" name="departure">
                                <option value="--">--</option>
                                <option value="Economy">Economy</option>
                            </select>
                            <br>
                            <br>
                            <label for="cost">Cost:</label>
                            <select id="cost" name="cost">
                                <option value="--">--</option>
                                <option value="2000">2000</option>
                            </select>
                            <br>
                            <br>
                            <label for="userId">UserId</label>
                            <input type="text" name="userId"required>
                            <br>
                            <br>
                            <input type="submit" value="Book" class="submit" required> 
                        </div>
                    </div>
                </form>
                  
                <form action="TokyoTrav" method="get">
                    <div class="card">
                        <h3>Economy Plus</h3>
                        <img src="images/economyPlus.png" alt="Economy Plus">
                        <div class="btn_flight">
                            <label for="departure">Flight Type:</label>
                            <select id="departure" name="departure">
                                <option value="--">--</option>
                                <option value="Economy Plus">Economy Plus</option>
                            </select>
                            <br>
                            <br>
                            <label for="cost">Cost:</label>
                            <select id="cost1" name="cost">
                                <option value="--">--</option>
                                <option value="2000">2000</option>
                            </select>
                            <br>
                            <br>
                            <label for="userId">UserId</label>
                            <input type="text"  name="userId" required>
                            <br>
                            <br>
                            <input type="submit" value="Book" class="submit" required> 
                        </div>
                    </div>
                </form>
                
                <form action="TokyoTrav" method="get">
                    <div class="card">
                        <h3>Bussiness Class</h3>
                        <img src="images/bussinessClass.png" alt="Economy Plus">
                        <div class="btn_flight">
                            <label for="departure">Flight Type:</label>
                            <select id="departure" name="departure">
                                <option value="--">--</option>
                                <option value="Bussiness Class">Bussiness Class</option>
                            </select>
                            <br>
                            <br>
                            <label for="cost">Cost:</label>
                            <select id="cost" name="cost">
                                <option value="--">--</option>
                                <option value="2000">2000</option>
                            </select>
                            <br>
                            <br>
                            <label for="userId">UserId</label>
                            <input type="text"  name="userId" required>
                            <br>
                            <br>
                            <input type="submit" value="Book" class="submit" required> 
                        </div>
                    </div>
                </form>
                
                <form action="TokyoTrav" method="get">
                    <div class="card">
                        <h3>First Class</h3>
                        <img src="images/firstClass.png" alt="Economy Plus">
                        <div class="btn_flight">
                            <label for="departure">Flight Type:</label>
                            <select id="departure" name="departure">
                                <option value="--">--</option>
                                <option value="First Class">First Class</option>
                            </select>
                            <br>
                            <br>
                            <label for="cost">Cost:</label>
                            <select id="cost" name="cost">
                                <option value="--">--</option>
                                <option value="2000">2000</option>
                            </select>
                            <br>
                            <br>
                            <label for="userId">UserId</label>
                            <input type="text"  name="userId" required>
                            <br>
                            <br>
                            <input type="submit" value="Book" class="submit" required> 
                        </div>
                    </div>
                </form>
                
              
             </div>
        </div>
        </section>
         <script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


<script type="text/javascript">
var status=document.getElementById("status").value;
if(status=="success"){
	swal("Done","Information added Successfully","success");
}
</script> 

</body>

</html>
         
                
                
                

                 


                
                        
                  

                        
                   
                   
                

               
                
                

                  
                





        


    