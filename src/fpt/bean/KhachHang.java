/**
*Project name: QuanLyMayTinh
*Version : 1.0
*Created date : Feb 15, 2019 12:03:32 AM
*Description: Create by HCD-Fresher101
*Copyright (c) 2019 by HungPQ16. All rights reserved.
*/
package fpt.bean;

public class KhachHang {
	public KhachHang(String maKH, String tenKH, String diaChi, int sdt, String email) {
		super();
		this.maKH = maKH;
		this.tenKH = tenKH;
		this.diaChi = diaChi;
		this.sdt = sdt;
		this.email = email;
	}
	public KhachHang() {}
	public String getMaKH() {
		return maKH;
	}
	public void setMaKH(String maKH) {
		this.maKH = maKH;
	}
	public String getTenKH() {
		return tenKH;
	}
	public void setTenKH(String tenKH) {
		this.tenKH = tenKH;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public int getSdt() {
		return sdt;
	}
	public void setSdt(int sdt) {
		this.sdt = sdt;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	private String maKH;
	private String tenKH;
	private String diaChi;
	private int sdt;
	private String email;

}
