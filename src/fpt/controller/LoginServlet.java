package fpt.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fpt.bean.TaiKhoan;
import fpt.bo.TaiKhoanBO;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		TaiKhoanBO kh = new TaiKhoanBO();
	    HttpSession session = request.getSession();
	    RequestDispatcher rd;
	    if(request.getParameter("dangnhap")!=null){
	    	String un=request.getParameter("txtun");
		    String pass=request.getParameter("txtpass");
	     TaiKhoan ktdn;
		try {
			ktdn = kh.kiemtra(un, pass);
			if( ktdn==null) {
				request.setAttribute("kt", "0");
		    	rd= request.getRequestDispatcher("Login.jsp");
		    	rd.forward(request, response);
		    	return;
		    }else
		    {
		    	//HttpSession session= request.getSession();
		    	session.setAttribute("user",ktdn.getUserName() );
		    	session.setAttribute("pass",ktdn.getPassword() );
		    	//session.setAttribute("thongtin", "Xin chào " + ktdn.getHoten());
		    	rd= request.getRequestDispatcher("MayController");
		    	//response.sendRedirect("MayController");
		    	rd.forward(request, response);
		    	return;
		    }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
	    }
	    rd= request.getRequestDispatcher("Login.jsp"); 
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
