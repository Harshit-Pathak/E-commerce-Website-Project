<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Leofab</title>
<link href="design.css" rel="stylesheet" type="text/css" />
<link href="search.css" rel="stylesheet" type="text/css" />
<link href="loginpanel.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="my-slider.css"/>
<script src="ism-2.1.js"></script>


</head>

<body>
<table>
<form action="uploadproduct.jsp" method="post" enctype="multipart/form-data">
  <tr style="color:red">
    <td>Category</td>
    <td><label for="tf1"></label>
    <select name="dd1" id="dd1">
      <option id="dd2" value="Tops">Mens</option>
      <option id="dd3" value="TShirts">Womens</option>
      <option id="dd4" value="CropTop">Electronics</option>
      <option id="dd5" value="Gown">Appliances</option>
      
      </select></td>
  </tr>
  <td> Sub Category</td>
    <td><label for="tf1"></label>
    <select name="dd6" id="dd1">
      <option id="dd7" value="Tops">Casuals</option>
      <option id="dd8" value="TShirts">Formals</option>
      <option id="dd9" value="CropTop">Mobiles</option>
      </select></td>
  </tr>
 
  <tr style="color:red">
    <td>Name</td>
     <td><label for="tf2"></label>
      <input type="text" name="tf2" id="tf2" required placeholder="Enter Name"/></td>
    <td>&nbsp;</td>
  </tr>
  <tr style="color:red">
    <td>Description</td>
     <td><label for="tf3"></label>
      <input type="text" name="tf3" id="tf3" required placeholder="Enter Description"/></td>
    <td>&nbsp;</td>
  </tr>
  <tr style="color:red">
    <td>Price</td>
     <td><label for="tf4"></label>
      <input type="number" name="tf4" id="tf4" required placeholder="Enter Price" /></td>
    <td>&nbsp;</td>
  </tr>
  <tr style="color:red">
    <td>Image</td>
     <td><label for="tf5"></label>
      <input type="file" name="tf5" enctype=" multipart/form-data" required></td>
    <td>&nbsp;</td>
  </tr>
  <tr style="color:red">
    <td>Small Qty</td>
     <td><label for="tf6"></label>
      <input type="number" name="tf6" id="tf6" required placeholder="Enter Quantity" /></td>
    <td>&nbsp;</td>
  </tr>
  <tr style="color:red">
    <td>Medium Qty</td>
     <td><label for="tf7"></label>
      <input type="number" name="tf7" id="tf7" required placeholder="Enter Quantity" /></td>
    <td>&nbsp;</td>
  </tr>
  <tr style="color:red">
    <td>Large Qty</td>
     <td><label for="tf8"></label>
      <input type="number" name="tf8" id="tf8" required placeholder="Enter Quantity" /></td>
    <td>&nbsp;</td>
  </tr>
  <tr style="color:red">
    <td>XL Qty</td>
     <td><label for="tf9"></label>
      <input type="number" name="tf9" id="tf9" required placeholder="Enter Quantity" /></td>
    <td>&nbsp;</td>
  </tr>
  <tr style="color:red">
    <td>XXL Qty</td>
     <td><label for="tf10"></label>
      <input type="number" name="tf10" id="tf10" required placeholder="Enter Quantity" /></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
  <th colspan="2"><input type="Submit" name="Submit" class="btn"/>
    
  </tr>
  <form>
</table>
</body>
</html>
