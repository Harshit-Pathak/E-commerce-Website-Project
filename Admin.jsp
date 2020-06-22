<!doctype html>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>


<html>
<head>
    


<meta charset="utf-8">
<title>Admin Panel</title>
<link href="Admin Panel.css" rel="stylesheet" type="text/css"/>

</head>
	
<body>
    <div class="adminlogin">
        <ul>
     
         <%


				String u=(String)session.getAttribute("Name");

				if(u==null)

				{

				%>  
  
                                <li><a href="admin login.html" class="button"><b>LOG IN</b></a></li>
              
			  <%
				}
				else

				{
				%>
                                <li><a href="view products admin.jsp" target="_self"><b>VIEW PRODUCTS</b></a></li>
                                <li><a href="viewfeedback.jsp" target="_self"><b>VIEW FEEDBACK</b></a></li>
                                <li><a href="addproducts.jsp" target="_self"><b>ADD PRODUCTS</b></a></li>
                                <li> <a href="adminlogout.jsp" class="button">LOGOUT</a></li>
        
       
    	
                                
    
				<%
				}
				%>
        </ul>
                                
                 </div>
    


    
<header>
    		
			<div class="logo" align="center">
                            <a href="Admin.jsp"><img src="final_select (1).png" height="100"></a>
                             <h1>ADMIN PANEL</h1>
			</div>
                        
                            
       
                  
</header>
                    
     <div class="social">
        	<div class="container" align="center">
                    <div class="icon"><br><br>
                	&nbsp&nbsp<a href="https://www.facebook.com" target="new"><img src="fb.png" height="35" width="40"></a>&nbsp&nbsp&nbsp
                    <a href="https://www.twitter.com" target="new"><img src="twitter.png" height="40" width="40"></a>&nbsp&nbsp&nbsp
                    <a href="https://www.instagram.com" target="new"><img src="Instagram-logo.png" height="40" width="40"></a>&nbsp&nbsp&nbsp
                    <a href="https://www.googleplus.com" target="new"><img src="gplus.png" height="40" width="40"></a>
                    
                    <br><br>
                    <img src="contact.png" height="30" width="30">&nbsp&nbsp<font face="Century Gothic" color="#FFFFFF"><b>8169482600 / 02224472560</b></font>&nbsp&nbsp
                    <img src="location.png" height="30" width="30"><font face="Century Gothic" color="#FFFFFF"><b>Mumbai Bhiwandi Warehouse</b></font><br><br>
                    <font face="Century Gothic" color="#FFFFFF"><b>All Rights Reserved 2018 &nbsp @Tech Harsh</b></font>
                </div></div></div>
</body>
</html>