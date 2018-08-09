<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.saeyan.javabeans.MemberBean2" %>
    <%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id=request.getParameter("id");
String password=request.getParameter("password");
MemberBean2 m=new MemberBean2();
m.setUserid2("hong");
m.setPwd2("1234");
if(id.equals(m.getUserid2()) && password.equals(m.getPwd2())){
	out.print(m.getUserid2()+"님 반갑습니다.");
	}else{
		out.print("회원 정보가 존재하지 않습니다.");
	}

%>

</body>
</html>