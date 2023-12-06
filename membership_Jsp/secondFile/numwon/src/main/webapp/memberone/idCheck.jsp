<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<jsp:useBean id="dao" class="memberone.StudentDAO" />
<%
String id = request.getParameter("id");
boolean check = dao.idCheck(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID 중복체크</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  <script lang="JavaScript" src="script.js"></script>
</head>

<body class="d-flex justify-content-center align-content-center">
<div class="center">
  <b>
  <b><%=id %></b><br>
  <%
  if(check){
	  out.println("는 이미 존재하는 ID입니다.");
  }else{
	  out.println("는 사용 가능합니다.");
  }
  
  %>
  <br>
  <br>
  <a href="#" onclick="javascript:self.close()">닫기</a>
  </b>
</div>


</body>

</html>