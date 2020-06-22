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

<body>
<table width="100%" align="center" bgcolor="#FFFFFF" class="main_table" cellpadding="0" cellspacing="0" border="0" valign="middle" style="background-image: url('back.jpg');background-repeat:no-repeat;background-attachment:fixed;background-size: 100%;">
<tr>
<td height="120"  align="left" valign="middle"  width="15%">
<img src="leofab.jpg" alt="LOGO" width="200" height="110"  border="0" align="top"/>
</td>


<td height="120"  align="right" valign="middle" width="15%">


  
  

<tr><td colspan=3><hr width=95% style="border: 1px dashed #F00;"></td></tr>

<tr><td colspan=3 align=center>
<ul id="menu-bar">

  <li class="active"><a href=#>Products</a>
  <ul>
   <li><a href=addproducts.jsp>Add New</a></li>
   <li><a href=changeproducts.jsp>Change Existing</a></li>
  </ul>
 </li>
 <li><a href=#>Orders</a>
  <ul>
   <li><a href=viewconfirmed.jsp?pageno=1>View Confirm</a></li>
    <li><a href=viewunconfirmed.jsp?pageno=1>View Unconfirm</a></li>
    <li><a href=viewshipped.jsp?pageno=1>View Shipped</a></li>

   </ul>
 </li>
<li><a href=#>Feedback</a>
  <ul>
   <li><a href=viewfeedback.jsp?pageno=1>View All</a></li>
   </ul>
 </li>
<li><a href=changepasswordadmin.jsp>Change Password</a></li>

<li><a href=logoutadmin.jsp>Logout</a></li>

 </td>
</tr>

<tr>
<td colspan="3" align="center" height=420 valign="middle">
<table border=2 width="70%" align="center">
<form action="shiporders.jsp" method="get">
<tr align="left">
	<td align="center"><font size =3 color='red' face='tahoma'>Id</font></td>
	<td align="center"><font size =3 color='red' face='tahoma'>Date</font></td>
	<td align="center" width=10%><font size =3 color='red' face='tahoma'>Amount</font></td>
	<td align="center"><font size =3 color='red' face='tahoma'>UserName</font></td>
	<td align="center"><font size =3 color='red' face='tahoma'>Ship</font></td>
	</tr>


<%
int pageno=Integer.parseInt(request.getParameter("pageno"));
int displayed_items=0;
int count=0;
try
{
	Class.forName("com.mysql.jdbc.Driver"); 
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ecommerce","root","hgmp");
	PreparedStatement ps=con.prepareStatement("select * from orders where status='confirmed' order by odate desc");
	PreparedStatement ps1=con.prepareStatement("select count(*) from orders");
	ResultSet rs1= ps1.executeQuery();
	rs1.next();
	count=rs1.getInt(1);
	ResultSet rs=ps.executeQuery();
	for(int i=0;i<(pageno-1)*6;i++)
	{	rs.next();
	}
	while(rs.next())
	{
%>

	<tr align="left">
	<td align="left"><font size =3 color='red' face='tahoma'><%=rs.getString(1)%></font></td>
	 <td align="left"><font size =3 color='red' face='tahoma'><%=rs.getString(2)%></font></td>
	<td align="left" width=10%><font size =3 color='red' face='tahoma'><%=rs.getString(3)%></font></td>
	<td align="left"><font size =3 color='red' face='tahoma'><%=rs.getString(4)%></font></td>
	<td align="left"><font size =3 color='red' face='tahoma'><input type="checkbox" value=<%=rs.getString(1)%> name="chk"></font></td>
	</tr>

<%
	displayed_items++;
	if(displayed_items==6)
		break;
	}
}
catch (Exception e)
{
	out.println(e);
}

%>
	<tr><td align="right" colspan="6"><input type="hidden" name="pno" value=<%=pageno%>><center><input type="submit" value="Ship" class="btn"></td></tr></center>
</form>
</table>



</td></tr>



<tr>
<td colspan="3" align="center">&nbsp;<BR>
<font face="Tahoma, Geneva, sans-serif" size="2" color="#FF0000">Copyright &copy; All Rights Reserved. Leofab 2016 </font>
</td></tr>
</table>


</body>
</html>
