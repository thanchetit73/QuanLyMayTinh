/**
*Project name: QuanLyMayTinh
*Version : 1.0
*Created date : Feb 18, 2019 11:30:10 PM
*Description: Create by HCD-Fresher101
*Copyright (c) 2019 by HungPQ16. All rights reserved.
*/
package fpt.dao;

import java.sql.PreparedStatement;

public class DangKyDVDAO {
	public int dangKySuDungDichVu(String maKH, String maDV, String ngaySd, String gioSd, int soLuong) {
		CoSo cs = new CoSo();
		int kq=0;
		try {
			cs.KetNoi();
			String sql = "INSERT INTO SUDUNGDICHVU(MaKH,MaDV,NgaySuDung,GioSuDung,SoLuong) VALUES (?,?,?,?,?)";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setString(1, maKH);
			cmd.setString(2, maDV);
			cmd.setString(3, ngaySd);
			cmd.setString(4, gioSd);
			cmd.setInt(5,soLuong);
			 kq = cmd.executeUpdate();
			cmd.close();
			cs.cn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return kq;
	}

}
