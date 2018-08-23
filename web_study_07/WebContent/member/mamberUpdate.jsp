<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!-- #55] 수정할 원본 데이터 들고 왔다. -->    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>
<h2>회원 정보 수정</h2>
'*'항목은 필수 입력 항목입니다.<br>
<form action="memberUpdate.do" method="post" name="frm">
    <table border="1" cellpadding="0" cellspacing="0">
        <tr>
            <td>이름</td>
            <td><input type="text" name="name" size="20" value="${vo.name}" readonly>*</td>
        </tr>
        <tr>
            <td>아이디</td>
            <td>
                <input type="text" name="userid" size="20" readonly value="${vo.userid }">*                                                    
            </td>
        </tr>
        <tr>
            <td>암호</td>
            <td><input type="password" name="pwd" size="20">*</td>
        </tr>
        <tr>
        <!-- pwd와 pwd_check가 같으면 true, 아니면 false -->
            <td>암호 확인</td>
            <td><input type="password" name="pwd_check" size="20">*</td>
        </tr>
        <tr>
            <td>이메일</td>
            <td><input type="text" name="email" size="20" value="${vo.email }"></td>
        </tr>
        <tr>
            <td>전화번호</td>
            <td><input type="text" name="phone" size="20" value="${vo.phone }"></td>
        </tr>
        <tr>
            <td>관리자 모드</td>
            <td>
            <c:choose>
                <c:when test="${vo.admin==0 }">
                    <input type="radio" name="admin" value="0" checked>일반
                    <input type="radio" name="admin" value="1">관리자
                </c:when>
                <c:otherwise>
                    <input type="radio" name="admin" value="0" >일반
                    <input type="radio" name="admin" value="1" checked>관리자
                </c:otherwise>
            </c:choose>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">    <!-- #56] 수정완료 - 다시 DB에 쓰러가자! -->        
                <input type="submit" value="수정" onclick="return joinCheck()">
                <input type="reset" value="취소">
            </td>
        </tr>
            
    </table>
</form>
</body>
</html>