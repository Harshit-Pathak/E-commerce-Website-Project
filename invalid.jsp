<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Product Details</title>
<link href="invalid design.css" rel="stylesheet" type="text/css"/>
</head>

<body>


<%
String remark=request.getParameter("remark");
if(remark.equals("invaliduser"))
{
%>
<font color=white><B>Invalid UserName|Password</B></font>
<%
}
else if(remark.equals("reset"))
{
%>
<font color=blue><B>Login with your new credentials</B></font>
<%
}
else if(remark.equals("loginfirst"))
{
%>
<font color=white><B><h3>You are not authorized to do so without Logging In</h3></B></font><br><br><br>
<a href="Login page.html" target="_self">GO BACK AND LOGIN</a>
<%
}
%>

</body>
</html>