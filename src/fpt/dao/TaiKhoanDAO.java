/*
* (C)Copyright 2019 InternDN19.01
*
* @author MyPC
* @date 18 thg 2, 2019
* @version 1.0
*/
package fpt.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import fpt.dao.CoSo;
import fpt.bean.TaiKhoan;

/**
 * @author MyPC
 *
 */
public class TaiKhoanDAO {
	public TaiKhoan ktdn(String un, String pass) throws Exception
	{
		CoSo cs = new CoSo();
		cs.KetNoi();
		String sql=" select * from taikhoan where username=? and pass=?";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setString(1, un);
		cmd.setString(2, pass);
		
		//PreparedStatement cmd=cs.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		if(rs.next()) { 
			TaiKhoan kh= new TaiKhoan();
			kh.setUserName(rs.getString("username"));			
			kh.setPassword(rs.getString("pass"));
			rs.close();
			cs.cn.close();
			return kh;
					
		}
		rs.close();
		cs.cn.close();
		return null;
	}

}
