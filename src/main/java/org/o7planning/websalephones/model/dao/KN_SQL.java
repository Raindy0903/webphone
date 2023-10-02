package org.o7planning.websalephones.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class KN_SQL {
	
	public Connection cn;

	public void ketNoi() throws Exception {
		// B1 : xác định csdl
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		System.out.println("Đã xác định!");
		// B2 : kết nối csdl
		String url = "jdbc:sqlserver://ADMIN\\SQLEXPRESS:1433;databaseName=Database_Phones;user=sa;password=123";
		cn = DriverManager.getConnection(url);
		System.out.println("đã kết nối!");
	}
}
