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
		<div>定义request范围的变量：name —— 值：cecile</div>
		<c:set var="name" value="cecile" scope="request"></c:set><br>
		<div>输出：<c:out value="${name}"></c:out></div>
		<br>
		<div>为JavaBean 对象 user 的 name属性赋值 amy</div>
		<jsp:useBean id="user" class="javaBean.User" scope="request"></jsp:useBean>
		<c:set value="amy" target="${user}" property="name" ></c:set><br>
		<div>输出:<c:out value="${user.name }"></c:out></div>
		
	</body>
</html>