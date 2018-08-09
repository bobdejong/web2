<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="member" class="com.saeyan.javabeans.MemberBean"></jsp:useBean>
	<jsp:setProperty property="*" name="member"/>
	<%-- <%
	member.setName(request.getParameter("name"));
	member.setUserid(request.getParameter("userid"));
	member.setNickname(request.getParameter("nickname"));
	member.setPwd(request.getParameter("pwd"));
	member.setEmail(request.getParameter("email"));
	member.setPhone(request.getParameter("phone"));	
	%> --%>
	
	
이름:<jsp:getProperty property="name" name="member"/><br>
아이디:<jsp:getProperty property="userid" name="member"/><br>
별명:<jsp:getProperty property="nickname" name="member"/><br>
비밀번호:<jsp:getProperty property="pwd" name="member"/><br>
이메일:<jsp:getProperty property="email" name="member"/><br>
전화번호:<jsp:getProperty property="phone" name="member"/><br>

</body>
</html>