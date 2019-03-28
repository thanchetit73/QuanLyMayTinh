/*
* (C)Copyright 2019 InternDN19.01
*
* @author MyPC
* @date 16 thg 2, 2019
* @version 1.0
*/
package fpt.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import fpt.bean.DichVu;


/**
 * @author MyPC
 *
 */
public class DichVuDao {
	// hàm get all máy
	public ArrayList<DichVu> getDichVu(){
		ArrayList<DichVu> ds = new ArrayList<>();
		CoSo cs = new CoSo();
		try {
			cs.KetNoi();
			String sql = "SELECT * FROM DICHVU";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				String maDV = rs.getString("MaDV");
				String tenDV = rs.getString("TenDV");
				String donViTinh = rs.getString("DonViTinh");
				String donGia = rs.getString("DonViGia");
				DichVu s = new DichVu(maDV, tenDV, donViTinh, donGia);
				ds.add(s);
			}
			rs.close();
			cs.cn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return ds;		
	}
	// hàm thêm máy
	public int themDichVu(String maDV, String tenDV, String donViTinh, String donGia) {
		CoSo cs = new CoSo();
		int kq=0;
		try {
			cs.KetNoi();
			String sql = "INSERT INTO DICHVU(MaDV,TenDV,DonViTinh,DonViGia) VALUES (?,?,?,?)";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setString(1, maDV);
			cmd.setString(2, tenDV);
			cmd.setString(3, donViTinh);
			cmd.setString(4, donGia);
			 kq = cmd.executeUpdate();
			cmd.close();
			cs.cn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return kq;
	}

}
