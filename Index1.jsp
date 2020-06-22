<!doctype html>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>


<html>
<head>
    


<meta charset="utf-8">
<title>Select Genie</title>
<link href="Homepage design.css" rel="stylesheet" type="text/css">

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
                                Welcome!!!&nbsp <%=u%> &nbsp &nbsp<a href="change password.html" class="button">Change Password</a>&nbsp<a href="logout.jsp" class="button">Logout</a>
                                
				<%
				}
				%>
                 
    </div>

<!-- Slideshow container -->
<div class="slideshow-container">

  <!-- Full-width images with number and caption text -->
  <div class="mySlides fade">
    <div class="numbertext"></div>
    <img src="gg.jpg"width="500" height="286" style="width:100%">
    <div class="text">Gadgets</div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext"></div>
    <img src="slide1.jpg" width="500" height="286" style="width:100%">
    <div class="text">Furnitures</div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext"></div>
    <img src="Home-Appliances-1.jpg" width="500" height="286" style="width:100%">
    <div class="text">Home Appliances</div>
  </div>
  
  
  <div class="mySlides fade">
    <div class="numbertext"></div>
    <img src="Fashion2.jpg" width="500" height="286" style="width:100%">
    <div class="text">Clothing and Fashion </div>
  </div>

  <!-- Next and previous buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
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
    setTimeout(showSlides, 5000); // Change image every 5 seconds
}
</script>

	<header>
		
			<div class="logo" align="center">
                            <a href="Index1.jsp"><img src="final_select (1).png"></a>
			</div><br/><br>
                        
		<div class="list">	
            <ul>
                  <li><a href="About.jsp"><b>ABOUT</b></a></li>
                  
                  <li><a href="#"><b>CLOTHING</b></a>
                      
                 <ul>
                 <li><a href="view_products.jsp?p_category=Mens&pageno=1">MENS</a></li>
                 <li><a href="view_products.jsp?p_category=Womens&pageno=1"><b>WOMENS</b></a>
                 </ul>
                      <li><a href="view_cart.jsp"><img src="ecommerce.png" height="15" width="18">&nbsp <b>MY CART</b></a></li>
                 </li>
                 
                  
                   
                  <li><a href="view_products.jsp?p_category=Electronics&pageno=1"><b>ELECTRONICS</b></a>
                  		
                  <li><a href="view_products.jsp?p_category=Home Appliances&pageno=1"><b>HOME APPLIANCES</b></a>
                 
                 </li>
                   <li><a href="view_products.jsp?p_category=Furnitures&pageno=1"><b>FURNITURES</b></a>
                 
                 </li>
                  
                  <li><a href="feedback input.jsp" target="new"><b>FEEDBACK</b></a></li>&nbsp&nbsp;
                  
                  
				
                 <form action="">
                     
            	<input type="text" name="" placeholder="Search..." style=" font-size: 20px;
  padding: 9px 7px; width: 20% ; padding-top:3px; padding-bottom:2px; border-radius:11px;" align="right"   >
             </form>
		</ul>
		</div>
        
        <div class="welcome">
                        <marquee direction="up" scrollamount="2" height="140"><p align="center"><font face="Arial"><b>WELCOME TO SELECT GENIE YOU ARE CURRENTLY ON ONE OF THE LEADING E-COMMERCE SITE. IF YOU WANT QUALITY PRODUCTS AT A POCKET FRIENDLY PRICE THEN YOU  ARE AT THE RIGHT PLACE.<br></b>
        <b>HERE YOU HAVE FREEDOM TO CHOOSE FROM A VARIETY OF PRODUCTS ACCORDING TO WHAT SUITS YOUR NEEDS THE BEST IN A VERY HASSLE FREE WAY<br>SO WISH YOU ALL A HAPPY SHOPPING.........</b></font></p></marquee> 
                 <br><br><br><br><br><br><br>       
        </div>
        <div class="social">
        	<div class="container" align="center">
                    <div class="icon"><br><br>
                	&nbsp&nbsp<a href="https://www.facebook.com" target="new"><img src="fb.png" height="35" width="40"></a>&nbsp&nbsp&nbsp
                    <a href="https://www.twitter.com" target="new"><img src="twitter.png" height="40" width="40"></a>&nbsp&nbsp&nbsp
                    <a href="https://www.instagram.com" target="new"><img src="Instagram-logo.png" height="40" width="40"></a>&nbsp&nbsp&nbsp
                    <a href="https://www.googleplus.com" target="new"><img src="gplus.png" height="40" width="40"></a>
                    
                    <br><br>
                    <img src="contact.png" height="30" width="30">&nbsp&nbsp<font face="Century Gothic" color="#FFFFFF"><b>8169482600 / 02224472560</b></font>&nbsp&nbsp&nbsp
                    <img src="location.png" height="30" width="30"><font face="Century Gothic" color="#FFFFFF"><b>Mumbai Bhiwandi Warehouse</b></font><br><br>
                    <font face="Century Gothic" color="#FFFFFF"><b>All Rights Reserved 2018 &nbsp @Tech Harsh</b></font>
                </div></div></div>
                    
                    
                   
                    
 
	</header>
	
</body>
</html>

