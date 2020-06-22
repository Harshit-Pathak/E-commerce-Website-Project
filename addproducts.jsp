<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Admin</title>
<link href="admin design.css" rel="stylesheet" type="text/css" />



<script src="ism-2.1.js"></script>


</head>

<body>
    
			<div class="logo">
                            <a href="Admin.jsp"><img src="final_select (1).png"  height="100"/></a>
			</div>
    
    
    
        <div class="list1"><ul><li><a href="viewfeedback.jsp" target="_self"><b>VIEW FEEDBACK</b></a></li>
                                 <li><a href="view products admin.jsp" target="_self"><b>VIEW PRODUCTS</b></a></li>
                                <li><a href="addproducts.jsp" target="_self"><b>ADD PRODUCTS</b></a></li>
                                <li> <a href="adminlogout.jsp" class="button">LOGOUT</a></li></ul></div>
            
    <br><br><br></br>
            <div class="table">                 
                <table align="center">
<form action="uploadproduct.jsp" method="post" enctype="multipart/form-data">
  <tr style="color:black">
    <td>Category</td>
    <td><label for="tf1"></label>
    <select name="dd1" id="dd1">
      <option id="dd2" value="Mens">Mens</option>
      <option id="dd3" value="Womens">Womens</option>
      <option id="dd4" value="Electronics">Electronics</option>
      <option id="dd5" value="Appliances">Home Appliances</option>
      <option id="dd6" value="Furnitures">Furnitures</option>
      
      </select></td>
  </tr>
     <tr style="color:black">
    <td>Sub Category</td>
    <td><label for="tf7"></label>
    <select name="dd8" id="dd1">
      <option id="dd9" value="Casuals">Casuals</option>
      <option id="dd7" value="Formals">Formals</option>
       <option id="dd18" value="Traditional">Traditionals</option>
      <option id="dd10" value="Mobiles">Mobiles</option>
       <option id="dd11" value="Laptops">Laptops</option>
       <option id="dd12" value="Smartwatches">Smartwatches</option>
      <option id="dd15" value="Home Appliances">Home Appliances</option>
      <option id="dd16" value="Furnitures">Furnitures</option>
      
      </select></td>
  </tr>
  <tr style="color:black">
    <td>Name</td>
     <td><label for="tf2"></label>
      <input type="text" name="tf2" id="tf2" required placeholder="Enter Name"/></td>
    <td>&nbsp;</td>
  </tr>
  <tr style="color:black">
    <td>Description</td>
     <td><label for="tf3"></label>
      <input type="text" name="tf3" id="tf3" required placeholder="Enter Description"/></td>
    <td>&nbsp;</td>
  </tr>
  <tr style="color:black">
    <td>Price</td>
     <td><label for="tf4"></label>
      <input type="number" name="tf4" id="tf4" required placeholder="Enter Price" /></td>
    <td>&nbsp;</td>
  </tr>
  <tr style="color:black">
    <td>Image</td>
     <td><label for="tf5"></label>
      <input type="file" name="tf5" enctype=" multipart/form-data" required></td>
    <td>&nbsp;</td>
  </tr>
  <tr style="color:black">
      <td>Quantity</td>
     <td><label for="tf6"></label>
      <input type="number" name="tf6" id="tf6" required placeholder="Enter Quantity" /></td>
    <td>&nbsp;</td>
  </tr>
 
  <tr>
  <th colspan="2"><input type="Submit" name="Submit" value="Submit" class="btn"/>
    
  </tr>
      </form>

    </div>
                    
    </table>
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
