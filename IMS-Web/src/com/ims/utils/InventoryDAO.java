package com.ims.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;

/**
 * @author Vartika 
*/
public class InventoryDAO {
	
	public static HashMap<String, InventoryBean> inventoryMap;
	
	public static boolean loadInventory(){
		boolean status=false;
		try{
			inventoryMap = new HashMap<String, InventoryBean>();
			Connection con=ConnectionProvider.getCon();
			
			PreparedStatement ps=con.prepareStatement("select * from inventory");
			
			ResultSet rs=ps.executeQuery();
			// code to load the result set in hash map
			
		}catch(Exception e){}
		return status;
	}

	public InventoryDAO() {
		// TODO Auto-generated constructor stub
	}

}
