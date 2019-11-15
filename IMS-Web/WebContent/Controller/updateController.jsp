<%@page import="com.ims.impl.*" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@page import="com.ims.utils.ConnectionProvider"%>
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
	Connection connect = null;
	Statement statement = null;
	
	try {
	        //connect to the database
		ConnectionProvider cp = new ConnectionProvider();
		connect= cp.getCon();
		statement = connect.createStatement();
		//Get the updated values provided by the user and store the values in respective variables
		String ProductID = request.getParameter("ProductID");
		String Product = request.getParameter("Product");
		String Model = request.getParameter("Model");
		String Manufacturer = request.getParameter("Manufacturer");
		String TypeCode = request.getParameter("TypeCode");
		String LocationCode = request.getParameter("LocationCode");
		float MSRP = Float.parseFloat(request.getParameter("MSRP"));
		float UNITCOST = Float.parseFloat(request.getParameter("UNITCOST"));
		float DISCOUNTRATE = Float.parseFloat(request.getParameter("DISCOUNTRATE"));
		float QTY = Float.parseFloat(request.getParameter("QTY"));
		
                //Get the ProductID to be updated
		String id= request.getParameter("id");
		//Execute the update query
		String sql = "UPDATE inventory " +
				"SET Product = '"+ Product + "' " +
				", Model = '"+ Model + "' " +
				", Manufacturer = '"+ Manufacturer + "' " +
				", TypeCode = '"+ TypeCode + "' " +
				", LocationCode = '"+ LocationCode + "' " +
				", MSRP = '"+ MSRP + "' " +
				", UNITCOST = '"+ UNITCOST + "' " +
				", DISCOUNTRATE = '"+ DISCOUNTRATE + "' " +
				", QTY = '"+ QTY + "' " +
				" WHERE ProductID = '" + id + "' ";
		

		
		statement.execute(sql);
        
         out.println("Record was updates successfully");
	  		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}
	
		try {
			if(statement!=null){
				statement.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}
	%>

<script type="text/javascript">
window.location.href="http://localhost:8080/IMS-Web/update.jsp"

</script>

</body>
</html>
