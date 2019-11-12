package com.ims.utils;

public interface Provider {
	String DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	String CONNECTION_URL = "jdbc:sqlserver://localhost;databaseName=sqlims"; // sqlims is the name of database instance you will
																	// create on local machine.
	String USERNAME = "system";//create a user by the name system with super privileges
	String PASSWORD = "sqlserver"; //create the password for the user as sqlserver.
}
