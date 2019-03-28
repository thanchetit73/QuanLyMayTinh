package fpt.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

import fpt.bo.KhachHangBo;
import fpt.bo.MayBo;

/**
 * Servlet implementation class ThemKhachHangSeverlet
 */
public class ThemKhachHangSeverlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThemKhachHangSeverlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		KhachHangBo s = new KhachHangBo();
		if(request.getParameter("them")!=null) {
			String maKH = request.getParameter("khid");
			String tenKH = request.getParameter("tenkh");
			String diaChi = request.getParameter("diachi");
			int sdt = Integer.parseInt(request.getParameter("sdt"));
			String email = request.getParameter("email");
				
				boolean kt =s.checkKhachHang(maKH);
				System.out.println(kt);
				if(kt == false) {
					request.setAttribute("ktthem", "Thêm thất bại");
					response.sendRedirect("MH2-TaoMoiKHachHang.jsp");
				
			}else {
						
				int i = s.themKhachHang(maKH, tenKH, diaChi, sdt, email);
				request.setAttribute("ktthem", "Thêm thành công");	
				RequestDispatcher rd= request.getRequestDispatcher("KhachHangSeverlet");
				rd.forward(request, response);
			}
			
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
