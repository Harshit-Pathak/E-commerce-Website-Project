<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<%

	String name=request.getParameter("username");
	String password=request.getParameter("password");

	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3308/ecommerce","root","hgmp");
		PreparedStatement ps= con.prepareStatement("select count(*) from registration where username=? and password=?");
		ps.setString(1,name);
		ps.setString(2,password);
		ResultSet rs=ps.executeQuery();
		rs.next();
		int n=rs.getInt(1);
		if(n==1)
		{
		PreparedStatement ps1= con.prepareStatement("select * from registration where username=?");
		ps1.setString(1,name);
                
		ResultSet rs1=ps1.executeQuery();
		rs1.next();
		session.setAttribute("username",rs1.getString(1));
		session.setAttribute("email",name);
		response.sendRedirect("Index1.jsp");

		}
		else
		{
			response.sendRedirect("invalid.jsp?remark=invaliduser");				
                }
	}
	catch(Exception e)
	{
		out.println(e);
	}

%>