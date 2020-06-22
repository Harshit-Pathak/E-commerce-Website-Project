<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.activation.*" %>

<%

String oid=request.getParameter("oid");
Integer total_bill=Integer.parseInt(request.getParameter("total_bill"));
try
{
	Class.forName("com.mysql.jdbc.Driver"); 
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/ecommerce","root","hgmp");
	PreparedStatement ps=con.prepareStatement("select * from orderdetails where oid=?");
	ps.setString(1,oid);
	ResultSet rs=ps.executeQuery();
			
	while(rs.next())
	{
		String query="update products set product_quantity=product_quantity - "+rs.getInt(3)+" where product_id=?";
		PreparedStatement ps1=con.prepareStatement(query);
		ps1.setString(1,rs.getString(2));
		ps1.executeUpdate();
	}
	PreparedStatement ps2=con.prepareStatement("update orders set amount=? where oid=? ");
	ps2.setInt(1,total_bill);
	ps2.setString(2,oid);
	ps2.executeUpdate();

	PreparedStatement ps3=con.prepareStatement("update orders set status='confirmed' where oid=?");
	ps3.setString(1,oid);
	ps3.executeUpdate();
	try
	{
		String from = "selectgenie@yahoo.com";
		String to = (String)session.getAttribute("email");
		String host = "smtp.mail.yahoo.com";
		String pass="errorconnect";
		Properties properties = System.getProperties();
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.host", host);
		properties.put("mail.smtp.user", from);
		properties.put("mail.smtp.password", pass);
		properties.put("mail.smtp.port", "587");
		properties.put("mail.smtp.auth", "true");
		Session session1 = Session.getDefaultInstance(properties);
		try
		{
			MimeMessage message = new MimeMessage(session1);
			message.setFrom(new InternetAddress(from));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			message.setSubject("Select Genie Order Confirmed");
			message.setText("Your Order No:"+oid+" has been successfully placed\n The total amount due is:"+total_bill+" which has to be paid in Cash on Delivery\nThe order will be shipped within 4-5 working days\nRegards\nSelect Genie");
			Transport transport = session1.getTransport("smtp");
			transport.connect(host, from, pass);
			transport.sendMessage(message, message.getAllRecipients());
			transport.close();
			response.sendRedirect("confirmmsg.jsp");
		}
		catch (Exception mex)
		{
			out.println(mex);
   		}
	}
	catch(Exception e)
	{
		out.println(e);
	}	
}
catch(Exception e)
{
	out.println(e);
}
%>
