ot<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8">
<link href = "css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel = "stylesheet" type="text/css" href = "css/common.css">


<title>Insert title here</title>
</head>





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

  <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">NamYangJu</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="index.jsp">Home</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">커뮤니티 <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li onclick="document.location='공지사항.jsp';"><a>공지사항</a></li>
                <li onclick="document.location='자유게시판.jsp';"><a>자유게시판</a></li>
                <li onclick="document.location='포토갤러리.jsp';"><a>포토갤러리</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">문화 <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a>박물관</a></li>
                <li><a>미술관</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">관광 <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a>나들이</a></li>
                <li><a>다산길</a></li>
                <li><a>맛집</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">축제 <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a>다산문화재</a></li>
                <li><a>광릉숲문화축제</a></li>
                <li><a>슬로우푸드국제대회</a></li>
              </ul>
            </li>
          </ul>
          <form class="navbar-form navbar-right">
            <div class="form-group">
              <input type="text" placeholder="Id" class="form-control">
            </div>
            <div class="form-group">
              <input type="password" placeholder="Password" class="form-control">
            </div>
            <button type="submit" class="btn btn-success" onClick="SignInPro.jsp">Sign in</button>
            <button type="submit" class="btn btn-success" onClick="SignUpPro.jsp">Sign up</button>
          </form>
        </div><!--/.navbar-collapse -->
     </div> 
</div>


</body>
</html>
