<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String memberid = (String) session.getAttribute("MEMBERID");
String name = (String) session.getAttribute("NAME");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Member ID : <%=memberid %><br></br>
Name : <%=name %>
</body>
</html>