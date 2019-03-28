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

import fpt.dao.CoSo;
import fpt.bean.May;

/**
 * @author MyPC
 *
 */

public class MayDao {
	public static void main(String[] args) {
		MayDao m = new MayDao();
		System.out.println(m.getMay().size());
	}
	// hàm get all máy
	public ArrayList<May> getMay(){
		ArrayList<May> may = new ArrayList<>();
		CoSo cs = new CoSo();
		try {
			cs.KetNoi();
			String sql = " SELECT * FROM MAY";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
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
	// hàm thêm máy
	public int themMay(String maMay,String viTri,String trangThai) {
		CoSo cs = new CoSo();
		int kq=0;
		try {
			cs.KetNoi();
			String sql = "INSERT INTO MAY(MaMay,ViTri,TrangThai) VALUES (?,?,?)";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setString(1, maMay);
			cmd.setString(2, viTri);
			cmd.setString(3, trangThai);
			 kq = cmd.executeUpdate();
			cmd.close();
			cs.cn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return kq;
	}
	//get 1 may
	public May get1May(String mayid){
		May ds = new May(); 
		CoSo cs = new CoSo();
		try {
			cs.KetNoi();
			String sql ="select * from may where mamay=?";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setString(1, mayid);
			ResultSet rs = cmd.executeQuery();
			while(rs.next()) {
				ds = new May(rs.getString("MaMay"),
				rs.getString("ViTri"),
				rs.getString("TrangThai"));						
			}
			rs.close();
			cs.cn.close();
		}catch (Exception e) {
			// TODO: handle exception
		}
		return ds;
	}
	
	// sua may
	public int capNhatMay(String mayid, String vitri, String trangthai) 
			throws Exception{
		//ArrayList<May> ds = new ArrayList<>(); 
		CoSo cs = new CoSo();
		int kq=0;
		try {
			cs.KetNoi();
			String sql ="UPDATE may set ViTri=?,TrangThai=? WHERE MaMay=? ";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			cmd.setString(1, vitri);
			cmd.setString(2, trangthai);
			cmd.setString(3, mayid);
			 kq =cmd.executeUpdate();
			cmd.close();
			cs.cn.close();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return kq;
	}
	// xoa may
	public int xoaMay(String mayid) throws Exception
	{
		CoSo cs = new CoSo();
		cs.KetNoi();
		String sql="delete from may where mamay=?";
		PreparedStatement cmd =cs.cn.prepareStatement(sql);		
		cmd.setString(1, mayid);
		int kq= cmd.executeUpdate();
		cs.cn.close();
		return kq;

}

}
