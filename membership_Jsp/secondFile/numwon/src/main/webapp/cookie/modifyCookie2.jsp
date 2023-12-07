<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>
<%!
String name = "";
String no = "";
%>

<%

Cookie[] cookies = request.getCookies();
if (cookies != null && cookies.length > 0) {
	for (int i = 0; i < cookies.length; i++) {
	%>
	
	<%= cookies[i].getName() %> = <%= URLDecoder.decode(cookies[i].getName(), "utf-8" ) %><br>
	
	<%
	
		
		}
	}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <h1>name = <%= name %>, no = <%= no %> 이다.</h1> --%>
</body>
</html>