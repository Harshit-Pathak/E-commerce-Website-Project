<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%
try
{
String realpath=getServletContext().getRealPath("images");
MultipartRequest m=new MultipartRequest(request,realpath);

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/leofab","root","123456");

Random id = new Random();
long l=Math.abs(id.nextLong());
Srring p_id=l+"";
String  p_name  = m.getParameter("tf2");
String  p_description  = m.getParameter("tf3");
String p_category = m.getParameter("dd1");
int  p_price =Integer.parseInt(m.getParameter("tf4"));
int  p_qty =Integer.parseInt(m.getParameter("tf10"));
String p_imgpath = m.getOriginalFileName("tf5");
java.sql.Date d=new java.sql.Date((new java.util.Date()).getTime());

PreparedStatement ps= con.prepareStatement("insert into products values(?,?,?,?,?,?)");
ps.setString(1,p_id);
ps.setString(2,p_category);
ps.setString(3,p_name);
ps.setString(4,p_description);
ps.setInt(5,p_price);
ps.setString(6,"images/"+p_imgpath);
ps.setInt(7,p_qty);
ps.setDate(12,d);

int n=ps.executeUpdate();


}
catch(Exception e)
{
	out.print(e);	
}

response.sendRedirect("changeproducts.jsp");
%>