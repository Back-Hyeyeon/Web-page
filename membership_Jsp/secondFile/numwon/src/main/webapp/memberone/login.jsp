<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String loginID = (String) session.getAttribute("loginID");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<style>
td {
	text-align: center;
}
</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
	<!-- <Body> 태그 밑에 아래의 내용을 추가 -->
	<%
	if (loginID != null) {
	%>
	<table border="1" width="300">
		<tr>
			<td colspan="3" align="center"><%=loginID%>님</td>
		</tr>
		<tr>
			<td align="center" width="100"><a href="modifyForm.jsp">정보수정</a></td>
			<td align="center" width="100"><a href="deleteForm.jsp">회원탈퇴</a></td>
			<td align="center" width="100"><a href="logout.jsp">로그아웃</a></td>
		</tr>
	</table>
	<%
	} else {
	%>
	<!-- 기존의 login.jsp 페이지의 내용 -->
	<form action="loginProc.jsp" method="post"
		class="d-flex justify-content-center align-content-center">
		<div style="width: 300px;" class="mt-5">
			<table class="table table-bordered">
				<tr>
					<td colspan="2">회원 로그인</td>
				</tr>
				<tr>
					<td>아이디:</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td>비밀번호:</td>
					<td><input type="password" name="pass"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="로그인"> <input
						type="button" value="회원가입"
						onclick="javascript:window.location='regForm.jsp'" /></td>
				</tr>
			</table>
		</div>
	</form>
	<%
	}
	%>

</body>
</html>
