<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
<%
 String email = (String) session.getAttribute("email");
    if (null == email) {
    
    response.sendRedirect("login.jsp");
    } 
  %>
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
	
<%

String ProductID = request.getParameter("ProductID");

try{
	Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost\\MSSQLSERVER:1433; databaseName=sqlims; integratedSecurity=true");


	Statement statement = conn.createStatement();

			String Sql = "select * from inventory where ProductID ="+ "'" + ProductID + "'";
			

			ResultSet resultSet = statement.executeQuery(Sql);


	while(resultSet.next() && (resultSet!=null)){
		

%>

	<div id="wrapper">
		<div id="content-wrapper">
			<div class="container-fluid">
				<div class="card mb-3">
					<div class="card-header">
						<form action="Controller/updateController.jsp">

<input type="hidden" name="id" value="<%=resultSet.getString("ProductID") %>"><br>
ProductID    :    <input type="text" name="ProductID" value="<%=resultSet.getString("ProductID") %>" disabled><br>
Product:      <input type="text" name="Product" value="<%=resultSet.getString("Product") %>"><br>
Model:        <input type="text" name="Model" value="<%=resultSet.getString("Model") %>"><br>
Manufacturer: <input type="text" name="Manufacturer" value="<%=resultSet.getString("Manufacturer") %>"><br>
TypeCode:     <input type="text" name="TypeCode" value="<%=resultSet.getString("TypeCode") %>"><br>
LocationCode: <input type="text" name="LocationCode" value="<%=resultSet.getString("LocationCode") %>"><br>
MSRP:         <input type="text" name="MSRP" value="<%=resultSet.getString("MSRP") %>"><br>
UNITCOST:     <input type="text" name="UNITCOST" value="<%=resultSet.getString("UNITCOST") %>"><br>
DISCOUNTRATE: <input type="text" name="DISCOUNTRATE" value="<%=resultSet.getString("DISCOUNTRATE") %>"><br>
QTY:          <input type="text" name="QTY" value="<%=resultSet.getString("QTY") %>"><br>
			
			
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

<input type="submit" value="Update">

</form>
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

