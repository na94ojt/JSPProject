<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8">
<link rel = "stylesheet" type="text/css" href = "css/layout.css">
<script src="js/common.js" type="text/javascript"></script>
<title>Insert title here</title>
</head>

<style type="text/css">
	.photo 
	{
        width: 10%;
		height: 10%;
		background-size:contain; 
		background-repeat:no-repeat;
	} 
</style>

<body>

<%@ include file="topArea.jsp"%>
	
<!----------------------------------- 하단메뉴 ------------------------------------------------->
<div id="middle">
	
	<%@ include file="communityLeftMenu.jsp"%>
	
	<!------------------------------------------- 내용 --------------------------------------------->
	
	<div id="contents_wrap">
		<h1>포토갤러리</h1>
		<div id="contents">
		<%
			//db에 있는 자료들을 List에 저장
			//아직 List의 length를 34라고 규정
			int length = 34;
			int mypage;
			if (request.getParameter("mypage") == null)
			{
				mypage = 1;
			}
			else
			{
				mypage = Integer.parseInt(request.getParameter("mypage"));
			}
			String Test = "Test";
		%>
			<table class="table table-bordered">
				<%for (int i = 0; i<4; i++)
				{%>
					<tr width="100" height="150" align="center">
						<%for (int j = 0; j<4; j++)
						{
							if (0 == j%2)
							{%>
								<td class="photo" background="image/img_logo.jpg"></td>
							<%}
							else
							{%>
								<td class="photo" background="image/img_map.jpg"></td>
							<%}%>
						<%}%>
					</tr>
				<%}%>
			</table>
			<br>
			<table class="table">
				
				<tr border = 0>
					<td></td>
					<td colspan = 3 align="center">
						<ul class="pagination">
							<%if (0 == mypage-1)
							{%>
								<li><a href="#">◀</a></li>
							<%}
							else 
							{%>
								<li><a href="포토갤러리.jsp?mypage=<%=mypage-1%>">◀</a></li>
							<%}
						
							for (int i = 1; i<=length/10 + 1; i++)
							{%>
								<%if (i == mypage)
								{%>
									<li class="active"><a href="#"><%=i %></a></li>	
								<%}
								else
								{%>
									<li><a href="포토갤러리.jsp?mypage=<%=i%>"><%=i %></a></li>
								<%} %>
							<%}
							%>
							<%if (length/10+1 == mypage)
							{%>
								<li><a href="#">▶</a></li>
							<%}
							else 
							{%>
								<li><a href="포토갤러리.jsp?mypage=<%=mypage+1%>">▶</a></li>
							<%}%>
						</ul>
					</td>
					<td align = "center">
						<br>
						<button type="button" class="btn btn-primary btn-sm">글쓰기</button>
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>

</body>
</html>
							