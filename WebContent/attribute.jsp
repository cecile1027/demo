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
			if(request.getAttribute("result")!=null){
				out.println(request.getAttribute("result"));
			}else if(request.getAttribute("exception")!=null){
				out.println(request.getAttribute("exception"));
			}		
		%>
		
		
	</body>
</html>