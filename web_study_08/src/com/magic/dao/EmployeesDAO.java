package com.magic.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.magic.dto.EmployeesVO;


public class EmployeesDAO {
		private EmployeesDAO(){
			
		}
		
		private static EmployeesDAO instance = new EmployeesDAO();
		
		public static EmployeesDAO getInstance() {
			return instance;
		}
	
		  public Connection getConnection(){
		        // 블럭 후 alt+shift+z 후 try block
		        Connection conn = null;
		        
		        try {
		            Context initContext = new InitialContext();
		            Context envContext  = (Context)initContext.lookup("java:/comp/env");
		                                                        // myoracle <-- context.xml
		            DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
		            
		            conn = ds.getConnection();
		            
		        } catch(Exception e) {
		            e.printStackTrace();
		        }
		        
		        return conn;
		    }
		  
		  public int userCheck(String userid, String pwd, String lev) {
			  int result=1;
			  Connection conn=null;
			  String sql="select * from employees where id=?";
			  PreparedStatement pstmt=null;
			  ResultSet rs=null;
			  
			  
			  try{
		            conn = getConnection(); // 오라클 11, localhost에 xe, scott1400 tiger가 연결되어있음
		            pstmt = conn.prepareStatement(sql);
		            pstmt.setString(1, userid);
		            
		            rs = pstmt.executeQuery();
		            if(rs.next()){
		                if(rs.getString("pass").equals(pwd)){                    
		                    if(lev.equals(rs.getString("lev"))) {
		                	result = 2; //관리자로 로그인
		                	if(lev.equals("B")) {
		                		result =3; //일반회원으로 로그인
		                	}
		                    }else { //level 불일치
		                    	result =1;
		                    }
		                } else{ //pass 불일치
		                    
		                    result = 0;  
		                }
		            }else { //아이디 불일치
		            	
		            	result=-1;
		            }
		            
		            
		        }catch(Exception e){
		            // SQLException 쓰면 되는데 혹시 몰라 Exception
		            e.printStackTrace();
		        }finally{
		            try{
		                if(rs != null) rs.close();
		                if(pstmt != null) pstmt.close();
		                if(conn != null) conn.close();
		            }catch(Exception e){
		                e.printStackTrace();
		            }
		        }
		        
		        // #10] LoginServlet의 doPost로 가자!
		        return result;    // 1, 0, -1
			  
			  
			  
		  }
		  
		  
		  public EmployeesVO getMember(String id) {
			  EmployeesVO member = null;
		        
		        String sql="select * from member where id=?";
		        Connection conn = null;
		        // 바인딩 변수가 있으면 preparedStatement, 없으면 Statement
		        PreparedStatement pstmt = null;
		        // 아이디와 비번이 있는지 없는지 조회를 해가지고 와! resultSet
		        ResultSet rs = null;
		        
		        
		        try{
		            conn = getConnection(); // 오라클 11, localhost에 xe, scott1400 tiger가 연결되어있음
		            pstmt = conn.prepareStatement(sql);
		            pstmt.setString(1, id);
		            
		            rs = pstmt.executeQuery();
		            if(rs.next()){
		            	member = new EmployeesVO();
		            	member.setId(rs.getString("id"));
		            	member.setPass(rs.getString("pass"));
		            	member.setName(rs.getString("name"));
		            	member.setLev(rs.getString("lev"));
		            	member.setPhone(rs.getString("phone"));
		            	member.setEnter(rs.getDate("enter"));
		            	member.setGender(rs.getInt("gender"));
		                
		            }
		            
		        }catch(Exception e){
		            
		            e.printStackTrace();
		        }finally{
		            try{
		                if(rs != null) rs.close();
		                if(pstmt != null) pstmt.close();
		                if(conn != null) conn.close();
		            }catch(Exception e){
		                e.printStackTrace();
		            }
		        }
		        
		        
		        return member;
		    }
			  
		  public void insertMember(EmployeesVO member) {
			  String sql="insert into employees values(?,?,?,?,sysdate,?,?)";
			  Connection conn = null;
		        PreparedStatement pstmt = null;
		        
		        try{
		            conn = getConnection();
		            pstmt = conn.prepareStatement(sql);
		            pstmt.setString(1, member.getId());
		            pstmt.setString(2, member.getPass());
		            pstmt.setString(3, member.getName());
		            pstmt.setString(4, member.getLev());
		            pstmt.setInt(5, member.getGender());
		            pstmt.setString(6, member.getPhone());
		            
		           System.out.println(pstmt.executeUpdate());
		            
		        }catch(Exception e){
		            
		            e.printStackTrace();
		        }finally{
		            try{
		                if(pstmt != null) pstmt.close();
		                if(conn != null) conn.close();
		            }catch(Exception e){
		                e.printStackTrace();
		            }
		        }
		       
		       
		    }
			  
			  
		  public int updateMember(EmployeesVO evo) {
			  String sql="update employees set gender=?, pass=?, name=?, lev=?, phone=? where id=?";
		        Connection conn = null;
		        // 바인딩 변수가 있으면 preparedStatement, 없으면 Statement
		        PreparedStatement pstmt = null;
		        int result = 0;
		        
		        try{
		            conn = getConnection();
		            pstmt = conn.prepareStatement(sql);
		            pstmt.setInt(1, evo.getGender());
		            pstmt.setString(2, evo.getPass());
		            pstmt.setString(3, evo.getName());
		            pstmt.setString(4, evo.getLev());
		            pstmt.setString(5, evo.getPhone());
		            pstmt.setString(5, evo.getId());
		 
		            result = pstmt.executeUpdate();
		            
		        }catch(Exception e){
		           
		            e.printStackTrace();
		        }finally{
		            try{
		                if(pstmt != null) pstmt.close();
		                if(conn != null) conn.close();
		            }catch(Exception e){
		                e.printStackTrace();
		            }
		        }
		        
		        return result;
		    }
	
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
			  
		  }










		  
		  
		  
		  
		  
		  
		  
	  
		  
		  
		

