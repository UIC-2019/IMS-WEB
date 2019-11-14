package com.ims.impl;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.ims.utils.Constants;
import com.ims.utils.InventoryDAO;

/**
 * @author Harshitha
 *
 */

public class EmailMenuImpl {
	InventoryDAO dao = new InventoryDAO();
	public EmailMenuImpl() {
		
	}
	
	
	public String sendEmail(String senderMail) {
		try {
			dao.loadToFile();
			//Scanner to get user input
			String status = "success";
			String sendersmail = senderMail;
		    String host = "smtp.gmail.com";
		 // Sender's email ID 
		    String from = Constants.USERNAME;
		    Properties props = System.getProperties();
		    props.put("mail.smtp.host", host);
		    props.put("mail.smtp.user", from);
		    props.put("mail.smtp.password", Constants.PASSWORD);
		    props.put("mail.smtp.port", "587"); 
		    props.put("mail.smtp.auth", "true");
		    props.put("mail.smtp.starttls.enable", "true");
		    	 // Get the Session object.
		        Session session = Session.getDefaultInstance(props, null);
		        MimeMessage message = new MimeMessage(session);
		        message.setFrom(new InternetAddress(from));
		        message.addRecipients(Message.RecipientType.TO, sendersmail);
		     // Set Subject: header field
		        message.setSubject("IMS");
		     // Set Content: text field
		        message.setText(Constants.MESSAGE);
		        String filename = "FileToMail.txt";
		        //Attach File: text field
		         DataSource source = new FileDataSource(filename);
		         message.setDataHandler(new DataHandler(source));
		         message.setFileName(filename);
		        Transport transport = session.getTransport("smtp");
		     // Connecting with username and password
		        transport.connect("smtp.gmail.com", Constants.USERNAME, Constants.PASSWORD);
		        status = "success";
		        transport.sendMessage(message, message.getAllRecipients());
		        return status;
		} catch (SQLException e1) {
			e1.printStackTrace();
			return "Error";
		} catch (IOException e1) {
			e1.printStackTrace();
			return "Error";
		}
		catch(MessagingException e){
			        System.out.println(e.getMessage());
			        return "Error";
			    }
	}
}
