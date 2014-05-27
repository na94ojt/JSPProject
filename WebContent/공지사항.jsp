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

<body>

<%@ include file="topArea.jsp"%>	
<!----------------------------------- 하단메뉴 ------------------------------------------------->
<div id="middle">
	
	<%@ include file="communityLeftMenu.jsp"%>
	
	<!------------------------------------------- 내용 --------------------------------------------->
	
	<div id="contents_wrap">
		<h1>공지사항</h1>
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
			<table class="table">
				<tr>
					<td>글번호</td>
					<td>제목</td>
					<td>글쓴이</td>
					<td>날짜</td>
					<td>조회수</td>
				</tr>
				<%
				if (0 < (length - mypage*10))
				{
					for (int i = 0; i<10; i++)
					{%>
						<tr>
							<td><%=Test %></td>
							<td><%=Test %></td>
							<td><%=Test %></td>
							<td><%=Test %></td>
							<td><%=Test %></td>
						</tr>
				<%	}
				}
				else
				{
					for (int i = 0; i<length%10; i++)
					{%>
						<tr>
							<td><%=Test %></td>
							<td><%=Test %></td>
							<td><%=Test %></td>
							<td><%=Test %></td>
							<td><%=Test %></td>
						</tr>
				<%	}
				}
				%>
				<tr>
					<td colspan = 5 align="center">
						◀&nbsp;
						<%
						for (int i = 1; i<=length/10 + 1; i++)
						{
							if (i == mypage)
							{%>
								<u><b><%=i %></b></u>
							<%}
							else
							{%>
						
							<a href="공지사항.jsp?mypage=<%=i%>"><%=i %></a>
						<%	}
						}
						%>
						&nbsp;▶
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>

</body>
</html>
							