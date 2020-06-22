<html>
<head>
<title> Registration page </title>
<link href="registration jsp design.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <a href="Login page.html" target="_self">LOGIN NOW AND ENJOY SHOPPING!!!</a>
    
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
        String question=request.getParameter("dd1");
        String answer=request.getParameter("Answer");
        
	



	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3308/ecommerce","root","hgmp");
		PreparedStatement ps= con.prepareStatement("insert into registration values(?,?,?,?,?,?,?,?,?)");
		ps.setString(1,name);
		ps.setString(2,address);
		ps.setString(3,pincode);
		ps.setString(4,username);
		ps.setString(5,password);
		ps.setString(6,cpassword);
		ps.setString(7,contact);
                ps.setString(8,question);
                ps.setString(9,answer);
                
		ps.executeUpdate();
		out.println("Account Created");
	}
	catch(Exception e)
	{
		out.println(e);
	}
%>

</body>
</html>