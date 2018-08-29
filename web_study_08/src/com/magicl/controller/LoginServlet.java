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
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.do")
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
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		/*RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
		rd.forward(request, response);*/
		
		request.getRequestDispatcher("login.jsp").forward(request, response);
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		System.out.println("로그인");
		
		request.setCharacterEncoding("UTF-8");
		
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		String lev=request.getParameter("lev");
		String url=null;
		
		EmployeesDAO empDAO=EmployeesDAO.getInstance();
		int result= empDAO.userCheck(id, pwd, lev);
		
		
		
		
		
	        if(result == 2 || result == 3){
	           EmployeesVO emp =new EmployeesVO();
	           emp =empDAO.getMember(id);
	           
	         
	          /* System.out.println(emp.getId());*/
	           
	           HttpSession session = request.getSession();
	           
	           session.setAttribute("loginUser", emp);
	           session.setAttribute("result", result);
	           url="main.jsp";
	        }else {
	        	url="login.jsp";
	        	if(result == 1) {
	        		request.setAttribute("message", "로그인 실패:레벨이 불일치 합니다.");
	        	}else if(result == 0) {
	        		request.setAttribute("message", "로그인 실패:비밀번호가 틀립니다.");
	        	}else {
	        		request.setAttribute("message", "로그인 실패:존재하지 않는 아이디 입니다.");
	        	}
	       
		
	}
	       
	       
	        	request.getRequestDispatcher(url).forward(request, response);	
	}
}
