package com.ims.utils;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * @author Vartika 
*/
public class InventoryDAO {
	private static File filetoMail;
	public static ArrayList<InventoryBean> inventoryList;
	
	public static ArrayList<InventoryBean> loadInventory(){
		try{
			inventoryList = new ArrayList<InventoryBean>();
			Connection con=ConnectionProvider.getCon();
			
			PreparedStatement ps=con.prepareStatement("select * from inventory");
			
			ResultSet rs=ps.executeQuery();
			// code to load the result set in hash map
			InventoryBean bean;
			while(rs.next()) {
				 bean = new InventoryBean(rs.getString(2), rs.getString(1), rs.getString(3), rs.getString(4),
					rs.getString(5), rs.getString(6), rs.getDouble(7), rs.getDouble(8), rs.getDouble(9), rs.getDouble(10));
				 inventoryList.add(bean);
			}
			//loadToFile(rs);
			return inventoryList;
		}catch(Exception e){
			
		}
		return inventoryList;
	}
	private static FileWriter loadToFile(ResultSet rs) throws SQLException, IOException {
		FileWriter fstream = null;
		try {
			filetoMail = new File("FileToMail.txt");
			fstream = new FileWriter(filetoMail);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		BufferedWriter out = new BufferedWriter(fstream);
		while (rs.next()) {            
		        out.write(rs.getString(1) + " ");
		        out.write(rs.getString(2) + " ");
		        out.write(rs.getString(3) + " ");
		        out.write(rs.getString(4) + " ");
		        out.write(rs.getString(5) + " ");
		        out.write(rs.getString(6) + ", ");
		        out.write(rs.getString(6) + ", ");
		        out.write(Double.toString(rs.getDouble(7)) + ", ");
		        out.write(Double.toString(rs.getDouble(8)) + ", ");
		        out.write(Double.toString(rs.getDouble(9)) + ", ");
		        out.write(Double.toString(rs.getDouble(10)) + ", ");
		        out.newLine();
		}
		out.close();
		return fstream;
	}

	public InventoryDAO() {
		// TODO Auto-generated constructor stub
	}

}
