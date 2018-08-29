package com.magicl.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.magic.dao.EmployeesDAO;
import com.magic.dto.EmployeesVO;


/**
 * Servlet implementation class MypageServlet
 */
@WebServlet("/mypage.do")
public class MypageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MypageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	HttpSession session=request.getSession();
	EmployeesVO emp=(EmployeesVO)session.getAttribute("loginUser");
	
	if(emp != null) {
		String url="mypage.jsp";
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}else {
		response.sendRedirect("login.do");
	}
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		request.setCharacterEncoding("UTF-8");
		System.out.println(request.getParameter("name"));
		HttpSession session =request.getSession();
		EmployeesVO member=new EmployeesVO();
	
		member.setId(request.getParameter("id"));
		member.setPass(request.getParameter("pwd"));
		member.setName(request.getParameter("name"));
		member.setLev(request.getParameter("lev"));
		
	    if(request.getParameter("gender")!=null) {
	    	member.setGender(Integer.parseInt(request.getParameter("gender").trim()));
	    	
	    }
	    member.setPhone(request.getParameter("phone"));
	  
	    EmployeesDAO.getInstance().updateMember(member);
	    
	   EmployeesVO emp= EmployeesDAO.getInstance().getMember(member.getId());
	    
	   request.setAttribute("member", emp);
	   request.setAttribute("message", "회원정보가 수정되었습니다.");
	   
	   session.setAttribute("loginUser", emp);
	   
	   
	   int result=EmployeesDAO.getInstance().userCheck(emp.getId(), emp.getPass(), emp.getLev());
	   
	   session.setAttribute("result", result);
	   
	   String url="joinsuccess.jsp";
	   
	   RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	   
	   
		
	
	}

}
