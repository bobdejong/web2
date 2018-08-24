<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="script/member.js"></script>
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

}

.container{
	margin-top:350px;
	}
h1{color:white;}
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

</style>
</head>
<body>
<!-- #45] main.jsp로 이동 -->
<%-- <c:if test="${empty loginUser }">
    <jsp:forward page="member/login.jsp"></jsp:forward>
</c:if>    
<h1>회원 전용 페이지</h1>
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
 --%>



<c:if test="${empty loginUser }">
    <jsp:forward page="member/login.jsp"></jsp:forward>
</c:if>

<form action="logout.do">
<div class="container">
	<div class="row justify-content-md-center">
	<h1>안녕하세요 ${loginUser.name }(${loginUser.userid })님 </h1>
	</div>
	<div class="row justify-content-md-center">
		
		<div class="btn-group" role="group" aria-label="Basic example">
		
		<button class="btn btn-lg btn-primary btn-signin" type="submit"> &nbsp;&nbsp;&nbsp;로그 아웃&nbsp;&nbsp;&nbsp; </button>
		<button class="btn btn-lg btn-primary btn-signin" type="button" onclick="location.href='memberUpdate.do?userid=${loginUser.userid}'">&nbsp;&nbsp; &nbsp;회원정보수정 &nbsp;&nbsp;&nbsp;</button>
        <%-- <button class="btn btn-lg btn-primary btn-signin"  type="button" onclick="deleteCheck('${loginUser.userid}')"> &nbsp;&nbsp;&nbsp;삭제 &nbsp;&nbsp;&nbsp;</button> --%>
        <button class="btn btn-lg btn-primary btn-signin"  type="button" data-toggle="modal" data-target="#exampleModal"> &nbsp;&nbsp;&nbsp;삭제 &nbsp;&nbsp;&nbsp;</button>
               
</form>



 <form action="memberDelete.do" method="post">

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         <h2>${param.userid }님</h2>
        	정말 삭제하시겠습니까?<br>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
        <input type="hidden" name="userid" value="${param.userid }">
        <button type="submit" class="btn btn-primary">삭제</button>
     	
  
      </div>
    </div>
  </div>
</div>     

</form>

<c:if test="${empty sessionScope.loginUser }">
    <script type="text/javascript">
    opener.location.reload();
        alert("삭제되었습니다.");
    </script>
</c:if>
    
      
      
      
      
      
      
      
      
                            
		</div>
		
	</div>
</div>
</form>


</body>
</html>