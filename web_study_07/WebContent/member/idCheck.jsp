<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>
<%-- #27] IdCheckServlet doGet()에서 왔다. result, userid가 있다. --%>
<h2>아이디 중복확인</h2>
<form action="idCheck.do" method="get" name="frm">
    아이디 <input type="text" name="userid" value="${userid }">
    <%-- 중복 체크 누를 때마다 서블릿을 순환하게 된다. --%>    
    <input type="submit" value="중복 체크"><br>
    
    <c:if test="${result ==1 }">
        <%-- 창에 있는 input의 userid 항목에 value를 ""로 만들어주면 편하다. --%>
        <%-- 현재 열려있는 창! opener --%>
        <script type="text/javascript">
            // 현재 열려있는 창 window.의 userid값!
            opener.document.frm.userid.value="";
        </script>
        ${userid }는 사용 중입니다.
    </c:if>
    
    <c:if test="${result == -1 }">
        ${userid }는 사용 가능한 아이디 입니다.
        <%-- #28] 스크립트로 가서 join.jsp에 userid를 올려주도록 하자! --%>
        <input type="button" value="사용" onclick="idOk('${userid}')">    
    </c:if>
    
 
</form>
</body>
</html>