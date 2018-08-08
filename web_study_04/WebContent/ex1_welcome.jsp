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
	Cookie [] cookies=request.getCookies();
	for(Cookie c:cookies){
		out.print(c.getName()+":"+c.getValue()+"<br>");
	
		if(c.getValue().equals("abcde"))
			out.print(c.getValue()+"님 안녕");
	}
	
%>
<a href="ex1_logout.jsp">로그아웃</a>

</body>
</html>