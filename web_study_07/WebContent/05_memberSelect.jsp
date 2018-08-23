<%@page import="com.javalec.daotoex.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.javalec.daotoex.MemberDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		MemberDAO memberDAO = new MemberDAO(); //1.DAO객체 생성
		ArrayList<MemberDTO> dtos = memberDAO.memberSelect();// memberDAO 클래스의 memberSelect()라는 메소드를 실행할때  2. ArrayList <MemberDTO> 어레이리스트 dtos생성
		
		for(int i=0; i<dtos.size(); i++) {
			MemberDTO dto = dtos.get(i);//dtos의 사이즈 만큼 객체를 가져와 dto에 저장.
			String name = dto.getName();// name의 값을 불러옴.
			String id = dto.getId(); //id
			String pw = dto.getPw(); //pw
			String phone = dto.getPhone1() + " - "+ dto.getPhone2() + " - " + dto.getPhone3(); //phone
			String gender = dto.getGender(); //gender
			
			out.println("이름 : " + name + ", 아이디 : " + id + ", 비밀번호 : " + pw + ", 연락처 : " + phone + ",  성별 : " + gender + "<br />" );

		}

		/* http://showdragon.ze.am/144  설명 잘 되어있음*/

	%>


</body>
</html>