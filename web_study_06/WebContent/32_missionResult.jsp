<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
	<c:choose>
		<c:when test="${param.aa=='user'}">
			${param.id} 님 사용자로 로그인 하셨습니다.
		</c:when>
	<c:when test="${param.aa=='manager'}">
			${param.id} 님 관리자로 로그인 하셨습니다.
		</c:when>
	
	</c:choose>
	
	

</body>
</html>