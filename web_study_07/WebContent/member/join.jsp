
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- #17] JoinServlet doGet에서 왔다. 회원가입 양식 작성하러 왔다. -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 가입 양식</title>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>
<h2>회원 가입</h2>
'*'항목은 필수 입력 항목입니다.<br>
<form action="join.do" method="post" name="frm">
    <table border="1" cellpadding="0" cellspacing="0">
        <tr>
            <td>이름</td>
            <td><input type="text" name="name" size="20">*</td>
        </tr>
        <tr>
            <td>아이디</td>
            <td>
                <input type="text" name="userid" size="20">*
                <!-- 스크립트에서 아이디 중복검사 -->
                <input type="hidden" name="reid" value=""> <!-- #18] 중복체크하러 가자. -->
                <input type="button" value="중복체크" onclick="idCheck()">
                                                        <!-- #30] 중복체크하고 왔다. -->
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
            <td><input type="text" name="email" size="20"></td>
        </tr>
        <tr>
            <td>전화번호</td>
            <td><input type="text" name="phone" size="20"></td>
        </tr>
        <tr>
            <td>관리자 모드</td>
            <td>
                <input type="radio" name="admin" value="0" checked>일반
                <input type="radio" name="admin" value="1">관리자
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">            <!-- #31] 스크립트 유효성 검토 -->
                <!-- #33] JoinServlet으로 가자! -->
                <input type="submit" value="확인" onclick="return joinCheck()">
                <input type="reset" value="취소">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                ${message }
            </td>
        </tr>
        
        
    </table>
</form>
</body>
</html>