<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%!
		public int sum(int a){
			int total=0;
			for(int i=1;i<=a;i++){
				
				total+=i;
			}
			return total;
		}
	%>
	<h1>임의 값을 1부터 더하기</h1>
	
	<%
		int num=Integer.parseInt(request.getParameter("num"));
	
		for(int i=1;i<num;i++){
			out.print(i+"+");
		}	
	
	out.print(num+"="+sum(num));
	%>


</body>
</html>