<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
 	session.setAttribute("s_name1", "저는 세션에 저장된 첫 번째 값이에요.");
	session.setAttribute("s_name2", "저는 세션에 저장된 두 번째 값이에요.");
 	session.setAttribute("s_name3", "저는 세션에 저장된 세 번째 값이에요.");
 	
 	out.print("<h3>== 세션값을 삭제하기 전==</h3>");
 	Enumeration<String> names;
 	names=session.getAttributeNames();
 	while(names.hasMoreElements()){
 		String name=(String)names.nextElement();
 		String value=session.getAttribute(name).toString();
 		out.print(name+":"+value+"<br>");
 	}
 	
 	session.removeAttribute("s_name2");
 	
 	out.print("<hr><h3>==세션값을 삭제한 후 ==</h3>");	
 	names=session.getAttributeNames();
 	while(names.hasMoreElements()){
 		String name=(String)names.nextElement();
 		String value=session.getAttribute(name).toString();
 		out.print(name+":"+value+"<br>");
 	}
 	
 	session.invalidate();
 	out.print("<hr><h3> >>세션값을 모두 삭제한 후<< </h3>");
 	
 	
 	
%>













</body>
</html>