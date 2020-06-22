<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Product Details</title>
<link href="view products design.css" rel="stylesheet" type="text/css"/>


<script src="ism-2.1.js"></script>


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

    
    
    
    
    
    
    
    
    
    
    
    <div class="logo" align="center">
        <a href="Index1.jsp"><img src="final_select (1).png" height="90"></a>
			</div><br/><br><br>
                        
		<div class="list">	
            <ul>
                  <li><a href="About.jsp"><b>ABOUT</b></a></li>
                  
                  <li><a href="#"><b>CATEGORY</b></a>
                      
                 <ul>
                 <li><a href="view_products.jsp?p_category=Mens&pageno=1">MENS</a></li>
                  <li><a href="view_products.jsp?p_category=Womens&pageno=1"><b>WOMENS</b></a>
                 </ul>
                      <li><a href="#cart"><img src="ecommerce.png" height="15" width="18">&nbsp <b>MY CART</b></a></li>
                 </li>
                 
                       
            
                  <li><a href="view_products.jsp?p_category=Electronics&pageno=1"><b>ELECTRONICS</b></a>
                  		
                    
                  <li><a href="view_products.jsp?p_category=Home Appliances&pageno=1"><b>HOME APPLIANCES</b></a>
                 
                 </li>
                   <li><a href="view_products.jsp?p_category=Furnitures&pageno=1"><b>FURNITURES</b></a>
                 
                 </li>
                  
                  <li><a href="Feedback.html" target="new"><b>FEEDBACK</b></a></li>&nbsp&nbsp;
                  
                  
				
                 <form action="">
                     
            	<input type="text" name="" placeholder="Search..." style=" font-size: 20px;
  padding: 9px 7px; width: 20% ; padding-top:3px; padding-bottom:2px; border-radius:11px;" align="right"   >
             </form>
		</ul>
		</div>
        

    
    
    
    
    
    
    
  <div class="main1">  
<table width="100%" align="center" bgcolor="#E5E7DE" class="main_table" cellpadding="0" cellspacing="0" border="0" valign="middle" style="background-image: url('back.jpg');background-repeat:no-repeat;background-attachment:fixed;background-size: 100%;">
  

<tr><td colspan=3><hr width=95% style="border: 1px #FFFFFF;"></td></tr>



<tr height=400 valign="middle">
<td colspan=3 align="center">
<table align=center>
<%
String product_id=request.getParameter("product_id");
try
{
	Class.forName("com.mysql.jdbc.Driver"); 
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ecommerce","root","hgmp");
	PreparedStatement ps=con.prepareStatement("select * from products where product_id=?");
	ps.setString(1,product_id);
	ResultSet rs=ps.executeQuery();
	rs.next();	
%>
<tr><td>
<img src=<%=rs.getString(9)%> width=250 height=300>&nbsp&nbsp&nbsp
</td>
<td>
<font size =5 color='#000000'>Brand:-
<%=rs.getString(2)%><br><br>
<font size =4 color='#000000'><i>Description:-</i> <%=rs.getString(5)%><br><br>
<font size =4 color='#000000'><i>Category:-</i> <%=rs.getString(7)%><br><br>
            <font size =4 color='#000000'><i>Sub category:-</i> <%=rs.getString(8)%><br><br>           
                        <font size =4 color='#000000'><i>Price:-</i> Rs<%=rs.getString(3)%><br><br>
            </td></tr><br></br>
<tr>
<td colspan="2" align="center">
<form name=buy action="addtocart.jsp" method="post"><font size=3 color=black>
<input type=hidden name=p_id value=<%=rs.getString(1)%> >
Quantity:<input type="number"  name="p_quantity" value="" style="text-align:center; width:40px" required>

<font size=2><input type= "submit" name="" value= "Add to cart" class="btn"></form>
</td></tr>
</table>
	

<%
}
catch(Exception e)
{
}
	
%>


</td></tr>

<tr>

<td colspan="3" align="center">&nbsp;<BR>
<font face="Tahoma, Geneva, sans-serif" size="2" color="#000000">Copyright &copy; All Rights Reserved. Tech Harsh 2018 </font>
</td></tr>
</table>
  </div>

</body>
</html>
