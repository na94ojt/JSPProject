<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="left">
		<h1>
			커뮤니티
		</h1>
		<ul id="left_menu">
			<table class="table table-hover">
				<tr align = "right" onclick="document.location='공지사항.jsp';" style="background:#D2D2D2">
					<td>공지사항</td>
				</tr>
				<tr align = "right" onclick="document.location='포토갤러리.jsp';">
					<td>포토갤러리</td>
				</tr>
				<tr align = "right" onclick="document.location='자유게시판.jsp';">
					<td>자유게시판</td>
				</tr>
			</table>
		</ul>
	</div>
	
	<!----------------------------------------- 경계 이미지 ------------------------------------------->
	
	<div id="bg_area">
		<img alt=" " src="image/bg_area.gif">
	</div>
	
</body>
</html>
