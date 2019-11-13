<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.ims.utils.InventoryBean"%>
<%@page import="com.ims.controller.Controller"%>
<%@page import = " java.util.HashMap"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>


 <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<script type="text/javascript">
$(document).ready(function() {
    $('#dtBasicExample').DataTable();
} );





</script>


<title>Inventory Management System</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">

<!-- Page level plugin CSS-->
<link href="vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin.css" rel="stylesheet">
<link href="css/w3.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.container-div {
	width: 100%;
	
	margin-right: auto;
	margin-left: auto;
}
.img {
  object-fit: cover;
}
</style>

</head>

<body id="page-top">

	<nav class="navbar navbar-expand navbar-dark bg-dark static-top">
		<a class="navbar-brand mr-1" href="showinventory.jsp">Inventory
			Management System</a>
	<div class="collapse navbar-collapse" id="myNavbar">
	<ul class="nav navbar-nav navbar-right">
	  <li> <a href="Home.jsp" class="nav-link">Home</a></li>
	  <li> <a href="showinventory.jsp" class="nav-link">Show</a></li>
	   <li><a href="search.jsp" class="nav-link">Search</a></li>
	   <li><a href="update.jsp" class="nav-link">Update</a>	</li>
	   <li><a href="email.jsp" class="nav-link">Email</a>	</li>
	   <li><a href="login.jsp" class="nav-link">Logout</a></li>
	</ul>
	</div>
	</nav>
	<div id="wrapper">
		<div id="content-wrapper">
			<div class="container-fluid">
				<div class="card mb-3">
					<div class="card-header">
						  <i class="fas fa-table"></i>
          Inventory Data Table
					</div>
					<div class="card-body">
						<div class="table-responsive">
							 <table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
                <thead>
                  <tr>
                    <th>ProductID</th>
                    <th>Product</th>
                    <th>Model</th>
                    <th>Manufacturer</th>
                    <th>TypeCode</th>
                    <th>LocationCode</th>
                    <th>MSRP</th>
                    <th>UnitCost</th>
                    <th>Discount</th>
                    <th>Quantity</th>
                    <th>Actions</th>
                  </tr>
                </thead>
               <tbody>
<%
try{ 

Connection conn = DriverManager.getConnection("jdbc:sqlserver://NAIL4701LP6413Q\\SQLEXPRESS:1433;databaseName=sqlims;user=system;password=sqlserver");


Statement statement = conn.createStatement();

		String Sql = "select * from inventory";
		ResultSet resultSet = statement.executeQuery(Sql);


while(resultSet.next() && (resultSet!=null)){
%>       
       		 <tr><td><%=resultSet.getString("ProductID")%></td> 	
            <td><%=resultSet.getString("Product") %></td>
			<td><%=resultSet.getString("Model") %></td>
			<td><%=resultSet.getString("Manufacturer") %></td>
			<td><%=resultSet.getString("TypeCode") %></td>
			<td><%=resultSet.getString("LocationCode") %></td>
			<td><%=resultSet.getString("MSRP") %></td>
			<td><%=resultSet.getString("UNITCOST") %></td>
			<td><%=resultSet.getString("DISCOUNTRATE") %></td>
			<td><%=resultSet.getString("QTY") %></td>
            <td><a href="updateValues.jsp?ProductID=<%=resultSet.getString("ProductID")%>">Edit</a> 
            <a href="deleteValues.jsp?ProductID=<%=resultSet.getString("ProductID")%>">Del</a>
            <a href="insertValues.jsp?ProductID=<%=resultSet.getString("ProductID")%>">Add</a></td>
            
             </tr> 
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
                        
                </tbody>
              </table>
						</div>
					</div>

				</div>
			</div>
		</div>		
	</div>
	
	<!-- /#wrapper -->
	<footer class="sticky-footer" style="width: 100%">
				<div class="container-div my-auto">
				
					<table style="width:100%; align-items:stretch; ;" >
					  <tr>
					    <th style="align-self:inherit; align-content:flex-start; text-align: center; width: 25%"><i class="fa fa-linkedin" style="font-size:24px; color:#0e76a8"></i></i></th>
					    <th style="align-self:inherit; align-content:flex-start; text-align: center; width: 25%"><i class="fa fa-linkedin" style="font-size:24px; color:#0e76a8"></i></i></th>
					    <th style="align-self:inherit; align-content:flex-start; text-align: center; width: 25%"><i class="fa fa-linkedin" style="font-size:24px; color:#0e76a8"></i></i></th>
					    <th style="align-self:inherit; align-content:flex-start; text-align: center; width: 25%"><i class="fa fa-linkedin" style="font-size:24px; color:#0e76a8"></i></i></th>
					  </tr>
					  <tr>
					    <td style="align-self:inherit; align-content:flex-start; text-align: center; width: 25%">Vartika</td>
					    <td style="align-self:inherit; align-content:flex-start; text-align: center; width: 25%">Nisha</td>
					    <td style="align-self:inherit; align-content:flex-start; text-align: center; width: 25%">Harshitha</td>
					    <td style="align-self:inherit; align-content:flex-start; text-align: center; width: 25%">Sooraj</td>
					  </tr>
					 </table>
					
					<div class="copyright text-center my-auto">
						<span>Copyright © Your Website 2019</span>
					</div>
				</div>
			</footer>

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	

	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Page level plugin JavaScript-->
	<script src="vendor/datatables/jquery.dataTables.js"></script>
	<script src="vendor/datatables/dataTables.bootstrap4.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin.min.js"></script>

	<!-- Demo scripts for this page-->
	<script src="js/demo/datatables-demo.js"></script>

</body>

</html>
