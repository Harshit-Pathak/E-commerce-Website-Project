<html>
<head>
<title> Registration page </title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%

	String name=request.getParameter("Full Name");
	String address=request.getParameter("Address");
	String pincode=request.getParameter("Pin code");
	String username=request.getParameter("Username");
	String password=request.getParameter("password");
	String cpassword=request.getParameter("Confirm Password");
	String contact=request.getParameter("Contact No");
	



	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3308/ecommerce","root","hgmp");
		PreparedStatement ps= con.prepareStatement("insert into registration values(?,?,?,?,?,?,?)");
		ps.setString(1,name);
		ps.setString(2,address);
		ps.setString(3,pincode);
		ps.setString(4,username);
		ps.setString(5,password);
		ps.setString(6,cpassword);
		ps.setString(7,contact);
		ps.executeUpdate();
		out.println("Succesfully Inserted");
	}
	catch(Exception e)
	{
		out.println(e);
	}
%>
</body>
</html>