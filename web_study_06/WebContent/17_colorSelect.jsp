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
<%-- 	<c:if test="${param.color==1}">
	<span style="background-color:red">빨강</span>
	</c:if>

	<c:if test="${param.color==2}">
	<span style="background-color:green">초록</span>
	</c:if>
	
	<c:if test="${param.color==3}">
	<span style="background-color:blue">파랑</span>
	</c:if> --%>
	
 	<%--  <c:choose>
		<c:when test="${param.color==1}">
		<span style="background-color:red">빨강</span>
		</c:when>
		<c:when test="${param.color==2}">
		<span style="background-color:green">초록</span>
		</c:when>
		<c:when test="${param.color==3}">
		<span style="background-color:blue">파랑</span>
		</c:when>
	
	</c:choose>   --%>
	
	 <%
		if(request.getParameter("color").equals("1")){
			out.print("<h1>빨강</h1>");
		}else{
			out.print("<h1>노랑</h1>");
		}
	%>  
	

</body>
</html>


















