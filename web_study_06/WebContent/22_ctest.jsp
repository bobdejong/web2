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
	String a="DDDDD";
	pageContext.setAttribute("id", "lucky");
	request.setAttribute("name", "Choi");
	session.setAttribute("age", "36");
	application.setAttribute("team", "FW");
%>

<c:set var="str" value="<%=a %>"/>
<%=a %><br>
a=${a }<br>
a=<c:out value="${str}" default="none"/><br>
a=${str }<br>

id=${id }<br>
age=${age }<br>
name=${name }<br>
team=${team }<br>

<c:out value="id=${id }"/><br>
<c:out value="age=${age }"/><br>
<c:out value="name=${name }"/><br>
<c:out value="team=${team }"/><br>

</body>
</html>














