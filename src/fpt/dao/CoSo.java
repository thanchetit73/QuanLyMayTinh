/**
*Project name: QuanLyMayTinh
*Version : 1.0
*Created date : Feb 15, 2019 12:01:36 AM
*Description: Create by HCD-Fresher101
*Copyright (c) 2019 by HungPQ16. All rights reserved.
*/
package fpt.dao;
import java.sql.*;

public class CoSo {
	public Connection cn;
	public void KetNoi() throws Exception{
		// Xac dinh he quan tri co so du lieu
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		System.out.println(" Đã xác định hệ QTCSDL ");
			cn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=QuanLyPhongMay;user=sa;password=123");
			System.out.println(" Đã kết nối");
	}
}
