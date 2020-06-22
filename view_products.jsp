<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Products</title>
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
                                Welcome!!!&nbsp <%=u%> &nbsp &nbsp<a href="change password.html" class="button">Change Password</a>&nbsp<a href="logout.jsp" class="button">Logout</a>
                                
				<%
				}
				%>
                 
    </div>

    
    
    
    
    
    
    
    
    
    <div class="logo" align="center">
        <a href="Index1.jsp"><img src="final_select (1).png" height="95"></a>
			</div><br/><br><br>
                        
		<div class="list">	
            <ul>
                  <li><a href="About.jsp"><b>ABOUT</b></a></li>
                  
                  <li><a href="#"><b>CLOTHING</b></a>
                      
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
        
                                <div class="main">
<table width="100%" align="center" bgcolor="#E5E7DE" class="main_table" cellpadding="0" cellspacing="0" border="0" valign="middle" style="background-image: url('back.jpg');background-repeat:no-repeat;background-attachment:fixed;background-size: 100%;">
<tr>

<td height="120"  align="center" valign="middle" width="70%">
<BR/><BR/><BR/>

</td>
<td height="120"  align="right" valign="middle" width="15%">
</td>
</tr>



<tr>
<td colspan="3" align="right">


</td>
</tr>
<tr>
<td colspan="3" align="center">
<table border=0 width="90%" align="center">
<%
String p_category=request.getParameter("p_category");
String p_order=request.getParameter("p_order");
int pageno=Integer.parseInt(request.getParameter("pageno"));
int displayed_items=0;
int count=0;
try
{
	Class.forName("com.mysql.jdbc.Driver"); 
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ecommerce","root","hgmp");
	String query="select * from products where product_category=?";
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1,p_category);
	//ps.setString(2,p_order);
	PreparedStatement ps1=con.prepareStatement("select count(*) from products where product_category=?");
	ps1.setString(1,p_category);
	ResultSet rs1= ps1.executeQuery();
	rs1.next();
	count=rs1.getInt(1);
	ResultSet rs= ps.executeQuery();
	for(int i=0;i<(pageno-1)*4;i++)
	{
		rs.next();
	}
	while(rs.next())
{
%>
	<br>
<center>
<tr align="center" valign="top">
	<td>
<img src =<%=rs.getString(9)%> width=90 height=100></td></center>
<td align="left">
<font size =4 color='#000000'>
<B><%=rs.getString(2)%></B><br>

<br>
<a href=<%="view_productsdetails.jsp?product_id="+rs.getString(1)%> style="color:red">Click Here to View Details</a></font>
<br><form name=buy action="addtocart.jsp" method="post"><font size=2>
<input type=hidden name=p_id value=<%=rs.getString(1)%> >
Quantity:<input type="number"  name="p_quantity" value="" style="text-align:center; width:40px" required>

<font size=2><input type= "submit" name="" value= "Add to cart" class="btn"></form><br><br><br>&nbsp;
</font>
</td>


<%
displayed_items++;
if(rs.next())
{
%>


<td>
<img src =<%=rs.getString(9)%> width=80 height=100></td>
<td align="left">
<font size =4 color='#000000'>
<B><%=rs.getString(2)%></B><br>
<br>

<font size=2>
<br>
<a href=<%="view_productsdetails.jsp?product_id="+rs.getString(1)%> style="color:red">Click Here to View Details</a></font>
<form name=buy action="addtocart.jsp" method="post"><font size=2>
<input type=hidden name=p_id value=<%=rs.getString(1)%> >
Quantity:<input type="number"  name="p_quantity" value="" style="text-align:center; width:40px" required>

<input type= "submit"  value= "Add to cart" class="btn"></form>
</font>
</td>
</tr>
<%
}

displayed_items++;
if(displayed_items==4)
break;
}
}
catch (Exception e)
{
	out.println(e);
}

%>
</table>

<p align=center>
<%
int no_of_pages=0;
if(count%4==0)
{
	no_of_pages=count/4;
}
else
{
	no_of_pages=(count/4)+1;
}

for(int i=1;i<=no_of_pages;i++)
{

if(i==pageno)
{
%>
<font color="black"><B><%=i%></B></font>
<%
}
else
{
%>
<a href=<%="view_products.jsp?pageno="+i+"&p_category="+p_category+"&p_order="+p_order%>><%=i%></a>
<%
}
}
%>

</td></tr>

<tr>

<td colspan="3" align="center">&nbsp;<BR>
<font face="Tahoma, Geneva, sans-serif" size="2" color="#000000">Copyright &copy; All Rights Reserved Tech Harsh </font>
</td></tr>
</table>
                                </div>

</body>
</html>
