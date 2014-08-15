<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		
		<%
			try{
				
				int a = Integer.parseInt(request.getParameter("name"));
				int b = Integer.parseInt(request.getParameter("password"));
				int result = a/b;
				request.setAttribute("result", result);
			}catch(Exception e){
				request.setAttribute("exception", "页面错误");
			}			
		%>
		
		<jsp:forward page="attribute.jsp"></jsp:forward>
		
	</body>
</html>