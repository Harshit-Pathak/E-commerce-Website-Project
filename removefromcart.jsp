<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String oid = request.getParameter("oid");
String p_id=request.getParameter("p_id");
String size=request.getParameter("size");

try
{
	Class.forName("com.mysql.jdbc.Driver"); 
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/leofab","root","123456");
	PreparedStatement ps=con.prepareStatement("delete from order_details where oid=? and pid=? and size=?");
	ps.setString(1,oid);
	ps.setString(2,p_id);
	ps.setString(3,size);
	ps.executeUpdate();
	response.sendRedirect("view_cart.jsp");
}
catch(Exception e)
{
out.println(e);
}

%>