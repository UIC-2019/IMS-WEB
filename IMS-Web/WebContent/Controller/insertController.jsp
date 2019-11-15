<%@page import="com.ims.impl.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
//Store the details for the Product to be inserted into the inventory table in an array
//The values for all fields will be provided by the updateValues.jsp based on user inputs
String[] arr= new String[10];
arr[0]="temp";
arr[1]=request.getParameter("Product");
arr[2]=request.getParameter("Model");
arr[3]=request.getParameter("Manufacturer");
arr[4]=request.getParameter("TypeCode");
arr[5]=request.getParameter("LocationCode");
arr[6]=request.getParameter("MSRP");
arr[7]=request.getParameter("UNITCOST");
arr[8]=request.getParameter("DISCOUNTRATE");
arr[9]=request.getParameter("QTY");
//Define a new object for UpdateMenuImpl class
UpdateMenuImpl obj = new UpdateMenuImpl();
//call the insertValues function and pass the array with the data to be inserted
obj.insertValues(arr);
%>

<script type="text/javascript">
window.location.href="http://localhost:8080/IMS-Web/update.jsp"

</script>


</body>
</html>
