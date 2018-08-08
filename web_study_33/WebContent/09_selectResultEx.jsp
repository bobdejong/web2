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
	request.setCharacterEncoding("UTF8");
	String edu = request.getParameter("edu");
	String na = request.getParameter("na");
	String [] like = request.getParameterValues("like");
	%>
	
	<%="학력:"+edu %><br>
	<%="소속국가:"+na %><br>
	<%="관심분야:" %><br>
	
	<%
		for(int i=0;i<like.length;i++){
	%>
		<%=like[i]+"&nbsp;&nbsp;" %>
	<%} %>
	<br><br>
	<%
		for(String str:like)
			out.print(str+" ");
	%>
	
	
	
</body>
</html>