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
	
	/* #bu{margin:0 auto;} */
</style>

</head>
<body>

<h1>정보 입력 폼</h1>
<br>
<br>
	<form action="06_itemWrite.jsp" method="post">
				<!-- <table>
				<tr>
				<td>상품명</td>
				<td><input type="text" name="name" size="20"></td>
				</tr>
				<tr>
				<td>가격</td>
				<td><input type="text" name="price" size="20"><br></td>
				</tr>
				<tr>
				<td>설명</td>
				<td><textarea cols="81" name="disc" rows="20"></textarea></td>
				</tr>
				<tr>
				<td colspan="2" align="center"><input type="submit" value="전송">
				<input type="reset" value="취소"></td>
				</tr>
				
			</table> -->
<div class="row col-8">
  <div class="form-group col-4" >
    <label for="name"><b>상품명</b></label>
    <input type="text" class="form-control" id="name" name="name">
  </div>
  <div class="form-group col-4">
    <label for="price"><b>가격</b></label>
    <input type="text" class="form-control" id="price" name="price">
  </div>
		<div class="form-group col-12">
    <label for="disc"><b>설명</b></label>
    <textarea class="form-control" id="disc" name="disc" rows="17"></textarea>
  </div>	
  <div class="center-block">
  <button type="submit" class="btn btn-outline-primary">Submit</button>
  <button type="reset" class="btn btn-outline-primary">Reset</button>
	</div>
		</div>
</form>
</body>
</html>