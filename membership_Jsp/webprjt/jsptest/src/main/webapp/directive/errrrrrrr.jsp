<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- page errorPage="/error/error.jsp"--%>
<%
 String name = request.getParameter("name").toUpperCase();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>
<span>name: <%= name %></span>
</h1>

</body>
</html>