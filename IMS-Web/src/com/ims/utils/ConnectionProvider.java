package com.ims.utils;
import java.sql.*;
import static com.ims.utils.Provider.*;

public class ConnectionProvider {
	static Connection con=null;
	static{
		try{
			Class.forName(DRIVER);
			con=DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD);
			}catch(SQLException | ClassNotFoundException e){
				e.printStackTrace();
			}
	}
	public static Connection getCon(){
		return con;
	}
}
