<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="memberone.*"%>
<%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="dao" class="memberone.StudentDAO" />
<jsp:useBean id="vo" class="memberone.StudentVO">
	<jsp:setProperty name="vo" property="*" />
</jsp:useBean>
<%
String loginID = (String) session.getAttribute("loginID");
vo.setId(loginID);
dao.updateMember(vo);
%>
<html>
<head>
<title>Update Process</title>
</head>
<meta http-equiv="Refresh" content="3;url=login.jsp">
<body>
	<div>
		<font size="5" face="바탕체"> 입력하신 내용대로 <b>회원정보가 수정 되었습니다.</b><br></br>
			3초후에 Logon Page로 이동합니다
		</font>
	</div>
</body>
</html>