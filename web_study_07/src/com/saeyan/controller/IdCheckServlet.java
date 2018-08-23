package com.saeyan.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import com.saeyan.dao.MemberDAO;
 
 
@WebServlet("/idCheck.do")
public class IdCheckServlet extends HttpServlet {
    
    // #21] 스크립트에서 창에 뷰를 담기 위해서 넘어왔다.    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        String userid = request.getParameter("userid");
        
        // 해당 아이디가 있는지 없는지 confirm 작업!
        MemberDAO dao = MemberDAO.getInstance();
        
        // #22] userid를 들고 dao로 가자!
        int result = dao.confirmID(userid);
        
        //#25] 결과값을 갖고 돌아왔다. result하고 userid값을
        // jsp에서 사용할 수 있도록 request에 담고...dispatch시켜 주자!
        
        request.setAttribute("result", result);
        request.setAttribute("userid", userid);
        
        //#26] idCheck.jsp로 가자(result, userid)
        request.getRequestDispatcher("member/idCheck.jsp").forward(request, response);
        
    }
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 
    
    }
 
}