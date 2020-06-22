<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%
try
{
String realpath=getServletContext().getRealPath("images");
MultipartRequest m=new MultipartRequest(request,realpath);

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ecommerce","root","hgmp");

Random id = new Random();
long l=Math.abs(id.nextLong());
String p_id=l+"";
String  p_name  = m.getParameter("tf2");
String  p_description  = m.getParameter("tf3");
String p_category = m.getParameter("dd1");
String p_subcategory = m.getParameter("dd8");

int  p_price =Integer.parseInt(m.getParameter("tf4"));
int  p_qty =Integer.parseInt(m.getParameter("tf6"));
String p_imgpath =m.getFilesystemName("tf5");
java.sql.Date d=new java.sql.Date((new java.util.Date()).getTime());

PreparedStatement ps= con.prepareStatement("insert into products values(?,?,?,?,?,?,?,?,?)");
ps.setString(1,p_id);
ps.setString(7,p_category);
ps.setString(8,p_subcategory);
ps.setString(2,p_name);
ps.setString(5,p_description);
ps.setInt(3,p_price);
ps.setString(9,"images/"+p_imgpath);
ps.setInt(4,p_qty);
ps.setDate(6,d);

int n=ps.executeUpdate();
out.println(n);

}
catch(Exception e)
{
	out.print(e);	
}

%>