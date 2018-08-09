<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("UTF-8"); %>
    
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
	<jsp:useBean id="item" class="com.mission.javabeans.ItemBean"></jsp:useBean>
	<jsp:setProperty property="*" name="item"/>
	
					<table class="table">
						<tr>
							<th scope="row">상품명</th>
							<td><jsp:getProperty property="name" name="item"/></td>
						</tr>
						<tr>
							<th scope="row">가격</th>
							<td><jsp:getProperty property="price" name="item"/></td>
						</tr>
						<tr>
							<th scope="row">설명</th>
							<td><jsp:getProperty property="disc" name="item"/></td>
						</tr>
						
					</table>


<%-- 	<button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
    	상품명
  </button>

<div class="collapse col-6" id="collapseExample">
  <div class="card card-body">
    <jsp:getProperty property="name" name="item"/>
  </div>
</div>
<br>

<button class="btn btn-primary" 
		type="button" 
		data-toggle="collapse" 
		data-target="#price1" 
		aria-expanded="false" aria-controls="price1">
    	가격
  </button>

<div class="collapse col-6" id="price1">
  <div class="card card-body">
    <jsp:getProperty property="price" name="item"/>
  </div>
</div>		
<br>

<button class="btn btn-primary" 
		type="button" data-toggle="collapse" 
		data-target="#disc1" aria-expanded="false" 
		aria-controls="disc1">
    	설명
  </button>

<div class="collapse col-6" id="disc1">
  <div class="card card-body">
    <jsp:getProperty property="disc" name="item"/>
  </div>
</div>				
		 --%>
	


</body>
</html>