<html>
<head>
<title> FeedBack </title>
</head>
<body>
    
    
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%

	String name=request.getParameter("name");
	String email=request.getParameter("Email id");
	String suggestion=request.getParameter("suggestion");
	String contact=request.getParameter("contact");
        java.sql.Date d=new java.sql.Date((new java.util.Date()).getTime());


	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3308/ecommerce","root","hgmp");
                Random id = new Random();
                long l=Math.abs(id.nextLong());
                String feedback_id=l+"";

		PreparedStatement ps= con.prepareStatement("insert into feedback values(?,?,?,?,?,?)");
		ps.setString(1,feedback_id);
		ps.setString(2,name);
		ps.setString(3,contact);
                ps.setString(4,email);
                ps.setString(5,suggestion);
                ps.setDate(6,d);
                
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