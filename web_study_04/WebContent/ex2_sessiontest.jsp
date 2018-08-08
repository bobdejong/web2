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
	
	Enumeration<String> id=session.getAttributeNames();
	int i=0;
	
	while(id.hasMoreElements()){
		i++;
		String name=(String)id.nextElement().toString();
		String value=(String)session.getAttribute(name);
		
		out.print(name+":"+value+"<br>");
			
		
		
	}
	if(i==0)
	out.print("해당 세션이 삭제 되었습니다.");
	
	
	%>
</body>
</html>