<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	
		<jsp:useBean id="user" class="javaBean.User"></jsp:useBean>
		<jsp:setProperty property="name" name="user" param="password"/>	
		
		<%= user.getName() %> <br>
		<%= user.getPassword() %><br>
ss	
		<jsp:forward page="request.jsp"></jsp:forward>

	</body>
</html>