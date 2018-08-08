<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	환영합니다.
	<%=request.getAttribute("name") %>
	<% 
		String age=request.getParameter("age");
		String name=(String)request.getAttribute("name"); //object타일이라 형변환해주어야함
	out.print(request.getAttribute("name")+"and"+age); %>
</body>
</html>