package com.tool;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class MysqlLianJie {

	private static final String username = "root";
	
	private static final String password = "8029160.0mgj";
	
	private static final String url = "jdbc:mysql://localhost:3306/it";
	
	
	public static Connection con;
	
	public static Statement sta;
	
	public static ResultSet re;
	
	
	public static void sql() throws Exception{
		
		Class.forName("com.mysql.jdbc.Driver");
		
	con	= DriverManager.getConnection(url, username, password);
		
	sta = con.createStatement();
	
	}
	
	public static void sqlClose() throws Exception{
		
		sta.close();
		
		con.close();
		
		
	}
	
	public static void sqlreClose() throws Exception{
		
		sqlClose();
		
		re.close();
	}
	
}
