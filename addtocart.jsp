<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.util.*" %>
<%
String name=(String)session.getAttribute("username");
String email=(String)session.getAttribute("email");
if(name==null)
{
	response.sendRedirect("invalid.jsp?remark=loginfirst");
}
else
{
String p_id=request.getParameter("p_id");
int p_quantity=Integer.parseInt(request.getParameter("p_quantity"));

try
{
	Class.forName("com.mysql.jdbc.Driver"); 
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ecommerce","root","hgmp");
	if (session.getAttribute("oid")==null)
	{
		Random id = new Random();
		long l=Math.abs(id.nextLong());
		PreparedStatement ps=con.prepareStatement("insert into orders values(?,?,?,0,?)");
		ps.setString(1,Long.toString(l));
		java.util.Date d=new java.util.Date();
		java.sql.Date sd=new java.sql.Date(d.getTime());
		ps.setDate(3,sd);
		ps.setString(2,email);
		ps.setString(4,"unconfirmed");
		ps.executeUpdate();
		session.setAttribute("oid",Long.toString(l));
	}
		PreparedStatement ps1=con.prepareStatement("select count(*) from orderdetails where oid=? and pid=?");
		ps1.setString(1,(String)session.getAttribute("oid"));
		ps1.setString(2,p_id);
		ResultSet rs=ps1.executeQuery();
		rs.next();
		int n=rs.getInt(1);
		if(n==0)
		{
			PreparedStatement ps=con.prepareStatement("insert into orderdetails values(?,?,?)");
			ps.setString(1,(String)session.getAttribute("oid"));
			ps.setString(2,p_id);
			ps.setInt(3,p_quantity);
			ps.executeUpdate();
		}
		else
		{
			PreparedStatement ps=con.prepareStatement("update orderdetails set qty=qty+? where oid=? and pid=?");
			ps.setInt(1,p_quantity);
			ps.setString(2,(String)session.getAttribute("oid"));
			ps.setString(3,p_id);
			ps.executeUpdate();		
		}
		response.sendRedirect("view_cart.jsp");
}
catch (Exception e)
{
	out.println(e);
}
}
%>
