package fpt.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fpt.bean.DangKyMay;
import fpt.bean.KhachHang;
import fpt.bean.May;
import fpt.bo.DangKyMayBO;
import fpt.bo.KhachHangBo;
import fpt.bo.MayBo;

/**
 * Servlet implementation class DangKyMayServlet
 */
public class DangKyMayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DangKyMayServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		MayBo may = new MayBo();
		KhachHangBo kh = new KhachHangBo();
		DangKyMayBO dk = new DangKyMayBO();
		ArrayList<May> dsm;
		ArrayList<KhachHang> dskh;
		//ArrayList<DangKyMay> dsdk;
		if(request.getParameter("them")!=null) {
			String maKH = request.getParameter("khid");
			String maMay = request.getParameter("mayid");
			String  nbdsd1= request.getParameter("nbdsd");
			/*SimpleDateFormat dd= new SimpleDateFormat("dd-MM-yyyy");
			java.sql.Date nbdsd = null;
			try {
				nbdsd = (Date) dd.parse(nbdsd1);
			} catch (ParseException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}				*/
			String gbdsd = request.getParameter("gbdsd");
			String tgsd = request.getParameter("tgsd");
			try {				
				int i = dk.dangKySuDungMay(maKH, maMay, nbdsd1, gbdsd,Integer.parseInt(tgsd));
				request.setAttribute("ktthem", String.valueOf(i));					
			}
			 catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		try {
			dsm = may.getMay();
			dskh = kh.getKhachHang();
			request.setAttribute("dsm", dsm);
			request.setAttribute("dskh", dskh);			
			RequestDispatcher rd = request.getRequestDispatcher("MH7-DKSDMay.jsp");
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
