/**
*Project name: QuanLyMayTinh
*Version : 1.0
*Created date : Feb 15, 2019 12:08:32 AM
*Description: Create by HCD-Fresher101
*Copyright (c) 2019 by HungPQ16. All rights reserved.
*/
package fpt.bean;

public class DichVu {
	public DichVu(String maDV, String tenDV, String donViTinh, String donGia) {
		super();
		this.maDV = maDV;
		this.tenDV = tenDV;
		this.donViTinh = donViTinh;
		this.donGia = donGia;
	}
	public DichVu() {}
	public String getMaDV() {
		return maDV;
	}
	public void setMaDV(String maDV) {
		this.maDV = maDV;
	}
	public String getTenDV() {
		return tenDV;
	}
	public void setTenDV(String tenDV) {
		this.tenDV = tenDV;
	}
	public String getDonViTinh() {
		return donViTinh;
	}
	public void setDonViTinh(String donViTinh) {
		this.donViTinh = donViTinh;
	}
	public String getDonGia() {
		return donGia;
	}
	public void setDonGia(String donGia) {
		this.donGia = donGia;
	}
	private String maDV;
	private String tenDV;
	private String donViTinh;
	private String donGia;

}
