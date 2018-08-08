<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! String id,pw;%> <!-- 전역변수 선언 -->

<%
id=request.getParameter("id");
pw=request.getParameter("pw");

	if(id.equals("abcde") && pw.equals("12345")){
		Cookie c=new Cookie("id",id);
		c.setMaxAge(60*60);
		response.addCookie(c);
		/* response.addCookie(new Cookie("id","id")); */
		response.sendRedirect("ex1_welcome.jsp");
	}else{
		response.sendRedirect("ex1_login.jsp");
	}

%>


</body>
</html>