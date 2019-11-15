/**
 * 
 */
package com.ims.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.ims.utils.ConnectionProvider;

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
		//Connect to the database
		ConnectionProvider cp = new ConnectionProvider();
		Connection conn = cp.getCon();
		Statement statement = conn.createStatement();
		PreparedStatement ps = null;
		//Execute the SQL qeuery to fetch the last ProductID
		 String selectSql = "Select * from inventory where ProductID = (SELECT max(ProductID) from inventory)"; 
		  	  ResultSet resultSet = statement.executeQuery(selectSql);
		//Steps to populate the next ProductID in alphanumeric format
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
			        //SQL querto to insert the values into the database 
				String sql = "INSERT INTO inventory VALUES(?,?,?,?,?,?,?,?,?,?)";
				
				ps = conn.prepareStatement(sql);
				//Add individual field values from array of values to be inserted to Preparedstatement
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
				//Execute the insert query/prepated statement
				ps.executeUpdate();
	}

}

