package com.saeyan.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;

import com.saeyan.dao.MemberDAO;
 
/**
 * Servlet implementation class MemberDelete
 */
@WebServlet("/memberDelete.do")
public class MemberDeleteServlet extends HttpServlet {
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userid = request.getParameter("userid");
        
        request.getRequestDispatcher("member/memberDelete.jsp").forward(request, response);
        
    }
 
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userid = request.getParameter("userid");
        MemberDAO dao = MemberDAO.getInstance();
        dao.deleteMember(userid);
        HttpSession session = request.getSession();
        session.invalidate();
        request.getRequestDispatcher("member/memberDelete.jsp").forward(request, response);
        
    }
 
}
 
