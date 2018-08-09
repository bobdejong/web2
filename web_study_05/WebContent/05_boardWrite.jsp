<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	td{
		border:0;
	}
	
	#rowstyle{
		font-weight:bold;
		background-color:#ff50cf;
		text-align:center;
		
	}
	
	
</style>
</head>
<body>

<jsp:useBean id="boardBean" class="com.mission.javabeans.BoardBean"></jsp:useBean>
<h2>입력 완료된 정보</h2>

<jsp:setProperty property="*" name="boardBean"/>
<table>
	<tr>
		<td id="rowstyle">작성자</td>
		<td><jsp:getProperty property="name" name="boardBean"/></td>
	</tr>
	<tr>
		<td id="rowstyle">비밀번호</td>
		<td><jsp:getProperty property="pass" name="boardBean"/></td>
	</tr>
	<tr>
		<td id="rowstyle">이메일</td>
		<td><jsp:getProperty property="email" name="boardBean"/></td>
	</tr>
	<tr>
		<td id="rowstyle">글제목</td>
		<td><jsp:getProperty property="title" name="boardBean"/></td>
	</tr>
	<tr>
		<td id="rowstyle">글 내용</td>
		<td><jsp:getProperty property="content" name="boardBean"/></td>
	</tr>
</table>
















</body>
</html>