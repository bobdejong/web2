<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
		Connection connection = null;
		PreparedStatement pstmt = null;
		/* Statement stmt = null; */
		ResultSet rs = null;
		String url="jdbc:oracle:thin:@localhost:1521:XE";
		String uid="scott";
		String pass="tiger";
		/* String sql="select * from item"; */
		String name, description;
		String sql="insert into item values(?,?,?)";
		int price;
		

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
레코드가 추가되었습니다. <br>
<a href="itemWrite.jsp">결과보기</a>
<%	
	request.setCharacterEncoding("UTF-8");
	name= request.getParameter("name");
	price= Integer.parseInt(request.getParameter("price"));
	description= request.getParameter("description");
	//String query = "insert into item values('" + name + "',  price  , '" + description + "')";
	
	
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		connection=DriverManager.getConnection(url, uid, pass);
		pstmt=connection.prepareStatement(sql);
		
		pstmt.setString(1, name);
		pstmt.setInt(2, price);
		pstmt.setString(3, description);
		
		/* pstmt.executeUpdate(); */
		
		    int i=pstmt.executeUpdate();
		    if(i==1) {
			System.out.println("insert success");
			/* response.sendRedirect("itemWrite.jsp"); */
			
		}else {
			System.out.println("insert fail");
			response.sendRedirect("itemWriteForm.jsp");
		}   
		  
		
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		try {
			if(pstmt != null)
				pstmt.close();
			if(connection != null)
				connection.close();
		}catch(Exception e) {
			
		}
	}
	
	
	
	
%>


</body>
</html>