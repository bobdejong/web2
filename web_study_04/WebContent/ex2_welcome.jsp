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
	<%
	Enumeration<String> id=session.getAttributeNames();
	while(id.hasMoreElements()){
		String name=(String)id.nextElement();
		//String value=(String)session.getAttribute(name) 26이 인트타입이라 안됨
		String value=(String)session.getAttribute(name);
		out.print(name+":"+value+"<br>");
}
	
	
	%>
	<a href="ex2_logout.jsp">로그아웃</a>
</body>
</html>