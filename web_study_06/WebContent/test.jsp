<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.HashMap"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <% HashMap pref = new HashMap(); %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="pref" value="<%= pref %>" />
 <c:set var="favorColor" value="#{ pref.color }"/>
  좋아하는 색 : ${ favorColor } <br> <br>
   <c:set target="${ pref }" property="color" value="red" /> 
   설정 이후 좋아하는 색 : ${ favorColor }


</body>
</html>