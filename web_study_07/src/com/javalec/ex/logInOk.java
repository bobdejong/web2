package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class logInOk
 */
@WebServlet("/logInOk")
public class logInOk extends HttpServlet {
	//private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	private Connection connection;
	private Statement stmt;
	private ResultSet resultSet;
	
	private String name,id,pw,phone1,phone2,phone3,gender;
	
    public logInOk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		actionDo(request,response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		actionDo(request,response);
			
	}
	private void actionDo(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		
		String query = "select * from member2 where id = '" + id + "' and pw = '" + pw + "'";
			
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe" , "scott" , "tiger");
				stmt = connection.createStatement();
				resultSet =  stmt.executeQuery(query);

				
				
				//while(resultSet.next()) 
				if (resultSet.next()){
					if(pw.equals(resultSet.getString("pw"))) {
					
				
						 
							name = resultSet.getString("name");
							id = resultSet.getString("id");
							pw = resultSet.getString("pw");
							phone1 = resultSet.getString("phone1");
							phone2 = resultSet.getString("phone2");
							phone3 = resultSet.getString("phone3");
							gender = resultSet.getString("gender");
						
							System.out.println(name);	
						
				HttpSession httpSession = request.getSession();
				httpSession.setAttribute("name", name);
				httpSession.setAttribute("id", id);
				httpSession.setAttribute("pw", pw);
				
				
				
				response.sendRedirect("loginResult.jsp");
					
					
				}
			}else {
				/*PrintWriter script=response.getWriter();
				script.println("<script>");
				script.println("alert('패스워드가 틀렸습니다.');");
				script.println("</script>");*/
				
				response.setContentType("text/html; charset=UTF-8");
				//response.setCharacterEncoding("UTF-8"); 이건 안됨
				
				PrintWriter out=response.getWriter();
				//response.setContentType("text/html; charset=UTF-8"); 안됨

				//response.setCharacterEncoding("UTF-8"); 안됨
				//out.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />"); 안됨
				out.println("<script> alert('password가 틀렸습니다.');</script>");
				out.println("<script> location.href='login.html' </script>");
				/*PrintWriter wr = response.getWriter();
				wr.flush();
				wr.close();*/
				//request.getRequestDispatcher("login.html").forward(request, response);
				//response.sendRedirect("login.html");
				
				
				
			}
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if(resultSet != null) resultSet.close();
					if(stmt != null) stmt.close();
					if(connection != null) connection.close();
				} catch (Exception e2) {
				e2.printStackTrace();
				}
			}

			
		}


	}
