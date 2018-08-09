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

<style>
	.center-block {
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
	
	#bu{
		
	}
</style>
</head>
<body>
	<h1 align="center">주소록 등록</h1>
<hr>
<form action="07_addrWrite.jsp" method="post">
<div class="row col-6 center-block">
  <div class="form-group col-12" >
    <label for="name"><b>이름</b></label>
    <input type="text" class="form-control " id="name" name="name">
  </div>
  <div class="form-group col-12">
    <label for="price"><b>전화번호</b></label>
    <input type="text" class="form-control" id="phone" name="phone">
  </div>
  <div class="form-group col-12">
    <label for="price"><b>이메일</b></label>
    <input type="text" class="form-control" id="email" name="email">
  </div>
  <div class="form-group col-12">
    <label for="exampleFormControlSelect1">성별</label>
    <select class="form-control" id="sex" name="sex">
      <option>남</option>
      <option>여</option>
      
    </select>
  </div>
	<div class="col-4 center-block" id="bu">
  <button type="submit" class="btn btn-outline-primary">확인</button>
  <button type="reset" class="btn btn-outline-primary">취소</button>
	</div>	
  
	</div>
	
</form>
</body>
</html>