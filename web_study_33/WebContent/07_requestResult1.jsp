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
		request.setCharacterEncoding("UTF-8");
		String name=request.getParameter("name");
		String studentNum=request.getParameter("studentNum");
		String namesex=request.getParameter("namesex");		
		String major=request.getParameter("major");
		
		out.print("<h2>Request Example1</h2><br><br>");
		out.print("성명:"+name+"<br><br>");
		out.print("학번:"+studentNum+"<br><br>");
		
		if(namesex.equals("male")){
		out.print("성별:남자<br><br>");
		}else{
			out.print("성별:여자<br><br>");
		}
		
		out.print("학과:"+major+"<br><br>");
		
	
	
	
	%>

</body>
</html>