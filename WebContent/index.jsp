<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8">
<link href = "css/bootstrap.min.css" rel="stylesheet">
<link rel = "stylesheet" type="text/css" href = "css/common.css">
<title>Insert title here</title>



</head>
<!--  메인 이미지 좌표 -->
	<script language="javascript" type="text/javascript">
		function changeMap(mapNumber) {
			var img = document.getElementById('mapImage');
			var src;
			
			switch (mapNumber) {
			case 0:
				src = "image/img_map.jpg";
				break;
			case 1:
			
				break;
				
			case 2:
				src = "image/img_wa.jpg";
				break;
			case 3:
				src = "image/img_ha.jpg"
				break;
			case 4:
				src = "image/img_jo.jpg"
				break;
			}
			
			img.setAttribute("src", src);
		}
	</script>
<body>

<!-- 상단 메뉴-->

<%@ include file="topArea.jsp"%>

<!-- ------하단메뉴----   -->	

<div class="jumbotron">
        <div class="container">
          <!-- img src="image/img_logo.jpg" alt="나드으리 남양주!!"-->
          <br><br><br>
          <h1>나드으리 남양주!</h1>
          
          <p>남양주시에 오신걸 환영합니다. 남양주를 소개하는 동시에 관광지역이나 문화재를 안내하는 사이트 입니다.</p>
          <p>남양주시에 오신걸 환영합니다. 남양주를 소개하는 동시에 관광지역이나 문화재를 안내하는 사이트 입니다.</p>
          <p>남양주시에 오신걸 환영합니다. 남양주를 소개하는 동시에 관광지역이나 문화재를 안내하는 사이트 입니다.</p>
		</div>
</div>

<!-- 메인 이미지 -->
<div class="container">
<div align = 'center'>
		<a><img id="mapImage" src="image/img_map.jpg" class="-responsive" alt="Responsive image" usemap="#mapA"></a>
</div>
</div>

<!-- 좌표 -->
<map name="mapA">
		<area data-toggle="modal" data-target="#myModal" shape="poly" coords="329,247,267,298,274,320,262,337,337,417,346,378,329,353,374,300" onmouseover="changeMap(2);" onmouseout="changeMap(0);">
		<area shape="poly" coords="471,165,415,207,405,158,358,149,336,244,362,256,378,299,443,292,475,242" onmouseover="changeMap(3);" onmouseout="changeMap(0);">
		<area shape="poly" coords="442,293,377,300,333,352,331,370,347,380,351,399,337,420,382,457" onmouseover="changeMap(4);" onmouseout="changeMap(0);">
</map>

	
	
<!-- Button trigger modal -->
<!-- Modal -->
<div>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title">호평</h4>
      </div>
      <div class="modal-body">
      
       <!-- 슬라이드 사진 내용 -->
      <div id="carousel-example-generic" class="carousel slide">
      
      <!-- <ol class="carousel-indicators">
          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-example-generic" data-slide-to="1"></li>
          <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>-->
        <div class="carousel-inner">
          <div class="item active">
            <img src="image/hopung/megabox.jpg" data-src="holder.js/1000x1000/auto/#777:#555/text:First slide"  alt="First slide">
            	
          </div>
          <div class="item">
          	
            <img src="image/hopung/emart.jpg" data-src="holder.jsS"alt="Second slide">
            <div class="carousel-caption">
            
	             <h3>First slide label</h3>
	              <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>

              </div>
          </div>
          <div class="item">
            <img src="image/hopung/img_wa.jpg" data-src="holder.js/900x500/auto/#777:#555/text:Third slide"  alt="Third slide">
          </div>
        </div>
        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
          <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
          <span class="icon-next"></span>
        </a>
      </div>
  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <div class="carousel-caption">
      </div>
    </div>
  </div>
</div>
      
        <!-- 슬라이드 사진 내용 -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


 <footer class="bs-footer" role="contentinfo">
    	<div class="container">
	    	<div class="bs-social">
 		 <ul class="bs-social-buttons"></ul>
		<img src="image/img_logo.jpg" align=left alt="나드으리 남양주!!">
		<br>
		<br>
    	 	<b>㈜남양주를사랑하는사람들</b>  사업자전화번호: 010-4188-0956 &nbsp  E-mail: lehdqlsl@naver.com<br>
	      <font color=black>나드으리! 남양주의 컨텐츠 등은 저작권법의 보호가 없으므로 마음것 전재˙복사˙배포를 허용합니다.</font><br>
	      Copyright (c) NaYangJu Communications. All righs reserved.
		</div>
	</div>
 </footer>


	
</body>
</html>