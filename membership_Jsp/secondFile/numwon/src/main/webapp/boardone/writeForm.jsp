<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script lang="javascript" src="script.js"></script>


</head>

<!-- 무언가 1	번 -->
<%
int num = 0, ref = 1, step = 0, depth = 0;
try {
	if (request.getParameter("num") != null) {
		num = Integer.parseInt(request.getParameter("num"));
		ref = Integer.parseInt(request.getParameter("ref"));
		step = Integer.parseInt(request.getParameter("step"));
		depth = Integer.parseInt(request.getParameter("depth"));
	}
%>

<body class=" d-block justify-content-center align-content-center">
	<div align="center">글쓰기</div>

	<form method="post" name="writeForm" action="writeProc.jsp"
		onsubmit="return writeSave()">
		<input type="hidden" name="num" value="<%=num%>"> <input
			type="hidden" name="ref" value="<%=ref%>"> <input
			type="hidden" name="step" value="<%=step%>"> <input
			type="hidden" name="depth" value="<%=depth%>">

		<div class=" d-flex justify-content-center align-content-center">
			<table class="table  W-auto" style="width: 700px">
				<tr>
					<td align="right" colspan="2"><a href="list.jsp">글목록</a></td>
				</tr>
				<tr>
					<td style="width: 100px">이름</td>
					<td width="330"><input type="text" size="12" maxlength="12"
						name="writer" /></td>
				</tr>
				<tr>
					<td style="width: 100px">이메일</td>
					<td width="330"><input type="text" size="30" maxlength="30"
						name="email" /></td>
				</tr>
				<tr>
					<td style="width: 100px">제목</td>
					<td width="330">
						<%
						if (request.getParameter("num") == null) {
						%> <input type="text"
						size="50" maxlength="50" name="subject" /> <%
				 } else {
				 %> 
				 <input type="text" size="50" maxlength="50" name="subject" value="[답변]" />
						<%
						}
						%>
					</td>
				</tr>
				<tr>
					<td style="width: 100px">내용</td>
					<td width="330"><textarea name="content" rows="13" cols="50"></textarea>
					</td>
				</tr>
				<tr>
					<td style="width: 100px">비밀번호</td>
					<td width="330"><input type="password" size="10"
						maxlength="10" name="pass" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
					<input type="submit" value="글쓰기" /> 
					<input type="reset" value="다시작성" /> 
					<input type="button" value="목록" onClick="window.location='list.jsp'">
					</td>
				</tr>
			</table>
		</div>
	</form>

	<!-- 무언가 2	번 -->
	<%
	} catch (Exception e) {
	}
	%>

</body>
</html>