/*
* (C)Copyright 2019 InternDN19.01
*
* @author MyPC
* @date 18 thg 2, 2019
* @version 1.0
*/
package fpt.bo;

import fpt.bean.TaiKhoan;
import fpt.dao.TaiKhoanDAO;

/**
 * @author MyPC
 *
 */
public class TaiKhoanBO {
	TaiKhoanDAO kh = new TaiKhoanDAO();
	public 	TaiKhoan kiemtra(String un, String pass) throws Exception{
		return kh.ktdn(un, pass);
	}

}
