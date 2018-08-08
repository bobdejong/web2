<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.net.URLEncoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>15_actionTagTest.jsp</title>
</head>
<body>
	<%
	String userID=request.getParameter("userID");
	String userPwd=request.getParameter("userPwd");
	String loginCheck=request.getParameter("loginCheck");
	if(loginCheck.equals("user")){
		
	%>
	<jsp:forward page="15_userMain.jsp">
		<jsp:param value='<%=URLEncoder.encode("전고객","UTF-8") %>' name="userName"/>
	</jsp:forward>
	<%
	}else{
	%>
	<jsp:forward page="15_managerMain.jsp">
		<jsp:param value='<%=URLEncoder.encode("성관리","UTF-8") %>' name="managerName"/>
	</jsp:forward>
	<%
	}
	%>
	

</body>
</html>