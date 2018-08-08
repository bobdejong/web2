<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">request 테스트 결과 - 1</h1>
	<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("username");
	String job = request.getParameter("job");
	String [] favoriteArr = request.getParameterValues("favorite");
	
	/* out.print("이름 : "+name+"<br>");
	out.print("직업 : "+job+"<br> 관심분야 : ");
	for(String favorite:favoriteArr){
	out.print(favorite+" ,");
	} */
	%>
	<table border="1" cellspacing="1" cellpadding="5" align="center">
		<tr>
		<td>이름</td>
		<td><%=name %></td>
		</tr>
		<tr>
		<td>직업</td>
		<td><%=job %></td>
		</tr>
		<tr>
		<td>관심분야</td>
		<td><%for(String favorite:favoriteArr){
			out.print(favorite+" ,");
		} %></td>
		</tr>
	</table>
</body>
</html>