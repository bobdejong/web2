<%@page import="java.net.URLDecoder"%>
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
	Cookie[] ck=request.getCookies();
	String str=null;
	if(ck != null){
		for(Cookie c:ck){
			str=URLDecoder.decode(c.getValue(),"UTF-8");
		}
		out.print(str);
	
%>
님 안녕하세요!<br>
저희 홈페이지에 방문 고마워<br>
<form method="post" action="05_exlogout.jsp">
	<input type="submit" value="로그아웃">
</form>
<%
	}else{
%>
	<h2>로그인에 실패했습니다.</h2>
	<a href="05_ex_loginForm.jsp">돌아가기</a>
<%} %>

</body>
</html>