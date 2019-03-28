package fpt.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fpt.bean.May;
import fpt.bo.MayBo;

/**
 * Servlet implementation class SuaMaySeverlet
 */
public class SuaMaySeverlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SuaMaySeverlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("user")==null){
			response.sendRedirect("LoginServlet");
			return;
		}
		request.setCharacterEncoding("utf-8");
		MayBo ds = new MayBo();
		ArrayList<May> dsm = ds.getMay();
		request.setAttribute("dsm", dsm);
		String mayid= request.getParameter("mayid");
		if(request.getParameter("sua")!=null) {
			String vitri = request.getParameter("vitri");
			String trangthai = request.getParameter("trangthai");						
		try {		
			ds.capNhatMay(mayid, vitri, trangthai);	
			response.sendRedirect("MayController");
		}
		 catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			}
		}else {
			request.setAttribute("get1may_rq",ds.get1May(mayid));
		RequestDispatcher rd= request.getRequestDispatcher("CapNhatMay.jsp");
		rd.forward(request, response);
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
