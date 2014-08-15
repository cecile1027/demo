<%@page import="java.util.Vector"%>
<%@page import="test1.UserInfoTrace"%>
<%@page import="test1.UserInfoList"%>
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
			UserInfoList list = UserInfoList.getInstance();
			UserInfoTrace ut = new UserInfoTrace();
		
			String name = request.getParameter("user");
			ut.setUser(name);
			session.setAttribute("ut", ut);
			session.setMaxInactiveInterval(120);		
		
		%>
		
		
		<ol>
				<%
					for(Object user: list.getList()){
				%>		
					
					<li><%= user.toString() %></li>							
				<% 
					}
				
				%>
		
		</ol>
			

	
		
	</body>
</html>