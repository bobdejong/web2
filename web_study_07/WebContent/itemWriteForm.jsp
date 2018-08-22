
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


</head>
<body>
<div class="alert alert-warning" role="alert">
   <a href="https://www.google.co.kr/maps/preview" class="alert-link">정보입력폼</a>
</div>
<br>
<form method="post" action="itemWriteResult.jsp">
<div class="form-row col-md-12 ">
<!-- <span>상품명</span><input type="text" name="name"><br>
<span>가격</span><input type="text" name="price"><br>
<span>설명</span><textarea cols="30" rows="20" name="description"></textarea><br>
<input type="submit" value="전송">
<input type="reset" value="취소"> -->

<div class="form-group col-md-6">
	상품명<input type="text" name="name" class="form-control col-md-6">
</div>
</div>
<div class="form-row col-md-12 ">
<div class="form-group col-md-6">
	가격<input type="text" name="price" class="form-control col-md-6">
</div>
 </div>
 <div class="form-row col-md-12 ">
 <div class="form-group col-md-8">
    설명
    <textarea class="form-control col-md-24"  rows="5" name="description"></textarea>
  </div>
</div>
<div class="form-row col-md-12 ">
<div class="form-group col-md-8">
<button type="submit" class="btn btn-primary">전송</button>
<button type="reset" class="btn btn-primary">취소</button>
</div>
</div>


</form>

</body>
</html>