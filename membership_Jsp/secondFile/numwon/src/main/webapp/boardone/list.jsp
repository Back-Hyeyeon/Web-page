<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="boardone.BoardDAO"%>
<%@ page import="boardone.BoardVO"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<%!// 수정 <1>
int pageSize = 7;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");%>
<%
//<수정 2>
String pageNum = request.getParameter("pageNum");
if (pageNum == null) {
pageNum = "1";
}
int currentPage = Integer.parseInt(pageNum);
int startRow = (currentPage - 1) * pageSize + 1;
int endRow = currentPage * pageSize;
int count = 0;
int number = 0;
List<BoardVO> articleList = null;
BoardDAO dbPro = BoardDAO.getInstance();
count = dbPro.getArticleCount();//전체 글수
if (count > 0) {
	articleList =  dbPro.getArticleList(startRow, endRow);//수정<3>
}
number=count-(currentPage-1)*pageSize; //수정<4>
%>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class=" d-flex justify-content-center align-content-center">
	<div class=" d-block justify-content-center align-content-center">
		<div class="px-5 pt-2">글목록(전체 글:<%=count%>)
		</div>
		<table class="table  W-auto" style="width: 750px">
			<tr >
				<td  >
				<a class="px-5 pt-2"  href="writeForm.jsp">글쓰기</a>
				</td>
		</table>
		<%
		if (count == 0) {
		%>
		<table  class="table  W-auto border" style="width: 750px">
			<tr>
				<td align="center">게시판에 저장된 글이 없습니다.</td>
		</table>
		<%
		} else {
		%>
		<table class="table  W-auto border" style="width: 750px">
			<tr height="30" >
				<td align="center" style="width: 70px">번 호</td>
				<td align="center" >제 목</td>
				<td align="center" >작성자</td>
				<td align="center" >작성일</td>
				<td align="center" style="width: 70px">조 회</td>
				<td align="center" >IP</td>
			</tr>
			<%
			for (int i = 0; i < articleList.size(); i++) {
				BoardVO article = (BoardVO) articleList.get(i);
			%>
			<tr height="30">
				<td align="center" width="50"><%=number--%></td>
				<td width="250">
					<!-- 수정 <5> --> 
					<%
					 int wid=0; 
					 if(article.getDepth()>0){
					 wid=5*(article.getDepth());
					%>
					 <img src="images/level.gif" width="<%=wid%>" height="16">
					 <img src="images/re.gif">
					<%}else{%>
					 <img src="images/level.gif" width="<%=wid%>" height="16">
					<%}%>
					<a href="content.jsp?num=<%=article.getNum()%>&pageNum=<%=currentPage%>"> <!-- 수정<6> -->
						<%=article.getSubject()%></a> <%
					 if (article.getReadcount() >= 20) {
					 %> 
					 <img src="images/hot.gif" border="0" height="16">
					<%
					}
					%>
				</td>
				<td align="center" width="100">
				<a href="mailto:<%=article.getEmail()%>"> <%=article.getWriter()%>
					</a>
					</td>
				<td align="center" width="150"><%=sdf.format(article.getRegdate())%>
				</td>
				<td align="center" width="50"><%=article.getReadcount()%>
				</td>
				<td align="center" width="100"><%=article.getIp()%>
				</td>
			</tr>
			<%
			}
			%>
		</table>
		<%
		}
		%>
		<!-- 수정 <7> -->
	<div class=" d-flex justify-content-center align-content-center">
	<%
	 if (count > 0) {
	 int pageBlock = 5;
	 int imsi = count % pageSize == 0 ? 0 : 1;
	 int pageCount = count / pageSize + imsi;
	 int startPage = (int)((currentPage-1)/pageBlock)*pageBlock + 1;
	 int endPage = startPage + pageBlock - 1;
	 if (endPage > pageCount) endPage = pageCount; 
	 if (startPage > pageBlock) { %>
	 <a href="list.jsp?pageNum=<%=startPage-pageBlock%>">[이전]</a>
	<%
	 }
	 for (int i = startPage ; i <= endPage ; i++) { %>
	 <a href="list.jsp?pageNum=<%= i %>">[<%= i %>]</a>
	<%
	 }
	 if (endPage < pageCount) { %>
	 <a href="list.jsp?pageNum=<%=startPage+pageBlock%>">[다음]</a>
	<%
	 }
	 }
	%>
	</div>
	
		</div>
</body>
</html>