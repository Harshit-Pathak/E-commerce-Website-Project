<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String oid = request.getParameter("oid");
String p_id=request.getParameter("p_id");

try
{
	Class.forName("com.mysql.jdbc.Driver"); 
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ecommerce","root","hgmp");
	PreparedStatement ps=con.prepareStatement("delete from orderdetails where oid=? and pid=?");
	ps.setString(1,oid);
	ps.setString(2,p_id);
	ps.executeUpdate();
	response.sendRedirect("view_cart.jsp");
}
catch(Exception e)
{
out.println(e);
}

%>