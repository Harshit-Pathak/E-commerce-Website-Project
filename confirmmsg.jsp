<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Leofab</title>
<link href="design.css" rel="stylesheet" type="text/css" />
<link href="search.css" rel="stylesheet" type="text/css" />
<link href="loginpanel.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="my-slider.css"/>
<script src="ism-2.1.js"></script>


</head>

<%
String name=(String)session.getAttribute("uname");
if(name==null)
{
	response.sendRedirect("invalid.jsp?remark=loginfirst");
}
%>


<body>
<table width="100%" align="center" bgcolor="#FFFFFF" class="main_table" cellpadding="0" cellspacing="0" border="0" valign="middle" style="background-image: url('back.jpg');background-repeat:no-repeat;background-attachment:fixed;background-size: 100%;">
<tr>
<td height="120"  align="left" valign="middle"  width="15%">
<img src="leofab.jpg" alt="LOGO" width="200" height="110"  border="0" align="top"/>
</td>

<td height="120"  align="center" valign="middle" width="70%">
<BR/><BR/><BR/>
<form action="search.jsp" class="form-wrapper cf">
	<input name="txtsearch" type="text" placeholder="Search here..." required>
		<button type="submit">Search</button>
</form>&nbsp;
</td>
<td height="120"  align="right" valign="middle" width="15%">
<center>
<a href=view_cart.jsp><img src="shopping_cart.png" width=50 height=40></a>
<a href=https://www.facebook.com/leofabstore/?fref=ts target=_blank><img src="facebook.png" width=40 height=40></a>
<a href=https://twitter.com/_leofab_ target=_blank><img src="twitter.png" width=40 height=40></a>
<a href=http://www.online-instagram.com/user/_leofab_/1567956868 target=_blank><img src="insta.png" width=40 height=40></a>
<BR/><BR/></center>
<%


String u=(String)session.getAttribute("uname");

if(u==null)

{

%>

<form class="form-wrapper1 cf1" action="login.jsp" method="post">
	<input type="text" placeholder="UserName" required name="tf1">&nbsp;&nbsp;&nbsp;<input type="password" placeholder="Password" required name="tf2">
	<button type="submit">Login</button></form>
<center><a href="signup.htm"style="font-family:Tahoma, Geneva, sans-serif;font-size:small;color:red">Sign Up</a>&nbsp;&nbsp;|&nbsp;&nbsp;
<a href="forgot.htm"style="font-family:Tahoma, Geneva, sans-serif;font-size:small;color:red">Forgot Password</a></center>
<%

}

else

{

%>

Welcome!!! <%=u%> &nbsp &nbsp<br/><a href=changepassword.jsp>Change Password</a><a href="logout.jsp">Logout</a>

<%

}

%>
</td>
  </tr>
  

<tr><td colspan=3 align=center>
<ul id="menu-bar">
 <li class="active"><a href="index.jsp">Home</a></li>
 <li><a href="index.jsp">Categories</a>
 <ul>
   <li><a href="view_products.jsp?p_category=Tops&pageno=1"> Tops</a></li>
   <li><a href="view_products.jsp?p_category=TShirts&pageno=1">Tshirts</a></li>
   <li><a href="view_products.jsp?p_category=CropTop&pageno=1">Crop Top</a></li>
   <li><a href="view_products.jsp?p_category=Gowns&pageno=1">Gowns</a></li>
  
   <li><a href="view_products.jsp?p_category=Skirts&pageno=1">Skirts</a></li>
  </ul>
 </li>
 <li><a href="index.jsp">Footwear</a>
  <ul>
   <li><a href="view_products.jsp?p_category=Mojiris&pageno=1">Mojris</a></li>
   <li><a href="view_products.jsp?p_category=HandmadeShoes&pageno=1">Handmade shoes</a></li>
   
  </ul>
 </li>
 <li><a href="about.jsp">About</a></li>
 <li><a href="feedback.jsp">Feedback</a></li>
 <li><a href="contact.jsp">Contact Us</a></li>
</ul>

 </td></tr>


<tr height=400>
<td colspan="3" align="right">

<center>  <align="center">
<h3 style="color:red">Order Placed Successfully</h3>
<%

String oid=(String)session.getAttribute("oid");

%>

<h3 style="color:red">Order Id:<%=oid%></h3>

<table border=1 width="1000" cellspacing=5 style="color:red">
<tr align=left>
<th>Product Id</th>
<th>Product Name</th>
<th>Size</th>
<th>Price</th>
<th>Quantity</th>
<th>Total</th>
</tr>
<%
session.setAttribute("oid",null);

int total_bill=0;
try
{
	
	Class.forName("com.mysql.jdbc.Driver"); 
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/leofab","root","123456");
	PreparedStatement ps=con.prepareStatement("select p.pid,p.pname,p.pprice,od.qty,p.pprice*od.qty,od.size from products p, order_details od where p.pid=od.pid and od.oid=?");
	ps.setString(1,oid);
	ResultSet rs= ps.executeQuery();
	while(rs.next())
	{
		total_bill+=Integer.parseInt(rs.getString(5));
%>
		<tr>
		<td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(6)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getString(4)%></td>
		<td><%=rs.getString(5)%></td>
		</tr>

<%
	}
}
catch (Exception e)
{
	out.println(e);
}

%>
<tr>
<td align=left colspan=5>Total</td>
<td><%=total_bill%></td>
</tr>
<tr>
<td align=center colspan=6><form>
<button value="Print this page" onClick="window.print()"><img src="Images/printbutton.png"></button>
</form></td>
</tr>
</table>
</center>



</td></tr>

<tr>

<td colspan="3" align="center">&nbsp;<BR>
<font face="Tahoma, Geneva, sans-serif" size="2" color="#FF0000">Copyright &copy; All Rights Reserved. Leofab 2016 </font>
</td></tr>
</table>


</body>
</html>
