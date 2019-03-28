/*
* (C)Copyright 2019 InternDN19.01
*
* @author MyPC
* @date 16 thg 2, 2019
* @version 1.0
*/
package fpt.bo;

import java.util.ArrayList;

import fpt.bean.DichVu;
import fpt.dao.DichVuDao;

/**
 * @author MyPC
 *
 */
public class DichVuBo {
	DichVuDao dv = new DichVuDao();
	//
	public ArrayList<DichVu> getDichVu(){
		return dv.getDichVu();
	}
	//
	public int themDichVu(String maDV, String tenDV, String donViTinh, String donGia) {
		return dv.themDichVu(maDV, tenDV, donViTinh, donGia);
	}

}
