<%@ page session = "true" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

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
    session.setAttribute("ErrorMessage", "You are not logged in. Please login to access.");
    response.sendRedirect("login.jsp");
    }
 %>
<body id="page-top">

	<nav class="navbar navbar-expand navbar-dark bg-dark static-top">
		<a class="navbar-brand mr-1" href="showinventory.jsp">Inventory
			Management System</a>
		<!-- <button class="btn btn-link btn-sm text-white order-1 order-sm-0"
			id="sidebarToggle" href="#">
			<i class="fas fa-bars"></i>
		</button>-->
	</nav> 
	<nav class="w3-bar w3-black" >
	  <a href="Home.jsp" class="w3-button w3-bar-item">Home</a>
	  <a href="showinventory.jsp" class="w3-button w3-bar-item">Show</a>
	  <a href="update.jsp" class="w3-button w3-bar-item">Update</a>	
	  <a href="email.jsp" class="w3-button w3-bar-item">Email</a>	
	  <li><a href="${pageContext.request.contextPath}/logout" class="nav-link">Logout</a></li>
	</nav>
	


	<div id="wrapper">
		<div id="content-wrapper">
			<div class="container-fluid">
				<div class="card mb-3">
					<div class="card-header">
						<form action="Controller/insertController.jsp">
<!-- Display the field names and textboxes to the user get input values for the Product to be inserted-->
Product Name: <input type="text" name="Product"  style="width:20%" maxlength="20"><br>
Model Name  : <input type="text" name="Model" style="width:10%" maxlength="10"><br>
Manufacturer: <input type="text" name="Manufacturer" style="width:20%" maxlength="20"><br>
Type Code  : <input type="text" name="TypeCode" style="width:3%" maxlength="3"><br>
LocationCode: <input type="text" name="LocationCode" style="width:3%" maxlength="3"><br>
MSRP(Price): <input type="text" name="MSRP" style="width:10%"><br>
UnitCost  : <input type="text" name="UNITCOST" style="width:10%"><br>
Discount: <input type="text" name="DISCOUNTRATE" style="width:5%"><br>
Quantity: <input type="text" name="QTY" style="width:10%"><br>


<input type="submit" value="Insert">

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
					<td
						style="align-self: inherit; align-content: flex-start; text-align: center; width: 25%">
						 <a href="https://www.linkedin.com/in/vartika-singh-583b1150/"><!--LinkedIN link access -->Vartika</td></a>
					<td
						style="align-self: inherit; align-content: flex-start; text-align: center; width: 25%">
						<a href="https://www.linkedin.com/in/nisha-aher/"><!--LinkedIN link access -->Nisha</td></a>
					<td
						style="align-self: inherit; align-content: flex-start; text-align: center; width: 25%">
						<a href="http://www.linkedin.com/in/harshithas"><!--LinkedIN link access -->Harshitha</td>
					<td
						style="align-self: inherit; align-content: flex-start; text-align: center; width: 25%">
						<a href="https://www.linkedin.com/in/sooraj-holla-65a313179/"><!--LinkedIN link access -->Sooraj</td>
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

