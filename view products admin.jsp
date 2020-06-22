
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<meta charset="utf-8">
<title>Admin view Products</title>
        
	<link rel="stylesheet" type="text/css" href="Admin Panel.css"></link>
        
</head>

<body>

	<header>
		
			<div class="logo1" align="center">
                            <a href="Admin.jsp"><img src="final_select (1).png" height="100"></a>
			</div>
        </header>
    <div class="list"><ul><li><a href="viewfeedback.jsp" target="_self"><b>VIEW FEEDBACK</b></a></li>
                             <li><a href="view products admin.jsp" target="_self"><b>VIEW PRODUCTS</b></a></li>
                                <li><a href="addproducts.jsp" target="_self"><b>ADD PRODUCTS</b></a></li>
                                <li> <a href="adminlogout.jsp" class="button">LOGOUT</a></li></ul></div>
            
            
            
        <%
           
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3308/ecommerce","root","hgmp");
            
            Statement st =con.createStatement();
            ResultSet rs= st.executeQuery("select * from products");
            ResultSetMetaData rsmd=rs.getMetaData();
            
           
           
            String col1=rsmd.getColumnName(1);
            String col2=rsmd.getColumnName(2);
            String col3=rsmd.getColumnName(3);
            String col4=rsmd.getColumnName(4);
             String col5=rsmd.getColumnName(5);
              String col6=rsmd.getColumnName(6);
              String col7=rsmd.getColumnName(7);
              String col8=rsmd.getColumnName(8);
            %>
            <div class="adminfed1">
                <form action="delete products admin.jsp" method="post">
                <table border="1">
                <tr>
                <th>product_ID</th>
                <th>NAME</th>
                <th>PRICE</th>
                <th>QUANTITY</th>
                <th>DESCRIPTION</th>
                <th>DATE</th>
                <th>CATEGORY</th>
                <th>SUB CATEGORY</th>
                <th>DELETE</th>
                
                </tr>
                <%
                
                while (rs.next()){
                    String c1,c2,c3,c4,c5,c6,c7,c8;
                    c1=rs.getString(col1);
                    c2=rs.getString(col2);
                    c3=rs.getString(col3);
                    c4=rs.getString(col4);
                     c5=rs.getString(col5);
                      c6=rs.getString(col6);
                       c7=rs.getString(col7);
                        c8=rs.getString(col8);
     
                    %>
                    <tr>
                        <td><%=c1%></td>
                        <td><%=c2%></td>
                        <td><%=c3%></td>
                        <td><%=c4%></td>
                        <td><%=c5%></td>
                        <td><%=c6%></td>
                        <td><%=c7%></td>
                        <td><%=c8%></td>
                        <td><input type="checkbox" value=<%=rs.getString(1)%> name="chk"></td>
                    </tr>
                    
                    
            <%
                    }
            %>
            <tr><td align="right" colspan="5"><center><input type="submit" value="Delete" class="btn"></center></td></tr>
            
            </table>
                </form>
            </div>
            
            
            <div class="wrap"></div>

	 <div class="social">
        	<div class="container" align="center">
                    <div class="icon"><br><br>
                	&nbsp&nbsp<a href="https://www.facebook.com" target="new"><img src="fb.png" height="35" width="40"></a>&nbsp&nbsp&nbsp
                    <a href="https://www.twitter.com" target="new"><img src="twitter.png" height="40" width="40"></a>&nbsp&nbsp&nbsp
                    <a href="https://www.instagram.com" target="new"><img src="Instagram-logo.png" height="40" width="40"></a>&nbsp&nbsp&nbsp
                    <a href="https://www.googleplus.com" target="new"><img src="gplus.png" height="40" width="40"></a>
                    
                    <br><br>
                    <img src="contact.png" height="30" width="30">&nbsp&nbsp<font face="Century Gothic" color="#FFFFFF"><b>8169482600 / 02224472560</b></font>&nbsp&nbsp
                    <img src="location.png" height="30" width="30"><font face="Century Gothic" color="#FFFFFF"><b>Mumbai Bhiwandi Warehouse</b></font><br><br>
                    <font face="Century Gothic" color="#FFFFFF"><b>All Rights Reserved 2018 &nbsp @Tech Harsh</b></font>
                </div></div></div>

    </body>
</html>
