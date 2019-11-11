/**
 * 
 */
package com.ims.controller;

import java.util.ArrayList;
import java.util.HashMap;

import com.ims.impl.DisplayInventoryImpl;
import com.ims.impl.EmailMenuImpl;
import com.ims.utils.InventoryBean;

/**
 * @author Vartika 
 * 		   This class is an interface between jsp and actual logic
 *         implementation classes. It will have methods to call implementation
 *         classes for subsequent logic operations.
 */

public class Controller {
public ArrayList<InventoryBean> inventoryList = new ArrayList<InventoryBean>();
public String senderEmail;

public DisplayInventoryImpl display = new DisplayInventoryImpl();
public EmailMenuImpl mail = new EmailMenuImpl();
	/**
	 * 
	 */
	public Controller() {
		
	}
	
	public ArrayList<InventoryBean>showInventory(){
		inventoryList = display.loadInventory();
			return inventoryList;
	}
	
	public void sendMail(){
	System.out.println(senderEmail);
	  mail.sendEmail(senderEmail);
	}

	public String getSenderEmail() {
		return senderEmail;
	}

	public void setSenderEmail(String senderEmail) {
		this.senderEmail = senderEmail;
	}
}
