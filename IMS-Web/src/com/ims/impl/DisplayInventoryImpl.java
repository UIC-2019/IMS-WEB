/**
 * 
 */
package com.ims.impl;

import java.util.ArrayList;

import com.ims.utils.InventoryBean;
import com.ims.utils.InventoryDAO;

/**
 * @author Vartika
 *
 */
public class DisplayInventoryImpl {
InventoryDAO dao = new InventoryDAO();
	/**
	 * 
	 */
	public DisplayInventoryImpl() {
		// TODO Auto-generated constructor stub
	}

	public ArrayList<InventoryBean> loadInventory() {
		ArrayList<InventoryBean> inventoryList = 	dao.loadInventory();
		return inventoryList;
	}

}
