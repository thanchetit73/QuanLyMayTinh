/*
* (C)Copyright 2019 InternDN19.01
*
* @author MyPC
* @date 16 thg 2, 2019
* @version 1.0
*/
package fpt.bo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import fpt.bean.KhachHang;
import fpt.dao.CoSo;
import fpt.dao.KhachHangDao;

/**
 * @author MyPC
 *
 */
public class KhachHangBo {
	ArrayList<KhachHang> ds = new ArrayList<>();
	KhachHangDao kh = new KhachHangDao();
	// get all khach hang
	public ArrayList<KhachHang> getKhachHang(){
		return kh.getKhachHang();
	}
	//
	public int themKhachHang(String maKH, String tenKH, String diaChi, int sdt, String email) {
		return kh.themKhachHang(maKH, tenKH, diaChi, sdt, email);
	}
	//check trùng mã
		public boolean checkKhachHang(String maKH){
			ArrayList<KhachHang> ds = new ArrayList<>();
			CoSo cs = new CoSo();
			boolean kt = true ;
			try {
				cs.KetNoi();
				String sql = " SELECT MaKH FROM KHACHHANG ";
				PreparedStatement cmd = cs.cn.prepareStatement(sql);
				ResultSet rs = cmd.executeQuery();			
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
				rs.close();
				cs.cn.close();
			} catch (Exception e) {
				// TODO: handle exception
			}
			return kt;		
		}

}
