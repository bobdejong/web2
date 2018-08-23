<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>
<!-- #45] main.jsp로 이동 -->
<c:if test="${empty loginUser }">
    <jsp:forward page="member/login.jsp"></jsp:forward>
</c:if>    
<h2>회원 전용 페이지</h2>
<form action="logout.do">
    <table border="1" cellpadding="0" cellspacing="0">
        <tr>
            <td>안녕하세요 ${loginUser.name }(${loginUser.userid })님 </td>
        </tr>
        <tr>
            <td>
                <!-- #46] LogoutServlet으로 이동 -->
                <input type="submit" value="로그 아웃">
                <!-- #48] 회원정보 수정 userid를 들고 memberUpdateServlet의 doGet메서드로 이동 -->
                <input type="button" value="회원 정보 수정" onclick="location.href='memberUpdate.do?userid=${loginUser.userid}'">
                <input type="button" value="삭제" onclick="deleteCheck('${loginUser.userid}')">
                <!-- <input type="button" value="글쓰기" onclick=""> -->
            </td>
        </tr>
    </table>    
</form>
</body>
</html>