<%@page import="java.util.function.Function"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- 맴버변수,맴버함수--%>
<%!
String declation = "맴버변수의 선언문입니다.";
String getDeclation(){
	return declation;
}
%>
<%-- 자바코드 구현 (서비스에 들어가는 지역변수를 선언)--%>
<%
String scrip = "스크립틀릿은 서비스함수에 구현됩니다.";
out.println("내장객체를 이용한 출력"+ this.declation);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>선언문 출력하기 = <%= this.getDeclation() %></h1>
</body>
</html>