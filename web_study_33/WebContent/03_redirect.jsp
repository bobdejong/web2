<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>03_redirect(웹 서버가 브라우저에게 지정한 페이지로 이동하도록 지시)</title>
</head>
<body>
구글 홈페이지로 이동
<%
	response.sendRedirect("http://www.google.co.kr");
%>	
	
	
</body>
</html>