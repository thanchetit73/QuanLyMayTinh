/**
*Project name: QuanLyMayTinh
*Version : 1.0
*Created date : Feb 18, 2019 11:32:37 PM
*Description: Create by HCD-Fresher101
*Copyright (c) 2019 by HungPQ16. All rights reserved.
*/
package fpt.bo;

import fpt.dao.DangKyDVDAO;

public class DangKYDVBO {
	DangKyDVDAO dv = new DangKyDVDAO();
	//
	public int dangKySuDungDichVu(String maKH, String maDV, String ngaySd, String gioSd, int soLuong) {
		return dv.dangKySuDungDichVu(maKH, maDV, ngaySd, gioSd, soLuong);
	}

}
