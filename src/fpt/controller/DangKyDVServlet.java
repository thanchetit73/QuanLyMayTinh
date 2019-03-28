package fpt.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fpt.bean.DichVu;
import fpt.bean.KhachHang;
import fpt.bean.May;
import fpt.bo.DangKYDVBO;
import fpt.bo.DangKyMayBO;
import fpt.bo.DichVuBo;
import fpt.bo.KhachHangBo;
import fpt.bo.MayBo;

/**
 * Servlet implementation class DangKyDVServlet
 */
public class DangKyDVServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DangKyDVServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DichVuBo dv = new DichVuBo();
		KhachHangBo kh = new KhachHangBo();
		DangKYDVBO dk = new DangKYDVBO();
		ArrayList<DichVu> dsdv;
		ArrayList<KhachHang> dskh;
		//ArrayList<DangKyMay> dsdk;
		if(request.getParameter("them")!=null) {
			String maKH = request.getParameter("khid");
			String maDV = request.getParameter("dvid");
			String  nsd= request.getParameter("nsd");
			/*SimpleDateFormat dd= new SimpleDateFormat("dd-MM-yyyy");
			java.sql.Date nbdsd = null;
			try {
				nbdsd = (Date) dd.parse(nbdsd1);
			} catch (ParseException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}				*/
			String gsd = request.getParameter("gsd");
			String soLuong = request.getParameter("soluong");
			try {				
				int i = dk.dangKySuDungDichVu(maKH, maDV, nsd, gsd, Integer.parseInt(soLuong));
				request.setAttribute("ktthem", String.valueOf(i));					
			}
			 catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		try {
			dsdv = dv.getDichVu();
			dskh = kh.getKhachHang();
			request.setAttribute("dsdv", dsdv);
			request.setAttribute("dskh", dskh);			
			RequestDispatcher rd = request.getRequestDispatcher("MH8-DKSDDichVu.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
