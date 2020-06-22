<%@ page import="java.sql.*" %>

<%@ page import="java.util.*" %>



<%

	String email=request.getParameter("email");

	String answer=request.getParameter("password");

	
try
	
{
		Class.forName("com.mysql.jdbc.Driver");

		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3308/ecommerce","root","hgmp");

		PreparedStatement ps= con.prepareStatement("update registration set password=?,confirm_password=? where username=?");

		ps.setString(1,answer);

		ps.setString(2,answer);
                
                ps.setString(3,email);

		int i = ps.executeUpdate();

	if(i>0){
		response.sendRedirect("Login page.html");
        }
        else{
            response.sendRedirect("changepassword.html");
        }

	}

	catch(Exception e)

	{

		out.println(e);

	}

%>