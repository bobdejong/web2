<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>14_jstl</title>
</head>
<body>
	<!-- JSTL(JSP Standard Tag Library) -->
	<!-- c:core:기본기능 : 값을대입, 출력, 반복 ,제어 -->
	
	<c:out value="Hello World"/>
	<c:set var="msg" value="Hello" scope="page"/><br>
	${msg }
	<c:set var="age">
	30
	</c:set><br>
	${age}
	<!-- 
	com.saeyan.javabeans.MemberBean member=new com.saeyan.javabeans.MemberBean();
	<jap:useBean id="member" class="com.saeyan.javabeans.MemberBean"/>
	<c:set var="member" value="< % =com.saeyan.javabeans.MemberBean()%>"/>
	
	<jsp:setProperty name="member" property="name" value="홍길동"/>
	<c:set target="${member}" property="name" value="홍길동"/>
	
	 -->


</body>
</html>