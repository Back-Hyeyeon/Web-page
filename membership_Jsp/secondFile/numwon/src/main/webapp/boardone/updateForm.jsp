<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="boardone.BoardDAO"%>
<%@ page import="boardone.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script lang="JavaScript" src="script.js"></script>
</head>
<%
int num = Integer.parseInt(request.getParameter("num"));
String pageNum = request.getParameter("pageNum");
try {
	BoardDAO dbPro = BoardDAO.getInstance();
	BoardVO article = dbPro.updateGetArticle(num);
%>
<body class=" d-flex justify-content-center align-content-center">
	<div class="p-4">
		<b >글수정</b> <br>
		<form method="post" name="writeform"	action="updateProc.jsp?pageNum=<%=pageNum%>"
			onsubmit="return writeSave()">
			<table class="table  W-auto border" style="width: 550px">
				<tr>
					<td width="70" align="center">이 름</td>
					<td align="left" width="330">
					<input type="text" size="10" maxlength="10" name="writer" value="<%=article.getWriter()%>">
					<input type="hidden" name="num" value="<%=article.getNum()%>">
					</td>
				</tr>
				<tr>
					<td width="70" align="center">제 목</td>
					<td align="left" width="330">
					<input type="text" size="40"maxlength="50" name="subject" value="<%=article.getSubject()%>">
						</td>
				</tr>
				<tr>
					<td width="70" align="center">Email</td>
					<td align="left" width="330">
					<input type="text" size="40" maxlength="30" name="email" value="<%=article.getEmail()%>">
					</td>
				</tr>
				<tr>
					<td width="70" align="center">내 용</td>
					<td align="left" width="330">
					<textarea name="content"	rows="13" cols="40">
					<%=article.getContent()%></textarea>
					</td>
				</tr>
				<tr>
					<td width="70" align="center">비밀번호</td>
					<td align="left" width="330">
					<input type="password" size="8" maxlength="12" name="pass">
					</td>
				</tr>
				<tr>
					<td colspan=2 align="center">
					<input type="submit" value="글수정">
					<input type="reset" value="다시작성"> <input type="button" value="목록보기"	
					onclick="document.location.href='list.jsp?pageNum=<%=pageNum%>'">
					</td>
				</tr>
			</table>
		</form>
	</div>
	<%
	} catch (Exception e) {
	}
	%>
</body>
</html>