package com.javalec.ex;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class joinOk
 */
@WebServlet("/joinOk")
public class joinOk extends HttpServlet {
	//private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	private Connection connection;
	private Statement stmt;
	
	private String name,id,phone1,phone2,phone3,gender,pw;
	
    public joinOk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("doGet");
		actionDo(request,response);
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		System.out.println("doPost");
		actionDo(request,response);
	}
	
	private void actionDo(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		
		request.setCharacterEncoding("UTF-8");
		
		name=request.getParameter("name");
		id=request.getParameter("id");
		pw=request.getParameter("pw");
		phone1=request.getParameter("phone1");
		phone2=request.getParameter("phone2");
		phone3=request.getParameter("phone3");
		gender=request.getParameter("gender");
		
		String query="insert into member2 values('"+name+"', '"+id+"', '"+pw+"', '"+phone1+"', '"+phone2+"', '"+phone3+"', '"+gender+"')";
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			stmt=connection.createStatement();
			int i=stmt.executeUpdate(query);
			if(i==1) {
				System.out.println("insert success");
				response.sendRedirect("joinResult.jsp");
				
			}else {
				System.out.println("insert fail");
				response.sendRedirect("join.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(stmt != null)
					stmt.close();
				if(connection != null)
					connection.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
