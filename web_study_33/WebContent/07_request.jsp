<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Core Tags2</h2>
	<form action="07_requestResult1.jsp" method="post">
	<label>성명:<input type="text" name="name"></label><br>
	<label>학번:<input type="text" name="studentNum"></label><br>
	성별:<label><input type="radio" name="namesex" value="male" checked="checked">남자</label>
	<label><input type="radio" name="namesex" value="woman">여자</label><br>
	<label>전공:
	<select name="major">
		<option value="컴퓨터과">컴퓨터과</option>
		<option value="영문학과">영문학과</option>
		<option value="수학과">수학과</option>
		<option value="정치학과">정치학과</option>
		<option value="체육학과">체육학과</option>
	</select>
	</label><br>
	<label><input type="submit" value="보내기"></label>
	
	</form>
	

</body>
</html>