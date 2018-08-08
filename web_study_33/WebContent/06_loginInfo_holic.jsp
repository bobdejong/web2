<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인 입력 피라미터 출력</h1>
	<%
	request.setCharacterEncoding("UTF-8");
	String userid=request.getParameter("userid");
	String passwd=request.getParameter("passwd");
	%>
	
	아이디값:<%=request.getParameter("userid") %>
	비밀번호:<%=request.getParameter("passwd") %>
	
</body>
</html>