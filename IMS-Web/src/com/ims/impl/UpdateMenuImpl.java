/**
 * 
 */
package com.ims.impl;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * @author Nisha
 *
 */
public class UpdateMenuImpl {

	/**
	 * 
	 */
	public UpdateMenuImpl() {
		// TODO Auto-generated constructor stub
	}
	
	public void insertValues(String[] arr) throws SQLException {
		
		Connection conn = DriverManager.getConnection("jdbc:sqlserver://NAIL4701LP6413Q\\SQLEXPRESS:1433;databaseName=sqlims;user=system;password=sqlserver");

		Statement statement = conn.createStatement();
		PreparedStatement ps = null;
		 String selectSql = "Select * from inventory where ProductID = (SELECT max(ProductID) from inventory)"; 
		  	  ResultSet resultSet = statement.executeQuery(selectSql);
			  if (resultSet.next()) {
				  
				  
				  String id=resultSet.getString(1);
					id = id.substring(1);
					Integer productId = Integer.parseInt(id) + 1;
					id = productId.toString();
					int idlen = id.length();
					for (int i=0; i< 9-idlen; i++) {
						id = 0 + id;
					}
					arr[0] = "a" + id;
				  } 
			  
				String sql = "INSERT INTO inventory VALUES(?,?,?,?,?,?,?,?,?,?)";
				
				ps = conn.prepareStatement(sql);
				
				ps.setString(1, arr[0]);
				ps.setString(2, arr[1]);
				ps.setString(3, arr[2]);
				ps.setString(4, arr[3]);
				ps.setString(5, arr[4]);
				ps.setInt(6, Integer.parseInt(arr[5]));
				ps.setFloat(7, Float.parseFloat(arr[6]));
				ps.setFloat(8, Float.parseFloat(arr[7]));
				ps.setFloat(9, Float.parseFloat(arr[8]));
				ps.setInt(10, Integer.parseInt(arr[9]));
				
				ps.executeUpdate();
	}

}


