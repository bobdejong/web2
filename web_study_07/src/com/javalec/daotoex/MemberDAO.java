package com.javalec.daotoex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class MemberDAO {  //Data Access Object
	
	private String url="jdbc:oracle:thin:@localhost:1521:XE";
	private String uid="scott";
	private String upw="tiger";
	
	public MemberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<MemberDTO> memberSelect(){
		
		ArrayList<MemberDTO> dtos=new ArrayList<MemberDTO>(); 
		/*ArrayList<MemberDTO> dtos1=new ArrayList<MemberDTO>(); */
		/*ArrayList<String> dto1=new ArrayList<String>(); 
		dto1.add("배");*/
		
		Connection con=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		try {
			con=DriverManager.getConnection(url, uid, upw);
			stmt=con.createStatement();
			rs=stmt.executeQuery("select * from member2");
			
			while(rs.next()) {
				String name=rs.getString("name");
				String id=rs.getString("id");
				String pw=rs.getString("pw");
				String phone1=rs.getString("phone1");
				String phone2=rs.getString("phone2");
				String phone3=rs.getString("phone3");
				String gender=rs.getString("gender");
				
				//Data Transfer Object or value Object
				MemberDTO dto=new MemberDTO(name,id,pw,phone1,phone2,phone3,gender);
				dtos.add(dto);
				/*MemberDTO dt=new MemberDTO(name,id,pw,phone1,phone2,phone3,gender);
				dtos1.add(dto);*/
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try{
				if(rs !=null)
					rs.close();
				if(stmt != null)
					stmt.close();
				if(con != null)
					con.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		return dtos;
		
	}
}




