package com.saeyan.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/logout.do")
public class LogoutServlet extends HttpServlet {
    
    // #47] main.jsp에서 logout버튼 눌러서 왔다.
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // loginUser는 session 속성에 들어있다.
        // session속성을 불러내서 해당 session을 invalidate시키자!
        // 그리고 login.jsp로 보내자!
        HttpSession session = request.getSession();
        session.invalidate(); // loginUser소멸됨(세션 초기화)
        request.getRequestDispatcher("member/login.jsp").forward(request, response);
        
        // #다시 로그인부터!!
        // # main.jsp로 가서 #48]번으로 이동한다.
    }
 
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
    }
 
}