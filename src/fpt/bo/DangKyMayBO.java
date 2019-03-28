/**
*Project name: QuanLyMayTinh
*Version : 1.0
*Created date : Feb 18, 2019 8:26:29 PM
*Description: Create by HCD-Fresher101
*Copyright (c) 2019 by HungPQ16. All rights reserved.
*/
package fpt.bo;


import fpt.dao.DangKyMayDAO;

public class DangKyMayBO {
	DangKyMayDAO dk = new  DangKyMayDAO();
	//
	public int dangKySuDungMay(String maKH,String maMay,String nbdsd, String gbdsd, int tgsd) {
		return dk.dangKySuDungMay(maKH, maMay, nbdsd, gbdsd, tgsd);
	}

}
