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
	/**
	 * InventoryDAO initialized
	 */
InventoryDAO dao = new InventoryDAO();
	/**
	 * 
	 */
	public DisplayInventoryImpl() {
		// TODO Auto-generated constructor stub
	}
	/**
	 * inventoryList of InventoryBean sent to controller
	 * @return
	 */
	public ArrayList<InventoryBean> loadInventory() {
		ArrayList<InventoryBean> inventoryList = 	dao.loadInventory();
		return inventoryList;
	}

}
