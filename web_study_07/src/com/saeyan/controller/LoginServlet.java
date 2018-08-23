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
// 로그인 상태를 알 수 있는 것은 session
        
        // 어디로 갈지 경로를 미리 담아두자.
        String url="member/login.jsp";
        
        // 세션에 데이터가 있니? 그러면 main.jsp. 데이터가 없으면 login.jsp.
        HttpSession session = request.getSession(); // 세션 꺼내오기
        // jsp에선 내장 객체로 session을 그냥 바로 쓰면 되지만
        // 서블릿에서는 이렇게 만들어서 쓰자.
        
        // loginUser로 atrribute를 달아놓자.
        if(session.getAttribute("loginUser") != null){ // 로그인 상태면!
            url="main.jsp";
        }
        
        //#] login.jsp로 가서 id 하고 pw 입력하자!
        // response.sendRedirect(); 치명적 약점 : 데이터를 보내야 하는 상황이면
        //                            그럴 때는 url에 데이터를 일일이 써야 한다.                            
        // 데이터를 실어서 넘어가는 RequestDispatcher
        /*RequestDispatcher rd = request.getRequestDispatcher("member/login.jsp");
        rd.forward(request, response);
        특별히 살 붙일 게 있다면 변수로 만들어서 해도 되는데 지금은 굳이 없으니
        한 줄로 간단하게
        */
        request.getRequestDispatcher(url).forward(request, response);
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


