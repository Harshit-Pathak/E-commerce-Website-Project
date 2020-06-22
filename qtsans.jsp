<%@ page import="java.sql.*" %>

<%@ page import="java.util.*" %>



<%

	String email=request.getParameter("username");
	String question=request.getParameter("dd1");
	String answer=request.getParameter("answer");

	
try
	
{
		Class.forName("com.mysql.jdbc.Driver");

		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3308/ecommerce","root","hgmp");

		PreparedStatement ps= con.prepareStatement("select count(*) from registration where username=? and security_question=? and Answer=?");

		ps.setString(1,email);

		ps.setString(2,question);
                
                ps.setString(3, answer);

		ResultSet rs=ps.executeQuery();

		rs.next();

		int n=rs.getInt(1);

		if(n==1)

{
		
		PreparedStatement ps1= con.prepareStatement("select * from registration where username=?");

		ps1.setString(1,email);
                
		
		ResultSet rs1=ps1.executeQuery();
		
		rs1.next();
		
		session.setAttribute("Name",rs1.getString(1));

		session.setAttribute("username",email);

		response.sendRedirect("change password.html");


		}

		else

		{

			response.sendRedirect("qtsans.html");
				
                }

	}

	catch(Exception e)

	{

		out.println(e);

	}

%>