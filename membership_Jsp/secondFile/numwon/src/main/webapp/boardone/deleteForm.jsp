<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
int num = Integer.parseInt(request.getParameter("num"));
String pageNum = request.getParameter("pageNum");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script language="JavaScript">
<!--
	function deleteSave() {
		if (document.delForm.pass.value == '') {
			alert("비밀번호를 입력하십시요.");
			document.delForm.pass.focus();
			return false;
		}
	}
// -->
</script>
</head>
<body class=" d-flex justify-content-center align-content-center">
	<div>
		<b>글삭제</b> <br></br>
		<form method="POST" name="delForm"
			action="deleteProc.jsp?pageNum=<%=pageNum%>"
			onsubmit="return deleteSave()">
			<table class="table  W-auto border" style="width: 650px">
				<tr height="30">
					<td align=center><b>비밀번호를 입력해 주세요.</b></td>
				</tr>
				<tr height="30">
					<td align=center>비밀번호 : 
					<input type="password" name="pass" size="8" maxlength="12"> 
						<input type="hidden" name="num"	value="<%=num%>">
						</td>
				</tr>
				<tr height="30">
					<td align=center>
					<input type="submit" value="글삭제"> 
					<input type="button" value="글목록"	
					onclick="document.location.href='list.jsp?pageNum=<%=pageNum%>'">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>