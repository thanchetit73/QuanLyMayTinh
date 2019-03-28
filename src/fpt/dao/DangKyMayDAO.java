/**
*Project name: QuanLyMayTinh
*Version : 1.0
*Created date : Feb 18, 2019 8:18:23 PM
*Description: Create by HCD-Fresher101
*Copyright (c) 2019 by HungPQ16. All rights reserved.
*/
package fpt.dao;


import java.sql.PreparedStatement;

public class DangKyMayDAO {
	public int dangKySuDungMay(String maKH,String maMay,String nbdsd, String gbdsd, int tgsd) {
		CoSo cs = new CoSo();
		int kq=0;
		try {
			cs.KetNoi();
			String sql = "INSERT INTO SUDUNGMAY(MaKH,MaMay,NgayBatDauSuDung,GioBatDauSuDung,ThoiGianSuDung) VALUES (?,?,?,?,?)";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setString(1, maKH);
			cmd.setString(2, maMay);
			cmd.setString(3, nbdsd);
			cmd.setString(4, gbdsd);
			cmd.setInt(5, tgsd);
			 kq = cmd.executeUpdate();
			cmd.close();
			cs.cn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return kq;
	}

}
