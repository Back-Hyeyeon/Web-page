<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="boardone.BoardDAO"%>
<%@ page import="boardone.BoardVO"%>
<%@ page import="java.text.SimpleDateFormat"%>

<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<%
int num = Integer.parseInt(request.getParameter("num"));
String pageNum = request.getParameter("pageNum");
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
try {
	BoardDAO dbPro = BoardDAO.getInstance();
	BoardVO article = dbPro.getArticle(num);
	int ref = article.getRef();
	int step = article.getStep();
	int depth = article.getDepth();
%>
<body class=" d-flex justify-content-center align-content-center">
	<div >
		<div align="center">글내용 보기</div> <br></br>
		<form>
		<div  class=" d-flex justify-content-center align-content-center">
			<table class="table  W-auto border">
				<tr height="30">
					<td align="center" width="125">글번호</td>
					<td align="center" width="125" align="center"><%=article.getNum()%></td>
					<td align="center" width="125">조회수</td>
					<td align="center" width="125" align="center"><%=article.getReadcount()%></td>
				</tr>
				<tr height="30">
					<td align="center" width="125">작성자</td>
					<td align="center" width="125" align="center"><%=article.getWriter()%></td>
					<td align="center" width="125">작성일</td>
					<td align="center" width="125" align="center"><%=sdf.format(article.getRegdate())%></td>
				</tr>
				<tr height="30">
					<td align="center" width="125">글제목</td>
					<td  width="375"  colspan="3"><%=article.getSubject()%></td>
				</tr>
				<tr>
					<td align="center" width="125">글내용</td>
					<td align="left" width="375" colspan="3"><pre><%=article.getContent()%></pre></td>
				</tr>
				<tr height="30">
					<td colspan="4" align="right">
					<input type="button" value="글수정" 
					onclick="document.location.href='updateForm.jsp?num=<%=article.getNum()%>&pageNum=<%=pageNum%>'">
						&nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="button" value="글삭제"
						onclick="document.location.href='deleteForm.jsp?num=<%=article.getNum()%>&pageNum=<%=pageNum%>'">
						&nbsp;&nbsp;&nbsp;&nbsp; <!-- 수정<1> --> 
						<input type="button" value="답글쓰기" 
						onclick="document.location.href= 'writeForm.jsp?num=<%=num%>&ref=<%=ref%>&step=<%=step%>&depth=<%=depth%>'">
 						&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="button" value="글목록"
						onClick="window.location='list.jsp'"
					>
					</td>
				</tr>
			</table>
			<%
			} catch (Exception e) {
			}
			%>
			</div>
		</form>
	</div>
</body>
</html>

