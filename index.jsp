<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
 <center>
<br/><br/>
<br/>
<h1>PRODUCT MANAGMENT SYSTEM!!!</h1>
<br/>

<a href="add">Add-Data</a>
&nbsp;&nbsp;&nbsp;&nbsp;
 
<a href="/">Show-Data</a> 


<br/><br/>


<table border=3>
<tr>
<th>Product_Id</th>
<th>Product_Name</th>
<th>Product_Description</th>
<th>Product_price</th>

<th>Action</th>


</tr>

<tr>
<c:forEach items="${productlist}" var="sobj">
<tr>
<td>${sobj.getId()}</td>
<td>${sobj.getName()}</td>
<td>${sobj.getDescription()}</td>
<td>${sobj.getPrice()}</td>


<td><a href="edit/${sobj.getId()}">Edit</a>
&nbsp;&nbsp;&nbsp;&nbsp;
<a href="delete/${sobj.getId()}">Delete</a> 
</td>

</tr>

</c:forEach>



</table>
</center>




</body>



</html>