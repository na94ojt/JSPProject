<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8">
<link href = "css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel = "stylesheet" type="text/css" href = "css/common.css">
<link rel = "stylesheet" type="text/css" href = "css/layout.css">
<script src="js/common.js" type="text/javascript"></script>
<title>Insert title here</title>


</head>
<style type="text/css">
	.lr{ margin: 0 20px;}
</style>
<body>
<script src="//code.jquery.com/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/respond.js"></script>
<script type = "text/javascript">

//<![CDATA[
	function MM_showHideLayers() { //v9.0
		//var i,p,v,obj,args=MM_showHideLayers.arguments;
		var i,v,obj,args=MM_showHideLayers.arguments;
		for (i=0; i<(args.length-2); i+=3) 
			with (document) if (getElementById && ((obj=getElementById(args[i]))!=null)) {
				v=args[i+2];
				if (obj.style) { obj=obj.style; v=(v=='show')?'block':(v=='hide')?'none':v; }
				obj.display=v; 
			}
	}

	function MM_swapRestore() { //v3.0
		var i,x,a=document.MM_sr; 
		for(i=0; a&&i<a.length&&(x=a[i])&&x.oSrc; i++)
		{
			x.src=x.oSrc;
		}
	}
	function mouse_over( url )
	 {
	  document.all.itemcount.style.display='';
	  document.all.itemcount.innerHTML = "<img src='" + url + "'>";
	 }

	//]]>
</script>
<!-- 상단 메뉴-->
<div id="topArea">
	<div class="boxT">
	
			<ul class="topNvBox">
				<li>
					<a href = "login.jsp">
						<button type="button" class="btn btn-default btn-xs"><font color=green><b>로그인</b></font></button>
					</a>
				</li>
				<li class="li_line"></li>
				<li>
					<a href = "MemberRegForm.html">
						<button type="button" class="btn btn-default btn-xs"><font color=gray><b>회원가입</b></font></button>
					</a>
				</li>
			</ul>
			
			<ul class="logoGnv">
			
				<li class="logo">
					<a href="index.html">
						<img src="image/img_logo.jpg" alt="나드으리 남양주!!">
					</a>
				</li>
				
				<li class="Gnv">
				
					<div class="subnav">
						<ul class="nav nav-pills">
							<li class="dropdown">
								<div class="lr">
								<a class="btn btn-default btn-lg dropdown-toggle" data-toggle="dropdown">
									<b>커뮤니티</b>
									<span class="caret"></span>
								</a>
								<ul class="dropdown-menu">
									<li><a>공지사항</a></li>
									<li><a>포토갤러리</a></li>
									<li><a>자유게시판</a></li>
								</ul>
								</div>
							</li>
							
							
							<li class="dropdown">
								<div class="lr">
								<a class="btn btn-default btn-lg dropdown-toggle" data-toggle="dropdown">
									<b>문화</b>
									<b class="caret"></b>
								</a>
								<ul class="dropdown-menu">
									<li><a>박물관</a></li>
									<li><a>미술관</a></li>
								</ul>
								</div>
							</li>
							
							
							<li class="dropdown">
								<div class="lr">
								<a class="btn btn-default btn-lg dropdown-toggle" data-toggle="dropdown">
									<b>관광</b>
									<b class="caret"></b>
								</a>
								<ul class="dropdown-menu">
									<li><a>나들이</a></li>
									<li><a>다산길</a></li>
									<li><a>맛집</a></li>
								</ul>
								</div>
							</li>

							<li class="dropdown">
								<div class="lr">
								<a class="btn btn-default btn-lg dropdown-toggle" data-toggle="dropdown">
									<b>축제</b>
									<b class="caret"></b>
								</a>
								<ul class="dropdown-menu">
									<li><a>다산문화재</a></li>
									<li><a>광릉숲문화축제</a></li>
									<li><a>슬로푸드국제대회</a></li>
								</ul>
								</div>
							</li>
							
						</ul>
					</div>
				</li>
			</ul>
	</div>
</div>
	
<!-- ------하단메뉴----   -->
<div id="middle">
	<!-- 옆에 왼쪽에 메뉴 -->
	<div id="left">
		<h1>
			커뮤니티
		</h1>
		<ul id="left_menu">
			<table class="table table-hover">
				<tr align = "right">
					<td>공지사항</td>
				</tr>
				<tr align = "right">
					<td>포토갤러리</td>
				</tr>
				<tr align = "right">
					<td>자유게시판</td>
				</tr>
			</table>
		</ul>
	</div>
	<!-- 경계 이미지 -->
	<div id="bg_area">
		<img alt=" " src="image/bg_area.gif">
	</div>
	<!-- 내용 -->
	<div id="contents_wrap">
		<h1>공지사항</h1>
		<div id="contents">
		<%
			//db에 있는 자료들 가져옴
			//자료갯수 세서 10으로 나눔
		%>
			<table class="table">
				<tr>
					<td>no</td>
					<td>제목</td>
					<td>글쓴이</td>
					<td>날짜</td>
					<td>조회수</td>
				</tr>
				<tr>
					<td colspan = 5>asdgagasd</td>
				</tr>
			</table>
		</div>
	</div>
</div>
</body>
</html>
