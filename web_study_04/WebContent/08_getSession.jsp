<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>세션에 값 저장하기</h3>
<%
	session.setAttribute("id", "bluesong");
	session.setAttribute("pwd", "test1234");
	session.setAttribute("age", 26);
%>

<h3>세션에 설정된 모든 값 얻어오기</h3>
<%

	Enumeration<String> names=session.getAttributeNames();
	while(names.hasMoreElements()){
			String name=(String)names.nextElement();
			//String value=(String)session.getAttribute(name) 26이 인트타입이라 안됨
			String value=(String)session.getAttribute(name).toString();
			out.print(name+":"+value+"<br>");
	}
%>
</body>
</html>