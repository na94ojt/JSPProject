/* roll over-out image */
function menuOver() {
	//alert(this.src);
	this.src = this.src.replace(".gif", "_on.gif");
}
function menuOut() {
	this.src = this.src.replace("_on.gif", ".gif");
}

function menuClick() {
	if(this.id.indexOf("menu-image") > -1) {
		var submenu = document.getElementById("menu" + this.id.substring(10));
		var uls = submenu.getElementsByTagName("ul");
		if(uls.length>0){
			if(uls[0].style.display == "none")
				uls[0].style.display = "block";
			else
				uls[0].style.display = "none";
		}
	}
}
function menuOut() {
		this.src = this.src.replace("_on.gif", ".gif");
}

function initImgEffect(ImgEls,SelImg) {
	
	MenuImg = document.getElementById(ImgEls).getElementsByTagName("img");
	MenuImgLen = MenuImg.length;

	for (i=0; i<MenuImgLen; i++) {
		MenuImg.item(i).onmouseover = menuOver;
		MenuImg.item(i).onmouseout = menuOut;
		if (i == SelImg) {
			MenuImg.item(i).onmouseover();
			MenuImg.item(i).onmouseover = null;
			MenuImg.item(i).onmouseout = null;
		}
	}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}




var zoomRate = 20;
var maxRate = 200;
var minRate = 100;
var curRate = 100;
function zoomInOut(contentid, how)
{
	
	var bIE = new RegExp(/MSIE/).test(navigator.userAgent);
  if (bIE && (
  			((how == "in")&&(curRate >= maxRate)) ||
  			((how == "out") && (curRate <= minRate))
  	) ) {
    return; 
  }
  if (how == "in") {
  	if(bIE) {
    	curRate = curRate + zoomRate;
    	document.body.style.zoom = curRate + '%';	
    }
    else {    	
    	scaleFont(+1);
    }
  }
  else if (how == "def"){
  	if(bIE) {
  		document.body.style.zoom = 1;
  		curRate = 100;
  	}
  	else {
  		scaleFont(0);
	  }	
	}
	else{
		if(bIE) {
    	curRate = curRate + (-1)*zoomRate;
    	document.body.style.zoom = curRate + '%';
    }
    else {
			scaleFont(-1);
    }
  }
}

/* IE HTML rewrite */
function IE_HtmlRewrite(objParent) {
	if (window.ActiveXObject && objParent) {
		objParent.innerHTML = objParent.innerHTML;
	}
}

//IE Flicker Bug
(function(){
	/*Use Object Detection to detect IE6*/
	var  m = document.uniqueID /*IE*/
	&& document.compatMode  /*>=IE6*/
	&& !window.XMLHttpRequest /*<=IE6*/
	&& document.execCommand ;
	try{
		if(!!m){ m("BackgroundImageCache", false, true) /* = IE6 only */ }
	}catch(oh){};
})();

function getCookie( name )
{
	var nameOfCookie = name + "=";
	var x = 0;
	while ( x <= document.cookie.length )
	{
		var y = (x+nameOfCookie.length);
		if ( document.cookie.substring( x, y ) == nameOfCookie )
		{
			if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 )
				endOfCookie = document.cookie.length;
			return unescape( document.cookie.substring( y, endOfCookie ) );
		}
		x = document.cookie.indexOf( " ", x ) + 1;
		if ( x == 0 )
			break;
	}
	return "";
}

function setCookie( name, value,domain ,expireday)
{
	var todayDate = new Date();

	todayDate.setDate(todayDate.getDate() + expireday);

	document.cookie = name + "=" + escape( value ) + "; path=/; domain=" + domain + "; expires=" + todayDate.toGMTString() +";"
}


function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}

function initSubmenuByMenuId(depth1, depth2, depth3,depth4, menuId) {
	selectDepth1 = "menu" + depth1 + "-" + depth2;
	selectDepth2 = "menu" + depth1 + "-" + depth2 + "-" + depth3;
	selectDepth3 = "menu" + depth1 + "-" + depth2 + "-" + depth3 + "-" + depth4;
	
	nav = document.getElementById(menuId);
	if(!nav) return;
	menuEl = nav.getElementsByTagName("li");	
	
	for(i = 0; i < menuEl.length; i++) {
		if (menuEl.item(i).id == selectDepth1 || menuEl.item(i).id == selectDepth2  || menuEl.item(i).id == selectDepth3  ) {
			var im = menuEl.item(i).getElementsByTagName("img");
			if(im && im.length > 0 ) {
				im.item(0).src = im.item(0).src.replace(".gif", "_on.gif");
			}
			else {
				var anc = menuEl.item(i).getElementsByTagName("a");
				if(anc && anc.length > 0) {
					anc.item(0).className = "on";
					if(menuEl.item(i).id == selectDepth3) {
						anc.item(0).className += " leaf";
					}
				}
			}
		} else {
			var im = menuEl.item(i).getElementsByTagName("img");
			if( im == null || im.length == 0)  continue;
			im.item(0).onmouseover = menuOver;
			im.item(0).onmouseout = menuOut;
			im.item(0).onfocus = menuOver;
			im.item(0).onblur = menuOut;
			if (menuEl.item(i).getElementsByTagName("ul").item(0)) {
				menuEl.item(i).getElementsByTagName("ul").item(0).style.display = "none";
			}
		}
	}	
	menuId = "menu" + depth1;
	initTopmenuByMenuId(depth1,depth2,depth3,depth4,menuId);
}

function initTopMenu(el,depth1) {
	topMenuOut(el.getElementsByTagName("img").item(0));
	if(el.id == "top-menu" + depth1) {
		topMenuOver(el.getElementsByTagName("img").item(0));
	}
}
function topMenuOver(img) {
	img.src = img.src.replace(".gif", "_on.gif");
}
function topMenuOut(img) {
	img.src = img.src.replace("_on.gif", ".gif");
}
function selectTopmenuByMenuId() {
	var depth1 = this.id.substring("top-menu-head".length,this.id.length);
	var menuId = "sub-menu" + depth1;		
	var selectDepth1 = "top-" + depth1 + "-1";
	var topnav = document.getElementById("lnb");
	if(!topnav) return;
	var topEl = topnav.getElementsByTagName("ul");
	for(i = 0 ; i < topEl.length ; i++){
		if(topEl[i].id.substring(0,12) == "top-sub-menu") {
			topEl[i].style.display = "none";
		}
	}
	var topEl2 = topnav.getElementsByTagName("li");
	for(i = 0 , seq = 1; i < topEl2.length ; i++){
		if(topEl2[i].id.substring(0,8) == "top-menu") {
			initTopMenu(topEl2[i],depth1);
		}
	}
	
	var nav = document.getElementById("top-" + menuId);
	if(!nav) return;
	nav.style.display = "block";
	menuEl = nav.getElementsByTagName("li");
	for(i = 0; i < menuEl.length; i++) {
		var imgEl = menuEl.item(i).getElementsByTagName("img")
		if(imgEl != null && imgEl.length>0) {
			imgEl.item(0).onmouseover = menuOver;
			imgEl.item(0).onmouseout = menuOut;
			imgEl.item(0).onfocus = menuOver;
			imgEl.item(0).onblur = menuOut;
		}
	}
}
function initTopmenuByMenuId(depth1, depth2, depth3, depth4, menuId) {
	var selectDepth1 = "top-" + depth1 + "-" + depth2;
	var selectDepth2 = "top-" + depth1 + "-" + depth2 + "-" + depth3;
	var selectDepth3 = "top-" + depth1 + "-" + depth2 + "-" + depth3 + "-" + depth4;
	var topnav = document.getElementById("lnb");
	if(!topnav) return;
	var topEl = topnav.getElementsByTagName("ul");	
	for(var i = 0 ; i < topEl.length ; i++){
		if(topEl[i].id.substring(0,12) == "top-sub-menu") {
			topEl[i].style.display = "none";
		}
	}
	
	var topEl2 = topnav.getElementsByTagName("a");

	for(i = 0, seq = 0 ; i < topEl2.length ; i++){
		if(topEl2[i].id.substring(0,13) == "top-menu-head") {
			topEl2[i].onmouseover =  selectTopmenuByMenuId;
			topEl2[i].onfocus = selectTopmenuByMenuId;
			if ( topEl2[i].id.substring(13) == depth1) {
				topEl2[i].onmouseover();
			}
			seq++;
		}
	}
	
	var nav = document.getElementById("top-" + menuId);
	if(!nav) return;
	nav.style.display = "block";
	menuEl = nav.getElementsByTagName("li");
	for(i = 0; i < menuEl.length; i++) {
		var menuElItm = menuEl.item(i);
		var imgEl = menuElItm.getElementsByTagName("img");
		if(imgEl == null || imgEl.length == 0)  {
			var aEl = menuElItm.getElementsByTagName("a");
			var itm = aEl.item(0);
			if (menuElItm.id == selectDepth1 || menuElItm.id == selectDepth2  || menuElItm.id == selectDepth3  ) {
				itm.className = "on";
			}
		} else {
			var itm = imgEl.item(0);
			if (menuElItm.id == selectDepth1 || menuElItm.id == selectDepth2  || menuElItm.id == selectDepth3  ) {
				itm.src = itm.src.replace(".gif", "_on.gif");
				itm.onmouseover = null;
				itm.onmouseout = null;
				itm.onfocus = null;
				itm.onblur = null;
			}
			else {
				itm.onmouseover = menuOver;
				itm.onmouseout = menuOut;
				itm.onfocus = menuOver;
				itm.onblur = menuOut;
			}
		}
	}
}


function goURLPop(o) {
  var f=o;
  if(f.selectbudget.value == "") return false;
  location.href=f.selectbudget.value;
 }


function ctabmenuView(a) {
	if(!document.getElementById) return false;
	if(!document.getElementsByTagName) return false;
	if(!document.getElementById("ctabmenu")) return false;
	var a;
	var el = document.getElementById("ctab4m"+a);
	if(el && el.nodeName == "LI")
	{
		el.className = "on";
		el.getElementsByTagName("a")[0].className = "on";
	}
}


function onoff(obj)
{
	var obj=document.getElementById(obj); 
	if(obj.style.display=="inline") 
		obj.style.display="none"; 
	else
		obj.style.display="inline"; 
} 


function mainBoardChange(idx) {
	var obj;
	var obj2;
	for (var z=1; z<=6; z++) { /*130221 보도자료 추가 z<=5 -> z<=6*/
		obj = document.getElementById('mainBoard' + z);
		obj2 = document.getElementById('mainBoardMore' + z);
		obj3 = document.getElementById('bImg' + z);
		if ( obj && obj2 && obj3 ) {
			ln1 = obj3.src.substring(0,obj3.src.lastIndexOf(".") -1) + "2.gif";
			ln2 = obj3.src.substring(0,obj3.src.lastIndexOf(".") -1) + "1.gif";
			if (z == idx){
				obj.className="";
				obj2.className="more";
				obj3.src = ln1;
			} else {
				obj.className="hid";
				obj2.className="more_hid";
				obj3.src = ln2;
			}

		}
	}
}

/** quick menu **/
function initMoving(target) {
	if (!target)
		return false;

	var obj = target;
	obj.initTop = 200;
	obj.initLeft = 1040;
	obj.bottomLimit = document.documentElement.scrollHeight - 280;
	obj.topLimit = 135;

	obj.style.position = "absolute";
	obj.top = obj.initTop;
	obj.left = obj.initLeft;
	obj.style.top = obj.top + "px";
	obj.style.left = obj.left + "px";

	obj.getTop = function() {
		if (document.documentElement.scrollTop) {
			return document.documentElement.scrollTop;
		} else if (window.pageYOffset) {
			return window.pageYOffset;
		} else {
			return 0;
		}
	}
	obj.getHeight = function() {
		if (self.innerHeight) {
			return self.innerHeight;
		} else if(document.documentElement.clientHeight) {
			return document.documentElement.clientHeight;
		} else {
			return 500;
		}
	}
	obj.move = setInterval(function() {
		pos = obj.getTop() + obj.getHeight() / 5 - 15;

		if (pos > obj.bottomLimit)
			pos = obj.bottomLimit
		if (pos < obj.topLimit)
			pos = obj.topLimit

		interval = obj.top - pos;
		obj.top = obj.top - interval / 5;
		obj.style.top = obj.top + "px";
	}, 40)
}
//쿠키 입력
function set_cookie(name, value, expirehours, domain) {
	var today = new Date();
	today.setTime(today.getTime() + (60*60*1000*expirehours));
	document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + today.toGMTString() + ";";
	if (domain) {
		document.cookie += "domain=" + domain + ";";
	}
}

// 쿠키 얻음
function get_cookie(name) {
	var find_sw = false;
	var start, end;
	var i = 0;

	for (i=0; i<= document.cookie.length; i++) {
		start = i;
		end = start + name.length;

		if(document.cookie.substring(start, end) == name) {
			find_sw = true
			break
		}
	}

	if (find_sw == true) {
		start = end + 1;
		end = document.cookie.indexOf(";", start);

		if(end < start)
			end = document.cookie.length;

		return document.cookie.substring(start, end);
	}
	return "";
}

// 쿠키 지움
function delete_cookie(name) {
	var today = new Date();

	today.setTime(today.getTime() - 1);
	var value = get_cookie(name);
	if(value != "")
		document.cookie = name + "=" + value + "; path=/; expires=" + today.toGMTString();
}


function getFontSize() {
    var fontSize = parseInt(get_cookie("ck_fontsize")); // 폰트크기 조절
    if (isNaN(fontSize)) { fontSize = 12; }
    return fontSize;
}

function scaleFont(val) {
    var fontSize = getFontSize();
    var fontSizeSave = fontSize;
    if (val > 0) {
        if (fontSize <= 18) {
            fontSize = fontSize + val; 
        }
    } else {
        if (fontSize > 12) {
            fontSize = fontSize + val; 
        }
    }
    if (fontSize != fontSizeSave) {
        drawFont(fontSize);
    }
    set_cookie("ck_fontsize", fontSize, 30); 
}

function drawFont(fontSize) {
    if (!fontSize) {
        fontSize = getFontSize();
    }
	var loc = document.getElementById("location");
	var contents = document.getElementById("contentsWrap");
	if(loc)loc.style.fontSize = fontSize + "px";
	if(contents)contents.style.fontSize = fontSize + "px";
}


function LayerDown(){
 document.getElementById("buttons2").style.display="none";
 document.getElementById("buttons1").style.display="block";
 document.getElementById("openmenu").style.bottom="-98px";
}


function LayerUp(){
 document.getElementById("buttons1").style.display="none";
 document.getElementById("buttons2").style.display="block";
 document.getElementById("openmenu").style.bottom="61px";
}

/* 소스보기방지*/
document.oncontextmenu = new Function("return false"); // 우클릭 방지
//document.ondragstart   = new Function("return false"); // 드래그 방지
//document.onselectstart = new Function("return false"); // 셀렉트 방지

