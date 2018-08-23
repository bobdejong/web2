<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>로그인</h2>
<form action="login.do" method="post" name="frm" >
    <table border="1" cellpadding="0" cellspacing="0">
        <tr>
            <td>아이디</td>        <!-- DB의(MemberVO의) property와 name 통일 -->
            <td><input type="text" name="userid" value="${userid }"></td>
        </tr>                                <!-- 회원 가입 후 바로 로그인창으로 갈때 
                                                아이디는 남겨두게 할때 null일수도 있고 데이터가 있을수도 있다.
                                            -->
                                            <!-- EL을 쓰면 null일때 내용이 보여지지 않기 때문에
                                                굳이 조건문 없이 간편하게 사용할 수 있다.
                                             -->
        <tr>
            <td>비밀번호</td>
            <td><input type="password" name="pwd"></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <!-- #4] 로그인 버튼을 눌렀을 때 유효성 검토 스크립트 실행 -->
                <!-- #6] 전송 userid, pwd를 갖고 LoginServlet의 doPost로 가자 -->
                <!-- #40] 처음으로 로그인 처리한다. LoginServlet의 doPost()로 간다. -->
                <!-- 빈칸이면 안 된다. -->
                <!-- 스크립트는 불안정할때가 있어서 오류가 없는데 오류날때가 있다. -->
                <input type="submit" value="로그인" onclick="return loginCheck()"> &nbsp;
                <input type="reset" value="취소"> &nbsp;
                
                <!-- #14] 회원 가입 하러 가자! -->
                                                        <!-- href()함수는 ()안에 쓰지않고 =''으로 사용-->
                                    <!-- index부터 실행해야 
                                http://localhost:8181/Membership/member/join.do(404에러날 때 /member/경로가 빠진다) 
                                    login.jsp에서 실행하면 저 경로대로 404에러가 난다.
                                    처음 과정(index)부터(index를 기준으로 잡기 때문?? 알아보기) 실행.
                                -->
                <input type="button" value="회원 가입" onclick="location.href='join.do'"> &nbsp;
                
            </td>
        </tr>
        <tr>
        <!-- 로그인 결과를 보여주는 메세지 창 -->
            <td colspan="2">
                ${message }
            </td>
        </tr>
    </table>
</form>





</body>
</html>