<%@page import="com.ims.impl.*" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

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
		connect = DriverManager.getConnection("jdbc:sqlserver://NAIL4701LP6413Q\\SQLEXPRESS:1433;databaseName=sqlims;user=system;password=sqlserver");


		statement = connect.createStatement();
		
		
		String ProductID = request.getParameter("id");
		
		String sql = "Delete from inventory " +
				" WHERE ProductID = '" + ProductID + "' ";
		

		
		statement.execute(sql);
        
         out.println("Record was deleted successfully");
	  		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}
	
		try {
			if(statement!=null){
				statement.close();
				connect.close();
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