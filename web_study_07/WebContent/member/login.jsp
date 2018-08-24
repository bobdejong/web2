<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<style type="text/css">
body {
    
  background: -webkit-linear-gradient(90deg, #16222A 10%, #3A6073 90%); /* Chrome 10+, Saf5.1+ */
  background:    -moz-linear-gradient(90deg, #16222A 10%, #3A6073 90%); /* FF3.6+ */
  background:     -ms-linear-gradient(90deg, #16222A 10%, #3A6073 90%); /* IE10 */
  background:      -o-linear-gradient(90deg, #16222A 10%, #3A6073 90%); /* Opera 11.10+ */
  background:         linear-gradient(90deg, #16222A 10%, #3A6073 90%); /* W3C */
	color:white;
}
.card-container.card {
    max-width: 350px;
    padding: 40px 40px;
}

.btn {
    font-weight: 700;
    height: 36px;
    -moz-user-select: none;
    -webkit-user-select: none;
    user-select: none;
    cursor: default;
}



/*
 * Card component
 */
.card {
    background-color: #F7F7F7;
    /* just in case there no content*/
    padding: 20px 25px 30px;
    margin: 0 auto 25px;
    margin-top: 130px;
    /* shadows and rounded borders */
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}

.profile-img-card {
    width: 96px;
    height: 96px;
    margin: 0 auto 10px;
    display: block;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    border-radius: 50%;
}

/*
 * Form styles
 */
.profile-name-card {
    font-size: 16px;
    font-weight: bold;
    text-align: center;
    margin: 10px 0 0;
    min-height: 1em;
}

.reauth-email {
    display: block;
    color: #404040;
    line-height: 2;
    margin-bottom: 10px;
    font-size: 14px;
    text-align: center;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}

.form-signin #inputEmail,
.form-signin #inputPassword {
    direction: ltr;
    height: 44px;
    font-size: 16px;
}

.form-signin input[type=email],
.form-signin input[type=password],
.form-signin input[type=text],
.form-signin button {
    width: 100%;
    display: block;
    margin-bottom: 10px;
    z-index: 1;
    position: relative;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}

.form-signin .form-control:focus {
    border-color: rgb(104, 145, 162);
    outline: 0;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgb(104, 145, 162);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgb(104, 145, 162);
}

.btn.btn-signin {
    /*background-color: #4d90fe; */
    background-color: rgb(104, 145, 162);
    /* background-color: linear-gradient(rgb(104, 145, 162), rgb(12, 97, 33));*/
    padding: 0px;
    font-weight: 700;
    font-size: 14px;
    height: 36px;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    border-radius: 3px;
    border: none;
    -o-transition: all 0.218s;
    -moz-transition: all 0.218s;
    -webkit-transition: all 0.218s;
    transition: all 0.218s;
}

.btn.btn-signin:hover,
.btn.btn-signin:active,
.btn.btn-signin:focus {
    background-color: rgb(12, 97, 33);
}

.forgot-password {
    color: rgb(104, 145, 162);
}

.forgot-password:hover,
.forgot-password:active,
.forgot-password:focus{
    color: rgb(12, 97, 33);
}
</style>

</head>
<body>

<%-- <form action="login.do" method="post" name="frm" >
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
 --%>
	<div class="container">
        <div class="card card-container">
            <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
            <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <form action="login.do" method="post" name="frm" class="form-signin">
                
                <input type="text" name="userid" value="${userid }" id="inputEmail" class="form-control" placeholder="ID" required autofocus>
                <input input type="password" name="pwd" id="inputPassword" class="form-control" placeholder="Password" required>
                
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Sign in</button>
                <div class="row justify-content-around">
                <button class="btn btn-lg btn-primary btn-signin col-5" type="button" onclick="location.href='join.do'">Join</button>
                <button class="btn btn-lg btn-primary btn-signin col-5"  type="reset">Reset</button>
               
                
            	</div>
            </form><!-- /form -->
            <a href="#" class="forgot-password">
                ${message }
            </a>
        </div><!-- /card-container -->
    </div><!-- /container -->



</body>
</html>