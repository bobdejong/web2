<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%!
    	Connection conn=null;
    	Statement stmt=null;
    	ResultSet rs=null;
    	String url="jdbc:oracle:thin:@localhost:1521:XE";
    	String uid="scott";
    	String pass="tiger";
    	String sql="select * from item";
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>입력 완료된 정보</h2>
<table border=1>
	<%
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection(url,uid,pass);
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()){
				out.print("<tr>");
				out.print("<td>"+rs.getString("name")+"</td>");			
				out.print("<td>"+rs.getInt("price")+"</td>");
				out.print("<td>"+rs.getString("description")+"</td>");
				out.print("</tr>");
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(rs !=null)
					rs.close();
				if(stmt != null)
					stmt.close();
				if(conn != null)
					conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
			
		}
	%>
</table>



</body>
</html>