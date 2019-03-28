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

import fpt.bean.KhachHang;

/**
 * @author MyPC
 *
 */
public class KhachHangDao {
	// hàm get all máy
	public ArrayList<KhachHang> getKhachHang(){
		ArrayList<KhachHang> ds = new ArrayList<>();
		CoSo cs = new CoSo();
		try {
			cs.KetNoi();
			String sql = " SELECT * FROM KHACHHANG";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				String maKH = rs.getString("MaKH");
				String tenKH = rs.getString("TenKH");
				String diaChi = rs.getString("DiaChi");
				int sdt = rs.getInt("SDT");
				String email = rs.getString("email");
				KhachHang s = new KhachHang(maKH, tenKH, diaChi, sdt, email);
				ds.add(s);
			}
			rs.close();
			cs.cn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return ds;		
	}
	//check trùng mã
	public boolean checkKhachHang(String maKH){
		ArrayList<KhachHang> ds = new ArrayList<>();
		CoSo cs = new CoSo();
		boolean kt =true;
		try {
			cs.KetNoi();
			String sql = " SELECT MaKH FROM KHACHHANG ";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				String maKH1 = rs.getString("MaKH");
				if(maKH == maKH1) {
					kt = false;
				}
				else
					kt = true;
				/*String tenKH = rs.getString("TenKH");
				String diaChi = rs.getString("DiaChi");
				int sdt = rs.getInt("SDT");
				String email = rs.getString("email");
				KhachHang s = new KhachHang(maKH, tenKH, diaChi, sdt, email);
				ds.add(s);*/
			}
			rs.close();
			cs.cn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return kt;		
	}
	// hàm thêm máy
	public int themKhachHang(String maKH, String tenKH, String diaChi, int sdt, String email) {
		CoSo cs = new CoSo();
		int kq=0;
		try {
			cs.KetNoi();
			String sql = "INSERT INTO KHACHHANG(MaKH,TenKH,DiaChi,sdt,email) VALUES (?,?,?,?,?)";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setString(1, maKH);
			cmd.setString(2, tenKH);
			cmd.setString(3, diaChi);
			cmd.setInt(4, sdt);
			cmd.setString(5, email);
			 kq = cmd.executeUpdate();
			cmd.close();
			cs.cn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return kq;
	}

}
