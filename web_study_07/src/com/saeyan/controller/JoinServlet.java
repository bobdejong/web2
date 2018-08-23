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
 
@WebServlet("/join.do")
public class JoinServlet extends HttpServlet {
    
    // #15] login.jsp에서 회원가입 버튼 눌러서 왔다.
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
        // #16] join.jsp로 가자.
        request.getRequestDispatcher("member/join.jsp").forward(request, response);    
    }
    // #34] join.jsp에서 입력정보 6개를 들고 왔다.
    // request에 6개 항목을 꺼내자!
    // insert에 넣기 위해 bean을 만들자
    // dto 시키면 된다.
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        
        String name = request.getParameter("name");
        String userid = request.getParameter("userid");
        String pwd = request.getParameter("pwd");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String admin = request.getParameter("admin");
        
        MemberVO vo = new MemberVO();
        vo.setName(name);
        vo.setUserid(userid);
        vo.setPwd(pwd);
        vo.setEmail(email);
        vo.setPhone(phone);
        vo.setAdmin(Integer.parseInt(admin));
        
        MemberDAO dao = MemberDAO.getInstance();
        //#35] DB에 insert 시키러 가자!
        int result = dao.insertMember(vo);
        
        //id~admin 6개의 정보가 있다. 그 중에서 userid를 갖고 login.jsp로 보내자! 
        // id를 여기저기서 활용하기 위해 session에 담아 놓자.
        HttpSession session = request.getSession();
        if(result == 0){
            request.setAttribute("message", "회원가입에 실패했습니다.");
        } else{
            request.setAttribute("message", "회원가입에 성공했습니다.");
            session.setAttribute("userid", vo.getUserid());
            
        }
        
        // #38] login.jsp로 이동해서 - 가입 후, 한번 확인차 로그인 시키도록 하자.
        request.getRequestDispatcher("member/login.jsp").forward(request, response);
        
    }
 
}