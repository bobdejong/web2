<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>04_testLogin</title>
</head>
<body>
	<%
	String id="ezen";
	String pwd="1004";
	String name="나천사";
	request.setCharacterEncoding("UTF-8");
	if(id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd"))){
		response.sendRedirect("04_main.jsp?name="+URLEncoder.encode(name,"UTF-8"));
		
	}else{
		response.sendRedirect("04_loginForm.jsp");
	}
	
	
	%>


</body>
</html>