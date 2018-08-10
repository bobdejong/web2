<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mission.javabeans.AddrManager"%>
  <%request.setCharacterEncoding("UTF-8"); %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
    <jsp:useBean id="addr" class="com.mission.javabeans.AddrBean"></jsp:useBean>
	<jsp:setProperty property="*" name="addr"/>
	<jsp:useBean id="am" class="com.mission.javabeans.AddrManager" scope="application"></jsp:useBean>
	
	<%
		am.add(addr);
	%>
	
	
	<h1 align="center">등록내용</h1>
	<form action="" method="post">
	<table align="center">
			<tr>		
				<th>이름:</th>
				<td><jsp:getProperty property="name" name="addr"/></td>
				</tr>
				<tr>
				<th>전화번호:</th>
				<td><jsp:getProperty property="phone" name="addr"/></td>
				</tr>
				<tr>
				<th>이메일:</th>
				<td><jsp:getProperty property="email" name="addr"/></td>
				</tr>
				<tr>
				<th>성별:</th>
				<td><jsp:getProperty property="sex" name="addr"/></td>
				</tr>
				<tr>
				
				<td colspan="2" align="center"><input type="submit" value="목록보기"></td>
				</tr>					
	</table>
	
	</form>
	<hr>
	<div align="center">
	<a href="07_addr_list.jsp">목록 보기</a>
</div>
</body>
</html>