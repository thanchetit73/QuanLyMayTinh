package fpt.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fpt.bo.DichVuBo;
import fpt.bo.KhachHangBo;

/**
 * Servlet implementation class ThemDichVuSeverlet
 */
public class ThemDichVuSeverlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThemDichVuSeverlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		DichVuBo s = new DichVuBo();
		if(request.getParameter("them")!=null) {
			String maDV = request.getParameter("dvid");
			String tenDV = request.getParameter("tendv");
			String donViTinh = request.getParameter("donvitinh");
			String donGia = request.getParameter("dongia");
			try {				
				int i = s.themDichVu(maDV, tenDV, donViTinh, donGia);
				request.setAttribute("ktthem", String.valueOf(i));					
			}
			 catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		RequestDispatcher rd= request.getRequestDispatcher("DichVuServerlet");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
