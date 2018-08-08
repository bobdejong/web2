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
	String cookieName="myCookie";
	Cookie cookie=new Cookie(cookieName,"Apple");
	cookie.setMaxAge(10*60);
	cookie.setValue("Melone");
	response.addCookie(cookie);
%>

<h1>Example Cookie</h1>
<p>
쿠키를 만듭니다.<br>
쿠키 내용은 <a href="04_tasteCookie_answer.jsp">여기로</a>!!!
</p>
</body>
</html>