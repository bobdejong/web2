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
	.center-block {
            	display: block;
            	margin-left: auto;
            	margin-right: auto;
            	}
      .formd{
      margin-top:20px;
      }      	
      
      .genderra{
      margin-left:11px;
      margin-bottom:10px;
      }
      .btn{
      margin-left:11px;
      }           
   
</style>

<script>
	$('#myModal').modal('hide')
	function check(){
	
	if(!/^[ㄱ-ㅣ가-힣a-zA-Z]{1,10}$/.test($("#inputname").val())){
		alert("이름이 올바르지 않습니다.");
		return false;
	}
	if(!/^[0-9]{4}$/.test($("#phone2").val())){
		alert("전화번호가 올바르지 않습니다.");
		return false;	
	}
	if(!/^[0-9]{4}$/.test($("#phone3").val())){
		alert("전화번호가 올바르지 않습니다.");
		return false;	
	}
	
	$('#myModal').modal('show')
	
	}
	
	
</script>


</head>
<body>

<div class="alert alert-warning" role="alert">
   <a href="#" class="alert-link">회원가입</a>
</div>


<div class="row">
<form action="joinOk" method="post" class="center-block formd col-md-6">

	<!-- 이름:<input type="text" name="name" size="10"><br>
	아이디:<input type="text" name="id" size="10"><br>
	비밀번호:<input type="password" name="pw" size="10"><br>
	전화번호:<select name="phone1">
			<option value="010">010</option>
			<option value="016">016</option>
			<option value="017">017</option>
			<option value="018">018</option>
			<option value="019">019</option>
			<option value="011">011</option>
			
			</select>-
			<input type="text" name="phone2" size="5">-
			<input type="text" name="phone3" size="5"><br>
			성별구분:<input type="radio" name="gender" value="man">남자
			<input type="radio" name="gender" value="woman">여자
			<br>
			<input type="submit" value="회원가입">
			<input type="reset" value="취소"> -->


 <div class="form-row col-md-12 ">
    <div class="form-group col-md-4">
      <label for="inputname">이름</label>
      <input type="text" class="form-control" id="inputname" placeholder="name" name="name">
    </div>
    <div class="form-group col-md-4">
      <label for="inputid">아이디</label>
      <input type="text" class="form-control" id="inputid" placeholder="ID" name="id">
    </div>
  <div class="form-group col-md-4">
      <label for="inputPassword">비밀번호</label>
      <input type="password" class="form-control" id="inputPassword" placeholder="Password" name="pw">
    </div>
  </div>
  <div class="form-row col-md-12">
   <div class="col-md-12">
    전화번호
    </div>
    <div class="form-group col-3">
    
    <select class="form-control" id="exampleFormControlSelect1" name="phone1">
      		<option value="010">010</option>
			<option value="016">016</option>
			<option value="017">017</option>
			<option value="018">018</option>
			<option value="019">019</option>
			<option value="011">011</option>
    </select>
    </div>
    <div class="form-group col-4">
    
      <input type="text" class="form-control" name="phone2" id="phone2" maxlength="4">
    </div>-
    <div class="form-group col-4">
    
      <input type="text" class="form-control" name="phone3" id="phone3" maxlength="4">
    
  	</div>
  </div>
 	<div class="genderra">
 	성별<br>
 	<div class="form-check">
  <input class="form-check-input" type="radio" name="gender" id="exampleRadios1" value="man" checked>
  <label class="form-check-label" for="exampleRadios1">
    	남자
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="gender" id="exampleRadios2" value="woman">
  <label class="form-check-label" for="exampleRadios2">
    	여자
  </label>
</div>
</div>







<!-- <button type="submit" class="btn btn-primary" onclick="return check()">회원가입</button>
<button type="reset" class="btn btn-primary">취소</button>
 -->
 
 <!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter" onclick="return check()">
  회원가입
</button>
<button type="reset" class="btn btn-primary">취소</button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalCenterTitle">약관</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        동의??
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
        <button type="submit" class="btn btn-primary">동의</button>
      </div>
    </div>
  </div>
</div>
 
 
 
</form>
</div>
<%-- <%=session.getAttribute("name") %> --%>
<br>
<div class="alert alert-warning" role="alert">
 <a href="#" class="alert-link">환영</a>
</div>

</body>
</html>