<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2 align="center">request 테스트 폼</h2>
<hr>
	<form action="08_requestResult2.jsp" method="post">
	<table border="1" cellspacing="1" cellpadding="5" align="center">
		<tr>
			<td>이름</td>
			<td><input type="text" size="10" name="username"></td>
		</tr>
		<tr>
			<td>직업</td>
			<td>	
				<select name="job">
					<option value="무직">무직</option>
					<option value="회사원">회사원</option>
					<option value="전문직">전문직</option>
					<option value="학생">학생</option>
				</select>
			</td>
		</tr><tr>
			<td>관심분야</td>
			<td><input type="checkbox" name="favorite" value="정치">정치
				<input type="checkbox" name="favorite" value="사회">사회
				<input type="checkbox" name="favorite" value="정보">정보통신</td>
			
		</tr><tr>
			<td colspan="2" align="center">
			<input type="submit" value="확인"><input type="reset" value="취소">
			</td>
			
		</tr>
	
	
	</table>
	</form>

</body>
</html>