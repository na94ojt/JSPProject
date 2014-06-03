<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8">
<link rel = "stylesheet" type="text/css" href = "css/layout.css">
<script src="js/common.js" type="text/javascript"></script>
<script src="js/bootstrap.js" type="text/javascript"></script>
<title>Insert title here</title>
</head>

<style type="text/css">
	div.img
	{
		margin: 2px;
		border: 1px;
		height: 150px;
		width: 150px;
		float: left;
		text-align: center;
	}
	div.img img
	{
		display: inline;
		margin: 3px;
		border: 1px solid #ffffff;
	}
	div.img a:hober img
	{
		border: 1px solid #0000ff;
	}
	div.desc
	{
		text-align: center;
		font-weight: normal;
		width: 120px;
		margin: 2px;
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
		%>
		
		<!------------------------------------- 사진 테이블 -------------------------------------------->
			<table class="table table-bordered">
				<%for (int i = 0; i<4; i++)
				{%>
					<tr width="100" height="150" align="center">
						<%for (int j = 0; j<4; j++)
						{
							if (0 == j%2)
							{%>
								<!--td class="photo" background="image/img_logo.jpg">나드으리</td-->
								<td>
									<div class="img">
											<a href="#" class="thumbnail">
												<img src="image/img_logo.jpg"/>
											</a>
											<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
											</button>
									</div>
									<br>
									으리
								</td>
							<%}
							else
							{%>
								<td>
									<div class="img">
											<a href="#" class="thumbnail">
												<img src="image/img_map.jpg"/>
											</a>
									</div>
									<br>
									지도지도
								</td>
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

<!----------------------------------- 미니 브라우저(Modal) -------------------------------------------->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title">Gallery</h4>
			</div>
			
			<!---------------------------- 미니 브라우저 본문 ---------------------------->
			<div class="modal-body">
				<div id="carousel-example-generic" class="carousel slide">
				
					<!-- 이미지 슬라이드 item 디비 연동 후에 jsp를 사용하여 반복문 돌릴 예정 -->
					<div class="carousel-inner">
						<div class="item active">
							<img src="image/img_logo.jpg" alt="..." align="center">
						</div>
						<div class="item">
							<img src="image/img_map.jpg" alt="..." align="center">
						</div>
					</div>
				
					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
						<span class="icon-prev"></span>
					</a>
					<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
						<span class="icon-next"></span>
					</a>
				</div>
			</div>
			
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->

</body>
</html>
							