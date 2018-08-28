<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type='text/javascript' src='http://code.jquery.com/jquery-1.8.0.min.js'></script>
<script language='javascript' type='text/javascript'>
/* $(document).ready(function()
		{
		    // form 의 name 이 frm 인것에 > 속해있는 select 객체의
		    // name 값이 year 인 객체의 value 를 1903 으로 selected
		    $('form[name=frm] > table > select[name=lev]').val('A');
		});
 */
		
</script>

<style>
	td{
		width:300px;
	}
</style>

</head>
<body>
	<form action="mypage.do" method="post" name="frm">
		<table align="center">
			<tr>
			<td colspan="2" align="center">마이페이지</td>
			</tr>
			<tr>
				<td align="center">아이디</td>
				<td>
					<input type="text" name="id"  value="${loginUser.id }" readonly="readonly">
				</td>
			</tr>
			<tr>
				<td align="center">비밀번호</td>
				<td>
					<input type="password" name="pwd" value="${loginUser.pass }">
				</td>
			</tr>
			<tr>
				<td align="center">이름</td>
				<td>
					<input type="text" name="name" value="${loginUser.name }">
				</td>
			</tr>
			<tr>
				<td align="center">권한</td>
				<td>
					<select name="lev">
						<c:choose>
							<c:when test="${result==2}">
								<option value="B">일반회원</option>
								<option value="A" selected="selected">운영자</option>	
							</c:when>
							<c:otherwise>
								<option value="B" selected="selected">일반회원</option>
								<option value="A">운영자</option>
							</c:otherwise>
						</c:choose>
						
						<!-- <option value="B">일반회원</option>
						<option value="A">운영자</option>	 -->		
					</select>
				</td>
			</tr>
			
			<tr>
				<td align="center">성별</td>
				<td>
					<select name="gender">
						<c:choose>
							<c:when test="${gender == 1}">
								<option value="2">여자</option>
								<option value="1" selected="selected">남자</option>	
							</c:when>
							<c:otherwise>
								<option value="2" selected="selected">여자</option>
						<option value="1">남자</option>		
							</c:otherwise>
						</c:choose>
						
						<!-- <option value="woman">여자</option>
						<option value="man">남자</option>		 -->	
					</select>
				</td>
			</tr>
			
			<tr>
				<td align="center">전화번호</td>
				<td>
					<input type="text" name="phone" value="${loginUser.phone }">
				</td>
			</tr>
			<tr>
			
			<tr align="center">
				<td colspan="2">
					<input type="submit" value="수정">
					<input type="reset" value="취소">
					<!-- <input type="button" value="메인 페이지로 이동" onclick="location.href="main.jsp"> -->
				</td>
		
		</table>
	
	
	
	</form>
	
</body>
</html>