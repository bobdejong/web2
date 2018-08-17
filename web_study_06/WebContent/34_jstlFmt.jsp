<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<pre>
<c:set var="now" value="<%=new java.util.Date()%>"/>
\${now}:${now }<br>
<fmt:formatDate value="${now}"/>

date:<fmt:formatDate value="${now }" type="date"/>	
time:<fmt:formatDate value="${now }" type="time"/>
both:<fmt:formatDate value="${now }" type="both"/>
default:<fmt:formatDate value="${now }" type="both" dateStyle="default" timeStyle="default"/>
short:<fmt:formatDate value="${now }" type="both" dateStyle="short" timeStyle="short"/>
long:<fmt:formatDate value="${now }" type="both" dateStyle="long" timeStyle="long"/>
full:<fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"/>
pattern="yyyy년MM월dd일hh시mm분ss초":<fmt:formatDate value="${now}" pattern="yyyy년MM월dd일hh시mm분ss초"/>



</pre>

</body>
</html>