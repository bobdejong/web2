package com.saeyan.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.saeyan.dao.MemberDAO;
import com.saeyan.dto.MemberVO;
 
 
@WebServlet("/memberUpdate.do")
public class MemberUpdateServlet extends HttpServlet {
    
   // #49] main.jsp에서 회원 정보 수정하러 왔다.
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        
        String userid = request.getParameter("userid");
        
        // 위 회원의 정보를 가져오자.(-> 수정 폼 페이지에 뿌려놓자.)
        // #50] 수정할 회원 정보를 가져다가 뷰에 뿌리자.
        MemberDAO dao = MemberDAO.getInstance();
        MemberVO vo = dao.getMember(userid);
        
        // #53] vo에 담아서 왔다.
        request.setAttribute("vo", vo);
        
        // #54] memberUpdate.jsp에 뿌려 놓자!
        request.getRequestDispatcher("member/memberUpdate.jsp").forward(request, response);
    }

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    request.setCharacterEncoding("utf-8");
    
    MemberVO vo = new MemberVO();
    vo.setName(request.getParameter("name"));
    vo.setUserid(request.getParameter("userid"));
    vo.setPwd(request.getParameter("pwd"));
    vo.setEmail(request.getParameter("email"));
    vo.setPhone(request.getParameter("phone"));
    vo.setAdmin(Integer.parseInt(request.getParameter("admin")));
    
    // #58] 수정하러 가자!
    MemberDAO.getInstance().updateMember(vo);
    
    // #61] 수정 후, main.jsp로 가려면? login.do의 get으로 가자
    // 굳이 세션에 데이터가 있는 상태에서.. 굳이 request로 전달 할 필요없다.
    // 페이지 자체를 변경시키는 redirect로 가자!
    response.sendRedirect("login.do");
    
    
}}