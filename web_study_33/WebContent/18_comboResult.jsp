<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	if(request.getParameter("select").equals("1")){
		response.sendRedirect("http://www.google.co.kr");
	}
	if(request.getParameter("select").equals("2")){
		response.sendRedirect("http://www.naver.co.kr");
	}
	if(request.getParameter("select").equals("3")){
		response.sendRedirect("http://www.daum.co.kr");
	}
	
	%>


</body>
</html>