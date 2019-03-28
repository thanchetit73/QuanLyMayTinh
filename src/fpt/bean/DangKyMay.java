/**
*Project name: QuanLyMayTinh
*Version : 1.0
*Created date : Feb 18, 2019 8:15:43 PM
*Description: Create by HCD-Fresher101
*Copyright (c) 2019 by HungPQ16. All rights reserved.
*/
package fpt.bean;

import java.util.Date;

public class DangKyMay {
	public DangKyMay(String maKH, String maMay, Date tgbdsd, String gbdsd, int tgsd) {
		super();
		this.maKH = maKH;
		this.maMay = maMay;
		this.tgbdsd = tgbdsd;
		this.gbdsd = gbdsd;
		this.tgsd = tgsd;
	}
	public DangKyMay() {}
	public String getMaKH() {
		return maKH;
	}
	public void setMaKH(String maKH) {
		this.maKH = maKH;
	}
	public String getMaMay() {
		return maMay;
	}
	public void setMaMay(String maMay) {
		this.maMay = maMay;
	}
	public Date getTgbdsd() {
		return tgbdsd;
	}
	public void setTgbdsd(Date tgbdsd) {
		this.tgbdsd = tgbdsd;
	}
	public String getGbdsd() {
		return gbdsd;
	}
	public void setGbdsd(String gbdsd) {
		this.gbdsd = gbdsd;
	}
	public int getTgsd() {
		return tgsd;
	}
	public void setTgsd(int tgsd) {
		this.tgsd = tgsd;
	}
	private String maKH;
	private String maMay;
	private Date tgbdsd;
	private String gbdsd;
	private int tgsd;

}
