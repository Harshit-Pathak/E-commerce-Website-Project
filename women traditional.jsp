<!doctype html>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<html>
<head>
<meta charset="utf-8">
<title>Womens Traditional</title>
<link href="women traditional.css" rel="stylesheet" type="text/css">
</head>

<body>
    <div class="message">
         <%


				String u=(String)session.getAttribute("username");

				if(u==null)

				{

				%>  
  
				
                <a href="Login page.html" class="button"><b>LOG IN</b></a>
                 <a href="Registration page.html" class="button"><b>SIGN UP</b></a>
              
			  <%
				}
				else

				{
				%>
                                Welcome!!!&nbsp <%=u%> &nbsp &nbsp<a href=changepassword.jsp>Change Password</a>&nbsp<a href="logout.jsp" class="button">Logout</a>
				<%
				}
				%>
                 
    </div>
   <div class="logo">
                            <a href="Index1.jsp"><img src="final_select (1).png" width="150" height="95"></a>
                           
			</div>

<div class="slideshow-container"><br><br><br><br>

  <!-- Full-width images with number and caption text -->
  <div class="mySlides fade" align="center">
    <div class="numbertext"></div>
    <img src="w.jpg"width="500" height="400" style="width:100%">
   
  </div>

  <div class="mySlides fade" align="center">
    <div class="numbertext"></div>
    <img src="womenbiba.jpg" width="500" height="400" style="width:100%">
    
  </div>

  <div class="mySlides fade" align="center">
    <div class="numbertext"></div>
    <img src="womentraditional.jpg" width="500" height="400" style="width:100%">
    
  </div>
  
<br>


<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none"; 
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1} 
    slides[slideIndex-1].style.display = "block"; 
    setTimeout(showSlides, 3000); // Change image every 3 seconds
}
</script>
            <div class="list">	
            <ul>
                  
                  <li><a href="About.jsp"><b>ABOUT</b></a></li>
                  <li><a href="#cart"><img src="ecommerce.png" height="15" width="18">&nbsp <b>MY CART</b></a></li>
                  <li><a href="#mens"><b>MENS</b></a>
                 <ul>
                 <li><a href="Casuals.jsp">Casuals</a></li>
                 <li><a href="Formals.jsp">Formals</a></li>
                 <li><a href="Traditional.jsp">Traditional</a></li>
                
                 </ul>
                 </li>
                 
                       
                  <li><a href="#women"><b>WOMENS</b></a>
                   <ul>
                 <li><a href="women casuals.jsp">Casuals</a></li>
                 <li><a href="women formals.jsp">Formals</a></li>
                 <li><a href="women traditional.jsp">Traditional</a></li>
                 </ul>
                 </li>
                  
                   
                  <li><a href="#electronics"><b>ELECTRONICS</b></a>
                  		<ul>
                             <li><a href="Mobiles.jsp">Mobiles</a></li>
                             <li><a href="Laptops.jsp">Laptops</a></li>
                             <li><a href="Smartwatches.jsp">Smart Watches</a></li>
                        </ul>
                        </li>
                    
                  <li><a href="Home Appliances.jsp"><b>HOME APPLIANCES</b></a>
                 
                 </li>
                   <li><a href="Furnitures.jsp"><b>FURNITURES</b></a>
                 
                 </li>
                  
                  <li><a href="Feedback.html" target="new"><b>FEEDBACK</b></a></li>&nbsp
				   
			
            <form action="">
            	<input type="text" name="" placeholder="Search..." style=" font-size: 20px;
  padding: 9px 7px; width: 10.5% ; padding-top:3px; padding-bottom:2px; border-radius:11px;" align="right"   >
             </form>
		</ul>
		</div>
        
        
                  




</body>
</html>
