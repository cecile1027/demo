<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	
		escapeXml属性为true：
		<c:out value="水平标记线<hr>" escapeXml="true"></c:out>
		<br>
		escapeXml属性为false：
		<c:out value="水平标记线<hr>" escapeXml="false"></c:out>
		
	</body>
</html>