<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.ArrayList"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
ArrayList<String> seasonList=new ArrayList<String>();
seasonList.add("봄");
seasonList.add("여름");
seasonList.add("가을");
seasonList.add("겨울");

request.setAttribute("list", seasonList);
%>

<select name="season">
	<c:forEach var="season" items="${list}">
		<option value="${season}">${season}</option>
		
	</c:forEach>

</select>

</body>
</html>