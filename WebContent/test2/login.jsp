<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/stringDeal/" prefix="s" %>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		处理后内容为：<br>
		${s:shiftEnter(param.content) }
		
		<br><br>
		处理前内容为：<br>
		${param.content }

	</body>
</html>