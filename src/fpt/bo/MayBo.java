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

import fpt.bean.May;
import fpt.dao.CoSo;
import fpt.dao.MayDao;

/**
 * @author MyPC
 *
 */
public class MayBo {
	MayDao m = new MayDao();
	//
	public ArrayList<May> getMay(){
		return m.getMay();
	}
	//
	public int themMay(String maMay,String viTri,String trangThai) {
		return m.themMay(maMay, viTri, trangThai);
	}
	//
	public May get1May(String maMay) {
		return m.get1May(maMay);
	}
	//
	public int capNhatMay(String maMay,String viTri,String trangThai) throws Exception {
		return m.capNhatMay(maMay,viTri,trangThai);
	}
	//
	public int xoaMay(String maMay) throws Exception {
		return m.xoaMay(maMay);
	}
	//
	public ArrayList<May> getMayPage(int a, int b){
		ArrayList<May> may = new ArrayList<>();
		CoSo cs = new CoSo();
		try {
			cs.KetNoi();
			String sql = " SELECT * FROM MAY LIMIT ?,?";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setInt(1, a);
			cmd.setInt(2, b);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				String maMay = rs.getString("MaMay");
				String viTri = rs.getString("ViTri");
				String trangThai = rs.getString("TrangThai");
				May s = new May(maMay, viTri, trangThai);
				may.add(s);
			}
			rs.close();
			cs.cn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return may;		
		}
	// get count
	public int getcountMay(){	
		CoSo cs = new CoSo();
		int count =0;
		try {
			cs.KetNoi();
			String sql = " SELECT COUNT(MaMay) FROM MAY";
			
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				count = rs.getInt(1);
			}
			rs.close();
			cs.cn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return count;		
}
}
	
