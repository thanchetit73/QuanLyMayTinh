/**
*Project name: QuanLyMayTinh
*Version : 1.0
*Created date : Feb 15, 2019 12:03:45 AM
*Description: Create by HCD-Fresher101
*Copyright (c) 2019 by HungPQ16. All rights reserved.
*/
package fpt.bean;

public class May{
	public May(String maMay, String viTri, String trangThai) {
		super();
		this.maMay = maMay;
		this.viTri = viTri;
		this.trangThai = trangThai;
	}
	public May() {}
	public String getMaMay() {
		return maMay;
	}
	public void setMaMay(String maMay) {
		this.maMay = maMay;
	}
	public String getViTri() {
		return viTri;
	}
	public void setViTri(String viTri) {
		this.viTri = viTri;
	}
	public String getTrangThai() {
		return trangThai;
	}
	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}
	private String maMay;
	private String viTri;
	private String trangThai;

}
