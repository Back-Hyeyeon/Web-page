<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/H01.css">

<% 
Date date = new Date();
String toDate = date.toString();
%>
</head>
<body>
<h1>어&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;디에?</h1>
<% for(int i=0;i<10;i++){ %>
<h2>내가버림 살려주세ㅇ..ㅛ <%= toDate +i %> </h2>

<% } %>
</body>
</html>