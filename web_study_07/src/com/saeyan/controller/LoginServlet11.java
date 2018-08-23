package com.saeyan.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.saeyan.dao.MemberDAO;
import com.saeyan.dto.MemberVO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/Login.do")
public class LoginServlet11 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet11() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	      // request로 넘어온 아이디와 비번을 DAO로 넘기면 된다.
        String url = "member/login.jsp";
        
        String userid = request.getParameter("userid");
        String pwd = request.getParameter("pwd");
        
        // 리턴받을 수 있는 인스턴스 객체가 있다.
        // 그래서 MemberDao 타입으로 받으면 된다.
        MemberDAO dao = MemberDAO.getInstance();
        
        // #8] dao에 아이디와 pw를 체크하러 가자!
        // #11] 메서드 수행하고 왔다.(1, 0, -1중에 하나 들고 왔다)
        // #42] (첫 가입 후) 1번 신호를 갖고 오게 됐다.
        int result = dao.userCheck(userid, pwd);// 리턴타입은 int.
                                // 1:로그인 상태  0:아이디는 있으나 비번이 안 맞는지  -1:아이디 부재
        if(result == 1){
            // #43] 세션에 그 사람 정보를 올려놓자. 그리고 통행증도 발급하자.(loginUser)
            
            MemberVO vo = dao.getMember(userid);
            HttpSession session = request.getSession();
            session.setAttribute("loginUser", vo);
            
            // 회원가입에 성공하면 main.jsp로 가니까 굳이 써야 할 의미가 없다.
            request.setAttribute("message", "회원가입을 성공했어요.");
            
            //#44] main.jsp로 이동 - loginUser를 가지고 간다.(한 사람의 정보)
            url = "main.jsp";
        }else if(result == 0){
            request.setAttribute("message", "비밀번호가 틀렸어요.");
            
        }else if(result == -1){
            request.setAttribute("message", "아이디가 존재하지 않습니다.");
        }
        // #12] login.jsp에 가자(message를 들고 간다.)
        System.out.println(url);
        request.getRequestDispatcher(url).forward(request, response);
    }
		
		
		
		
	}


