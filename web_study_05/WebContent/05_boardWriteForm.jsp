<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
td{
	border:0;
}
#rowstyle{
	font-weight:bold;
	background-color:#e5e5e5;
	text-align:center;
}
table{
	margin:auto;
	text-align:left;
}
#item{
	text-align:center;
}
textarea{resize:none;}


</style>
</head>
<body>
<div id="item">
	<h2>게시판 글쓰기</h2>
</div>
<form action="05_boardWrite.jsp" method="post">
	<table border="1">
	<tr>
		<td id="rowstyle">작성자</td>
		<td><input type="text" name="name"></td>
	</tr>
	<tr>
		<td id="rowstyle">비밀번호</td>
		<td><input type="password" name="pass"></td>
	</tr>
	<tr>
		<td id="rowstyle">이메일</td>
		<td><input type="text" name="email" size="50"></td>
	</tr>
	<tr>
		<td id="rowstyle">글제목</td>
		<td><input type="text" name="title" size="80"></td>
	</tr>
	<tr>
		<td id="rowstyle" height="100px">글 내용</td>
		<td><textarea cols="81" rows="20" name="content"></textarea></td>
	</tr>
	<tr>
		<td><input type="submit" value="전송"></td>
		<td><input type="reset" value="취소"> </td>
	</tr>
	
	</table>





</form>

</body>
</html>