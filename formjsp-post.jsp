<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get</title>
</head>
<body>

	<% 
	
		request.setCharacterEncoding("utf-8");
		
		String name      = request.getParameter("name");
		String email        = request.getParameter("email");		
		// int languageCount    = Integer.parseInt(request.getParameter("languageCount")); 
        // 정수타입인 경우 형변환 해주어야한다.
	
		System.out.println("Name : " + name);
		System.out.println("Email : " + email);
        // Console에 출력되는 데이터
		
	%>

	<h3>데이터 전송 확인</h3>
	<a href="index.html">이전으로 이동하기</a>

</body>
</html>