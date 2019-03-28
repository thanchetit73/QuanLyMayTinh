/**
*Project name: QuanLyMayTinh
*Version : 1.0
*Created date : Feb 18, 2019 11:26:52 PM
*Description: Create by HCD-Fresher101
*Copyright (c) 2019 by HungPQ16. All rights reserved.
*/
package fpt.bean;

import java.util.Date;

public class DangKyDichVu {
	public DangKyDichVu(String maKH, String maDV, Date ngaySd, String gioSd, int soLuong) {
		super();
		this.maKH = maKH;
		this.maDV = maDV;
		this.ngaySd = ngaySd;
		this.gioSd = gioSd;
		this.soLuong = soLuong;
	}
	public DangKyDichVu() {}
	public String getMaKH() {
		return maKH;
	}
	public void setMaKH(String maKH) {
		this.maKH = maKH;
	}
	public String getMaDV() {
		return maDV;
	}
	public void setMaDV(String maDV) {
		this.maDV = maDV;
	}
	public Date getNgaySd() {
		return ngaySd;
	}
	public void setNgaySd(Date ngaySd) {
		this.ngaySd = ngaySd;
	}
	public String getGioSd() {
		return gioSd;
	}
	public void setGioSd(String gioSd) {
		this.gioSd = gioSd;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	private String maKH;
	private String maDV;
	private Date ngaySd;
	private String gioSd;
	private int soLuong;

}
