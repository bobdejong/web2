<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table align="center" width="550">
		<tr>
			<td colspan="2" align="center">
			<h3>사원 정보</h3>
			<div style="color:red">${message}</div>
			</td>
		</tr>
		
		<tr>
				<td align="center">아이디</td>
				<td>
					${member.id }
				</td>
			</tr>
			<tr>
				<td align="center">비밀번호</td>
				<td>
					${member.pass }
				</td>
			</tr>
			<tr>
				<td align="center">이름</td>
				<td>
					${member.name }
				</td>
			</tr>
			<tr>
				<td align="center">권한</td>
				<td>
					
						<c:choose>
							<c:when test="${member.lev=='A'}">
								운영자	
							</c:when>
							<c:otherwise>
								일반회원
								
							</c:otherwise>
						</c:choose>
						
					
				</td>
			</tr>
			
			<tr>
				<td align="center">성별</td>
				<td>
					<c:choose>
							<c:when test="${member.gender == '1'}">
								
								남자
							</c:when>
							<c:otherwise>
								여자
						
							</c:otherwise>
						</c:choose>
						
		
				</td>
			</tr>
			
			<tr>
				<td align="center">전화번호</td>
				<td>
					${member.phone }
				</td>
			</tr>
			
			<tr align="center">
				
				<td colspan="2">
				<input type="button" value="메인 페이지로 이동" onclick="location.href='main.jsp'">	
				</td>
			</tr>
	
	
	</table>
</body>
</html>