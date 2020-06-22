<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String ids[]=request.getParameterValues("chk");
String pageno=request.getParameter("pno");
if(ids!=null)
{
	for(int i=0;i<ids.length;i++)
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver"); 
			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/leofab","root","123456");
			PreparedStatement ps=con.prepareStatement("update orders set ostatus='shipped' where oid=?");
			ps.setString(1,ids[i]);
			ps.executeUpdate();
		}
		catch(Exception e)
		{

		}
	}
}
response.sendRedirect("viewshipped.jsp?pageno="+pageno);
%>
