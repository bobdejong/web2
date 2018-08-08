<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
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
	Cookie cookie=new Cookie("name",URLEncoder.encode("홍길동","UTF-8"));
	response.addCookie(cookie);
%>
	<%=cookie.getName() %>쿠키의 값="<%=cookie.getValue() %>"<br>
	<%=URLDecoder.decode(cookie.getValue(),"UTF-8") %>

</body>
</html>