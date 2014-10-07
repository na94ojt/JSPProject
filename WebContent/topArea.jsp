ot<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8">
<link href = "css/bootstrap.css" rel="stylesheet" media="screen">
<link rel = "stylesheet" type="text/css" href = "css/common.css">
<title></title>
</head>

<body>
<script src="//code.jquery.com/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/respond.js"></script>
<script type = "text/javascript">
<%
	String iid = (String)session.getAttribute("s_id");
%>

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

  <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.jsp">NamYangJu</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
      
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">커뮤니티 <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li onclick="document.location='Notice.jsp';"><a>공지사항</a></li>
                <li onclick="document.location='FreeBoard.jsp';"><a>자유게시판</a></li>
                <li onclick="document.location='PhotoGallery.jsp';"><a>포토갤러리</a></li>
              </ul>
            </li>
            
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">문화 <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li onclick="document.location='Museum.jsp';"><a>박물관</a></li>
                <li onclick="document.location='art.jsp';"><a>미술관</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">관광 <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li onclick="document.location='tour.jsp';"><a>시티투어</a></li>
                <li><a>나들이</a></li>
                <li onclick="document.location='food.jsp';"><a>특산물</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">축제 <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li onclick="document.location='dasan.jsp';"><a>다산문화재</a></li>
                <li onclick="document.location='gang.jsp';"><a>광릉숲문화축제</a></li>
                <li onclick="document.location='slow.jsp';"><a>슬로우푸드국제대회</a></li>
              </ul>
            </li>

          </ul>
          <form class="navbar-form navbar-right">
          <%
          	if (iid == null)
          	{%>
          		<li class="unactive"><button type="button" class="btn btn-info" data-toggle="modal" data-target="#LoginModal">Login</button></li>
          <%}else{%>
          <table>
          	<tr>
          		<td><li class="unactive"><a class="navbar-brand"><%=iid %>님 환영합니다.</a></li></td>
          		<td><li class="unactive">&nbsp;&nbsp;&nbsp;<a class="navbar-brand" href="LogOutPro.jsp">LogOut</a></li></td>
          	</tr>
          </table>
          <%} %>
          	
          </form>
        </div><!--/.navbar-collapse -->
     </div> 
</div>

<div class="modal fade" id="LoginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title">LogIn</h4>
			</div>
			
			<!---------------------------- 미니 브라우저 본문 ---------------------------->
			<div class="modal-body">
				<form id="flogin" class="form-horizontal" name="flogin" method="post" action="LoginPro.jsp">
<input type="hidden" name="url" value="" />
<fieldset>
	<div class="form-group">
		<label class="col-md-3 control-label" for="mb_id">아이디</label>
		<div class="col-md-9">
			<input type="text"  name="id" class="form-control span3" maxlength="20" value="" />
		</div>
	</div>
	<div class="form-group">
		<label class="col-md-3 control-label" >비밀번호</label>
		<div class="col-md-9">
			<input type="password" name="passwd" class="form-control span3" maxlength="20" /><br>
			<button type="submit" class="btn btn-primary">로그인</button>
			<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#SigninModal">회원가입</button>
		</div>
	</div>
	</div>
</fieldset>
</form>
				
			</div>
			
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<div class="modal fade" id="SigninModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title">SingIn</h4>
			</div>
			
			<!---------------------------- 미니 브라우저 본문 ---------------------------->
			<div class="modal-body">
			<form method="post" action="SignInPro.jsp">
<fieldset>
	<div class="form-group">
		<label class="col-md-3 control-label">아이디</label>
		<div class="col-md-9">
			<input type="text" name="id" class="form-control span3" maxlength="20">
			<span class="help-block">※ 영문자, 숫자, _ 만 입력 가능. 최소 3자이상 입력하세요.</span>
		</div>
	</div>
	<div class="form-group">
		<label class="col-md-3 control-label">비밀번호</label>
		<div class="col-md-9">
			<input type="password" name="passwd" class="form-control span3" maxlength="20"> 3 ~ 20자
		</div>
	</div>
	<div class="form-group">
		<label class="col-md-3 control-label">이름</label>
		<div class="col-md-9">
			<input type="text" name="name" class="form-control span2" maxlength="10">
		</div>
	</div>

	<div class="form-group">
		<label class="col-md-3 control-label">성별</label>
		<div class="col-md-9">
			<input type=radio name=sex value=man>남<br>
			<input type=radio name=sex value=woman>여<br><br><br>
		</div>
	</div>

	<div class="form-group">
		<label class="col-md-3 control-label">주소</label>
		<div class="col-md-9">
			<input type="text" name="address" class="form-control span2" maxlength="30" value="" /><br><br><br>
		</div>
	</div>
<input type="hidden" value="1" name="level">
	<hr />
	<p class="text-center">
		<button type="submit" value=회원가입>가입</button>
	</p>
</fieldset>

</form>
				
			</div>
			
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->

</body>
</html>
