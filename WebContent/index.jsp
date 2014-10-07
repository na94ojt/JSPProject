<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8">
<link href = "css/bootstrap.min.css" rel="stylesheet">
<link rel = "stylesheet" type="text/css" href = "css/common.css">
<title>나드으리 남양주!!</title>


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
			case 5:
				src = "image/img_su.jpg"
				break;
			case 6:
				src = "image/img_gun.jpg"
				break;
			case 7:
				src = "image/img_zub.jpg"
				break;
			case 8:
				src = "image/img_o.jpg"
				break;
			case 9:
				src = "image/img_bul.jpg"
				break;
			case 10:
				src = "image/img_etc.jpg"
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
          
          <p>남양주시에 오신걸 환영합니다. 남양주를 소개하는 동시에 관광지역이나 문화재를 안내하는 사이트 입니다.</p><!--
          <p>남양주시에 오신걸 환영합니다. 남양주를 소개하는 동시에 관광지역이나 문화재를 안내하는 사이트 입니다.</p>
          <p>남양주시에 오신걸 환영합니다. 남양주를 소개하는 동시에 관광지역이나 문화재를 안내하는 사이트 입니다.</p>-->
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
		<area data-toggle="modal" data-target="#myModal1" shape="poly" coords="471,165,415,207,405,158,358,149,336,244,362,256,378,299,443,292,475,242" onmouseover="changeMap(3);" onmouseout="changeMap(0);">
		<area data-toggle="modal" data-target="#myModal2"shape="poly" coords="442,293,377,300,333,352,331,370,347,380,351,399,337,420,382,457" onmouseover="changeMap(4);" onmouseout="changeMap(0);">
		<area data-toggle="modal" data-target="#myModal3"shape="poly" coords="347,14,317,131,351,129,354,147,405,157,412,203,474,161,429,57" onmouseover="changeMap(5);" onmouseout="changeMap(0);">
		<area shape="poly" coords="255,169,195,206,183,276,271,236,300,192,270,190" onmouseover="changeMap(6);" onmouseout="changeMap(0);">
		<area shape="poly" coords="333,32,290,57,182,67,203,101,181,122,193,209,242,166,242,126,317,130" onmouseover="changeMap(7);" onmouseout="changeMap(0);">
		<area data-toggle="modal" data-target="#myModal6" shape="poly" coords="244,126,243,166,276,188,351,179,351,130,288,141" onmouseover="changeMap(8);" onmouseout="changeMap(0);">
		<area shape="poly" coords="104,142,142,117,169,67,201,98,181,119,177,231,161,242,118,230" onmouseover="changeMap(9);" onmouseout="changeMap(0);">
		<area data-toggle="modal" data-target="#myModal8" shape="poly" coords="183,281,272,233,299,189,345,181,333,205,331,246,265,292,260,330" onmouseover="changeMap(10);" onmouseout="changeMap(0);">
		
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

<div>
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title">화도읍</h4>
      </div>
      <div class="modal-body">
      
       <!-- 슬라이드 사진 내용 -->
      <div id="carousel-example-generic1" class="carousel slide">
      <!-- <ol class="carousel-indicators">
          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-example-generic" data-slide-to="1"></li>
          <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>-->
        <div class="carousel-inner">
        
          <div class="item active">
            <img src="image/NeoboardProcess.jpg" data-src="holder.js/1000x1000/auto/#777:#555/text:First slide"  alt="First slide">
           
            	<center>
	           <font color = black><h3>피아노 화장실</h3></font>
	              <p>하수방류수를 이용한 세계 최초,<br> 
	              최고 높이의 인공폭포와 어울릴 수 있는 그랜드 피아노형 화장실을 설치하여<br>
	               하수처리장을 아이들의 체험현장, 가족들의 나들이장소, 문화유적답사 코스 등의<br>
	                새로운 테마공간으로 탄생시켰습니다.</p>
             	</center>
          </div>
          
          <div class="item">
            <img src="image/san.jpg" data-src="holder.jsS"alt="Second slide">
           <font color = black>
	             <center><h3>천마산</h3></font>
	              <p>해발 812m 스키장으로 널리 알려진 천마산은<br>
	               서울에서 버스로 한시간이면 도착할 수 있는 명산중의 하나이다.</p>
	              </center>
              
          </div>
        </div>
        <a class="left carousel-control" href="#carousel-example-generic1" data-slide="prev">
          <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic1" data-slide="next">
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


<div>
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title">조안면</h4>
      </div>
      <div class="modal-body">
      
       <!-- 슬라이드 사진 내용 -->
      <div id="carousel-example-generic2" class="carousel slide">
      <!-- <ol class="carousel-indicators">
          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-example-generic" data-slide-to="1"></li>
          <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>-->
        <div class="carousel-inner">
        
          <div class="item active">
            <img src="image/pic.jpg" data-src="holder.js/1000x1000/auto/#777:#555/text:First slide"  alt="First slide">
            
            	
	           <center><font color = black><h3>남양주 종합 촬영소</h3>
	              <p>○ 촬영시설 12,158㎡ 6개 스튜디오(대형1,중형2,소형2,특촬1) <br>
					○ 영 상 관 13,248㎡(녹음실, 극장, 세미나실) <br>
					○ 전통한옥(운당) 539㎡ 가옥 7채 <br>
					○ 영상지원관 13,764㎡(관람체험시설, 영상교육센터, 소형스튜디오 2개, 식당, 매점, 소품실, 의상실 등) <br>
					○ 오픈세트 99,100㎡(야외촬영장) <br>
					○ 춘 사 관 3,013㎡(휴게편의시설 43실) <br>
					○ 야외화장실 182㎡(3개동) </font></p>
             </center>
          </div>
          
          <div class="item">
            <img src="image/pic1.jpg" data-src="holder.jsS"alt="Second slide">
          </div>
        </div>
        <a class="left carousel-control" href="#carousel-example-generic2" data-slide="prev">
          <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic2" data-slide="next">
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

<div>
<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title">수동면</h4>
      </div>
      <div class="modal-body">
      
       <!-- 슬라이드 사진 내용 -->
      <div id="carousel-example-generic3" class="carousel slide">
      <!-- <ol class="carousel-indicators">
          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-example-generic" data-slide-to="1"></li>
          <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>-->
        <div class="carousel-inner">
        
          <div class="item active">
            <img src="image/su1.jpg" data-src="holder.js/1000x1000/auto/#777:#555/text:First slide"  alt="First slide">
            
            	
	           <center><font color = black><h3>수동 계곡</h3>
	              <p> 산 사이로 흘러내리는 깨끗하고 맑은 계곡</font></p>
            	 </center>
          </div>
          
          <div class="item">
            <img src="image/su2.jpg" data-src="holder.jsS"alt="Second slide">
          </div>
          
          <div class="item">
            <img src="image/su3.jpg" data-src="holder.jsS"alt="Second slide">
            <center><font color = black><h3>수동면 지도</h3>
	              <p> 수동면은 산으로 둘러싸여있고, 그 사이로 흘러내려오는 계곡들이 많다.</font></p>
            	 </center>
           
          </div>
        </div>
        <a class="left carousel-control" href="#carousel-example-generic3" data-slide="prev">
          <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic3" data-slide="next">
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

<div>
<div class="modal fade" id="myModal8" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title">etc</h4>
      </div>
      <div class="modal-body">
      
       <!-- 슬라이드 사진 내용 -->
      <div id="carousel-example-generic4" class="carousel slide">
      <!-- <ol class="carousel-indicators">
          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-example-generic" data-slide-to="1"></li>
          <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>-->
        <div class="carousel-inner">
        
          <div class="item active">
            <img src="image/majesky1.jpg" data-src="holder.js/1000x1000/auto/#777:#555/text:First slide"  alt="First slide">
	           <center>
	           <font color = black><h3>도농동 마제스타워</h3>
	              <p>남양주 최고의 초고층 주상복합형 아파트 <br>
	                33층과 40층 2개동의 중간에 스카이파크가 있음</font></p>
            	 </center>
          </div>
          
          <div class="item">
            <img src="image/megabox.jpg" data-src="holder.jsS"alt="Second slide">
            <center>
            	<font color = black>
            	<h3>호평동 메가박스</h3>
            	<P>티아라가 다녀간 남양주시의 유일한 메가박스</P>
            	</font>
            </center>
          </div>
          
              <div class="item">
            <img src="image/emart.jpg" data-src="holder.jsS"alt="Second slide">
            <center>
            	<font color = black>
            	<h3>호평동 E-마트</h3>
            	<P>대한민국 열 손가락 안에드는 규모의 이마트</P>
            	</font>
            </center>
          </div>
          
        </div>
        <a class="left carousel-control" href="#carousel-example-generic4" data-slide="prev">
          <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic4" data-slide="next">
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


<div>
<div class="modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title">오남읍</h4>
      </div>
      <div class="modal-body">
      
       <!-- 슬라이드 사진 내용 -->
      <div id="carousel-example-generic5" class="carousel slide">
      <!-- <ol class="carousel-indicators">
          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-example-generic" data-slide-to="1"></li>
          <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>-->
        <div class="carousel-inner">
        
          <div class="item active">
            <img src="image/tree.jpg" data-src="holder.js/1000x1000/auto/#777:#555/text:First slide"  alt="First slide">
            
            	
	           <center><font color = black><h3>양지리 향나무</h3>
	                * 지정번호 : 천연기념물 제232호<br>
					* 지 정 일 : 1970. 11. 5. <br>
					* 수 령 : 약 500년 이상 , 높이 13m, 둘레 3.25m<br></font></p>
            	 </center>양지리 향나무는 연산군의 부인 신씨가 조부인 신전이 화를 당해 이곳으로 피신해 살다 하직하자 , 거창신씨의 선조를 모신 비 옆에 심었던 나무가 자란 것이라고 전해지고 있다.
          </div>
          
          <div class="item">
            <img src="image/hosu.jpg" data-src="holder.jsS"alt="Second slide">
              <center><font color = black><h3>오남 호수 공원</h3></font>
	               초록이 물든 자연에 폭 둘러싸인 채 고요히 작은 물결의 흐름을 보여주는 오남 호수.
			가슴 탁 트이게 넓고 편안하고 시원한 자연경관을 안고 있는 오남 호수 공원은 마을의 명소이다.<br>
			주말이면 아빠 손잡고 나란히 앉아 오순도순 이야기꽃도 피우고,<br>
			연둣빛 나무 사이 흘러드는 햇살을 받으며 사랑하는 사람과 오솔길을 거니는 것도 즐거움 중 하나.<br> 
			오남 호수를 지나 작은 냇물을 따라 위쪽으로 올라가면<br>
			 천마산 자락에서 흘러나온 계곡물에 발 담그고 차가운 기운을 온몸으로 느껴보는 것도 재미있다.<br>
			  나아가 냇물을 따라 계속 올라가다 보면 천마산 정상에 1~2시간이면 도달 할 수 있다. 
			
          </center>
          </div>
          
         
        </div>
        <a class="left carousel-control" href="#carousel-example-generic5" data-slide="prev">
          <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic5" data-slide="next">
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

<div id="footer_wrap">
	<div id="footer">
		<%@ include file="bottomArea.jsp"%>
	</div>
</div>

</body>
</html>