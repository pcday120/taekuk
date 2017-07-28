<%@page import="com.jhta.imagebal.vo.ImageBalVo"%>
<%@page import="com.jhta.image.vo.ImageVo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.jhta.image.dao.ImageDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
scrollbar-3dlight-color:#FFFFFF;
scrollbar-arrow-color:#C3C3C3;
scrollbar-track-color:#FFFFFF;
scrollbar-darkshadow-color:#FFFFFF;
scrollbar-face-color:#FFFFFF;
scrollbar-highlight-color:#C3C3C3;
scrollbar-shadow-color:#C3C3C3;
}
</style>
</head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<meta name="Title" content="인터파크 티켓"/>
<link rel="shortcut icon" href="mainimage/ent.png">

<link href="css/base.css" rel="stylesheet" id="TCssNo1">
<link href="css/common_info.css" rel="stylesheet" id="TCssNo2">
<link href="css/common.css" rel="stylesheet" type="text/css" >
<link rel="stylesheet" href="css/header.css" />
<link rel="stylesheet" href="css/main.css" />
<link rel="stylesheet" href="css/search.css"/>

</head>

<body bgcolor="#aaa" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<script type="text/javascript">
function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}




/*----------------	 상품정보 페이지 LINK---------------*/

function GoodsGo(strGroupCode, strGoodsCode){
	self.location.href = "http://ticket.interpark.com/Ticket/Goods/GoodsInfo.asp?MN=Y&GroupCode=" 
						+ strGroupCode + "&GoodsCode=" +	strGoodsCode;
}

/// Tiki 상품페이지 링크
function TikiGoodsGo(strValue){
	self.location.href = "http://ticket.interpark.com/Ticket/Goods/GoodsInfo.asp?MN=N&GroupCode=" 
						+ strValue ;
	}
	
	
/// 영화 페이지 링크
function MovieGoodsGo(strGroupCode){
	self.location.href = "http://movie.interpark.com/Movie/Main/IMGoodsInfo.asp?GroupCode=" 
						+ strGroupCode ;
	}	
	
	
/******* 이벤트 페이지 링크 ****************/	
function EventGo(i_Value, i_Flag){
	
	if(i_Flag == "Y"){						//사용자정보를 받는 이벤트
		self.location.href = "/Event/EventKind.asp?Eventseq=" +	i_Value;
		}
	else if(i_Flag == "N"){					//정보성 이벤트(프레임있는이벤트 페이지)
		self.location.href = "/Event/EventFraim.asp?Eventseq=" + i_Value;
		}	
	else{									//프레임없는 이벤트페이지							
		//self.location.href = "/Event/Templet/" + i_Value +".html";
		self.location.href = "/Event/EventNoFraim.asp?Eventseq=" + i_Value;
		}
	}	
	
	
///////////////////////////////////
//		공연장 페이지 LINK

function PlaceGo(i_Value){
	self.location.href = "http://ticket.interpark.com/TPPlace/Main/TPPlace_Detail.asp?PlaceCode=" +	i_Value;
}
//-->

function TopCheck(form)
{
	if(form.STxt.value ==""){
		alert("검색할 공연명을 입력하세요")
		form.STxt.focus();
		return false;
		}
	else{	
		return true;
		}

}

</script>






<script type="text/javascript">
	
	function addmenu(event){
		var menu=event.target;
		var div=document.getElementsByClassName("gnbSubBody");
		if(div.style.display=='none'){
			div.style.display='block';
		}
	}
	function fnChangeHttps(vUrl) {
		return vUrl.replace('http://ticketimage.interpark.com/', 'http://ticketimage.interpark.com/');
	}

	function fnPoster(goodscode){
		return "http://ticketimage.interpark.com/Play/image/large/"+goodscode.substring(0,2)+"/"+goodscode+"_p.gif";
	}

	function fnRzPoster(goodscode){
		if (goodscode.substring(0,1) == 'S') {
			return fnPoster(goodscode);
		}
		else {
			return "http://ticketimage.interpark.com/rz/image/play/goods/poster/"+goodscode.substring(0,2)+"/"+goodscode+"_p_s.jpg";
		}
	}

	function fnGetGoodsImage(goodscode) {
		if (goodscode.substring(0,1) == 'S') {
			return "http://ticketimage.interpark.com/Play/image/large/"+goodscode.substring(0,2)+"/"+goodscode+"_p.gif";
		}
		else {
			return "http://ticketimage.interpark.com/rz/image/play/goods/poster/"+goodscode.substring(0,2)+"/"+goodscode+"_p_s.jpg";
		}
	}

		
	function fnTarget(Target)
	{
		if(Target == "_blank")
		{
			return "target='_balnk'";
		}
		
		return "";
	}

	$.views.helpers({fnChangeHttps: fnChangeHttps}); 
	$.views.helpers({fnPoster: fnPoster}); 
	$.views.helpers({fnRzPoster: fnRzPoster}); 
	$.views.helpers({fnGetGoodsImage: fnGetGoodsImage}); 
	$.views.helpers({fnTarget: fnTarget}); 

</script>

<!--GNB메뉴추천공연-->
<script type="text/javascript" src="Menucc.xml"></script>		<!--콘서트-->



<div id="leftWing" ></div>
<!-- 2015.05.04 오른쪽 윙배너 -->

<div id="NewrightWing" class="beforeTChu" style="right:-111px"></div>
<!-- //2015.05.04 오른쪽 윙배너 -->

<link rel="stylesheet" href="http://ticketimage.interpark.com/TicketImage/2015/20150604_tchue/tchue.css" />
		<div class="tChueBg"></div>
		
		<div class="tChueWrap">
			<div class="tChueHeader">
				<div class="tChueHeaderLeft"><img src="http://ticketimage.interpark.com/TicketImage/2015/20150429_main/img/header/blank.png" alt="" /></div>
				<div class="tChueHeaderBody">
					<a href="javascript:;" onclick="tchueClose()"><img src="http://ticketimage.interpark.com/TicketImage/2015/20150429_main/img/header/blank.png" alt="닫기" /></a>
				</div>
				<div class="tChueHeaderRight"><img src="http://ticketimage.interpark.com/TicketImage/2015/20150429_main/img/header/blank.png" alt="" /></div>
			</div>
			<div class="tChueBody">
				<a href="javascript:;" class="tchueLeft" onclick="tchueMovePrev()"><img src="http://ticketimage.interpark.com/TicketImage/2015/20150429_main/img/header/blank.png" alt="이전" /></a>
				<div class="tChueResult">
					<div class="tChueResultBody">
						<div class="tChueResultRoot tChueProgressStatus">
						</div>
						<ul class="tChueResultTab">
							<!--<li class="firstLi selected"><a href="javascript:;" onclick="tChueResultTabClick(j$(this), '0')">전체</a></li>-->
							<li  class="firstLi selected"><a href="javascript:;" onclick="tChueResultTabClick(j$(this), '1')">주간 랭킹순</a></li>
							<li><a href="javascript:;" onclick="tChueResultTabClick(j$(this), '2')">할인 공연</a></li>
							<li><a href="javascript:;" onclick="tChueResultTabClick(j$(this), '3')">공연종료 임박순</a></li>
						</ul>
						<div class="tChueResultList" id="tChueResultList">
							
						</div>
						<a href="javascript:;" onclick="tChueRestart()"><img src="http://ticketimage.interpark.com/TicketImage/2015/20150604_tchue/img/retry.gif" alt="" /></a>
					</div>
					<div class="tChueResultBottom">
						<div class="tChueResultBottomLeft"></div>
						<div class="tChueResultBottomMid"></div>
						<div class="tChueResultBottomRight"></div>
					</div>
				</div>
				<a href="javascript:;" onclick="tchueMoveNext()" class="tchueRight"><img src="http://ticketimage.interpark.com/TicketImage/2015/20150429_main/img/header/blank.png" alt="다음" /></a>
			</div>
		</div>


<script type="text/javascript" src="/Include/Tchu/tchu_slide.js"></script>
<script type="text/javascript" src="/Include/TCHU/tchu.js"></script>

<div id="wrapGNB">
	<div class="gnbTicket">
		<div id=login><br>
			<form action="login.jsp">
			아이디 <input type="text" name="id" id="id" ><br>
			비밀번호 <input type="password" name="pwd" id="pwd"><br>
			<input type="submit" value="로그인"> <input type="button" value="아이디,비밀번호 찾기">
			</form>
		</div>
		<h1 class="logo2015" id="gnbInparkLogo">
			<a href="test3.html" class="ticket">티켓</a>
			
			<a href="test3.html" class="interpark" id="InterLogo">인터파크 보다 싼 - 엔터파크 티켓</a>
			
		</h1>
		<div class="search">
			<div id="AllSearch">
				<h2>검색</h2>
				<fieldset>
					<legend>검색폼</legend>
						<div class="box">
							<form action="/semi/board?cmd=search31" method="post">
							<input type="text" id="Nav_SearchWord" name="keyword" title="검색어입력">
							<a href="/semi/board?cmd=search31"><img src="http://ticketimage.interpark.com/TicketImage/2015/20150429_main/img/header/btn_search.gif" alt="검색" /></a>
							</form>
						</div>
				</fieldset>
			</div>
		</div>
</div>
	<div class="gnbWrap">
	<ul class="gnbBtns">
		<li><a href="javascript:;" class="btn_allMenu" onclick="allMenu()"><img src="mainimage/blank.png" alt="전체메뉴보기" /></a></li>
		<li><a href="" class="btn_concert"><img src="mainimage/blank.png" alt="콘서트" onmousemove="addmenu(event)" onmouseout="out(event)"></a></li>
		<li><a href="" class="btn_notice"><img src="mainimage/blank.png" alt="게시판1" /></a></li>
		<li><!-- new 아이콘이 있을때는 해당 li에 topingNew아이디 추가 아이콘이 없을때는 삭제 -->
		</li>
		<li><a href="" class="btn_ranking"><img src="http://ticketimage.interpark.com//TicketImage/2015/20150429_main/img/header/blank.png" alt="랭킹" /></a></li>
		<li><a href="" class="btn_location"><img src="http://ticketimage.interpark.com//TicketImage/2015/20150429_main/img/header/blank.png" alt="지역" /></a></li>
		<li><a href="" class="btn_event"><img src="http://ticketimage.interpark.com//TicketImage/2015/20150429_main/img/header/blank.png" alt="공연장" /></a></li>
	</ul>
	<div class="gnbSubWrap" id="allMenu"><!-- 전체메뉴 -->
				<div class="gnbSubBody">
					<ul class="test11">
						<li>
							<div class="maxDiv">
								<a href=""><b>콘서트</b></a>
								<a href="">발라드</a>
								<a href="">ROCK/메탈</a>
								<a href="">랩/힙합</a>
								<a href="">인디</a>
								<a href="">뉴에이지</a>
								<a href="">JAZZ/블루스</a>
								<a href="">내한공연</a>
								<a href="">포크/트로트</a>
								<a href="">개그/마술</a>
								<a href="">파티</a>
								<a href="">토크/강연</a>
							</div>
						</li>						
					</ul>
					<ul class="lastUl">
						<li>
							<div class="maxDiv">
								<a href=""><b>지역</b></a>
								<a href="">지역별 주요공연</a>
								<a href="">티켓오픈소식</a>
								<a href="">지역별 핫이슈</a>
							</div>
						</li>
					</ul>
				</div>
				<div class="allBottom">
					<div class="gnbSubBody">
						<ul>
							<li><a href="">지역별 예매</a></li>
							<li><a href="">날짜별 예매</a></li>
							<li><a href="">공연장</a></li>
							<li><a href="">티켓오픈공지</a></li>
						</ul>						
					</div>
				</div>
			</div>
			<div class="gnbSubWrap"><!-- 콘서트 -->
				<div class="gnbSubBody">
					<div class="depth2">
							<div class="depth2_concert depth2Title"><a href="http://ticket.interpark.com/ConcertIndex.asp?tid1=main_gnb&tid2=category&tid3=concert&tid4=concert"></a><img src="http://ticketimage.interpark.com//TicketImage/2015/20150429_main/img/header/blank.png" alt="콘서트" /></div>
						<ul class="depth2Menu" id="concertDepth2">
							<li>
								<a href="">발라드</a>
								<a href="">내한공연</a>
							</li>
							<li>
								<a href="">Rock/메탈</a>
								<a href="">디너쇼</a>
							</li>
							<li>
								<a href="">랩/힙합</a>
								<a href="">포크/트로트</a>
							</li>
							<li>
								<a href="">인디</a>
								<a href="">개그/마술</a>
							</li>
							<li>
								<a href="">뉴에이지</a>
								<a href="">파티</a>
							</li>
							<li>
								<a href="">JAZZ/블루스</a>
								<a href="">토크/강연</a>
							</li>
						</ul>
						<div class="depth2SubMenus">
							<p><a href="">티켓오픈 공지</a></p>
							<p><a href="">지역별/</a><a href="http://ticket.interpark.com/tiki/special/TPCalendar.asp?KindOfGoods=01003">날짜별 예매</a></p>
						</div>
					</div>
					<div class="gnbSuggest">
						<div id="target_gnbmenuconcert_title">콘서트 <br />추천</div>
						<ul><li id="target_gnbmenuconcert"></li></ul>
					</div>
					<div class="gnbBanner">
						<div class="borderTop"></div>
						<div id="target_gnbmenuconcert_big"></div>
					</div>
				</div> 					
			</div>
			<div class="gnbSubWrap type2"><!-- 랭킹 -->
				<div class="gnbSubBody">
					<div class="depth2">
					<div class="depth2_ranking depth2Title"><a href=""></a><img src="http://ticketimage.interpark.com/TicketImage/2015/20150429_main/img/header/blank.png" alt="랭킹"	/></div>
						<ul class="depth2Menu">
							<li>
								<a href="">콘서트</a>
							</li>
						</ul>
					</div>
					<div class="gnbSuggest">
						<div id="target_gnbmenuranking_title">랭킹<br />추천</div>
						<ul><li id= "target_gnbmenuranking"></li></ul>
					</div>
					<div class="gnbBanner">
						<div class="borderTop"></div>
						<div id="target_gnbmenuranking_big"></div>
					</div>
				</div> 				
			</div>
			<div class="gnbSubWrap type2"><!-- 지역 -->
				<div class="gnbSubBody">
					<div class="depth2">
						<div class="depth2_location depth2Title"><a href=""></a><img src="http://ticketimage.interpark.com//TicketImage/2015/20150429_main/img/header/blank.png" alt="지역" /></div>
						<ul class="depth2Menu" id="locationDepth2">
							<li class="redColor firstLi">지역별 주요공연</li>
							<li>
								<a href="">서울</a>
								<a href="">경기</a>
							</li>
							<li>
								<a href="">인천</a>
								<a href="">강원</a>
							</li>
							<li>
								<a href="">충북</a>
								<a href="">충남</a>
							</li>
							<li>
								<a href="">대전</a>
								<a href="">경북</a>
							</li>
							<li>
								<a href="">경남</a>
								<a href="">대구</a>
							</li>
							<li>
								<a href="">울산</a>
								<a href="">부산</a>
							</li>
							<li>
								<a href="">전북</a>
								<a href="">전남</a>
							</li>
							<li>
								<a href="">광주</a>
								<a href="">제주</a>
							</li>
						</ul>
					</div>
					<div class="gnbSuggest">
						<div id="target_gnbmenuregion_title">지역<br />추천</div>
						<ul><li id="target_gnbmenuregion"></li></ul>
					</div>
					<div class="gnbBanner">
						<div class="borderTop"></div>
						<div id="target_gnbmenuregion_big"></div>
					</div>
				</div>
			</div>
			<div class="gnbSubWrap type2"><!-- 공연장 -->
				<div class="gnbSubBody">
					<div class="depth2">
						<div class="depth2_cine depth2Title"><a href=""></a><img src="http://ticketimage.interpark.com//TicketImage/2015/20150429_main/img/header/blank.png" alt="공연장" /></div>
						<ul class="depth2Menu">
							<li>
								<a href="">세종문화회관</a>
							</li>
							<li>
								<a href="">예술의전당</a>
							</li>
							<li>
								<a href="">충무아트센터</a>
							</li>
							<li>
								<a href="">성남아트센터</a>
							</li>
							<li>
								<a href="">경기도문화의전당</a>
							</li>
							<li>
								<a href="">안산문화예술의전당</a>
							</li>
						</ul>
					</div>
					<div class="gnbSuggest">
						<div id="target_gnbmenutheater_title">공연장 <br />추천</div>
						<ul><li id="target_gnbmenutheater"></li></ul>
					</div>
					<div class="gnbBanner">
						<div class="borderTop"></div>
						<div id="target_gnbmenutheater_big"></div>
					</div>
				</div> 	
			</div>
	<div style="clear:both; height:0px; font-size:0px; line-height:0px;"></div>
</div>
</div>

<link rel="stylesheet" href="http://ticketimage.interpark.com/TicketImage/searchT_ver2/searchT_ver4.css">
<script type="text/javascript" src="lib/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="lib/jquery.tmpl.min.js" ></script>
<script type="text/javascript" src="lib/jquery-ui.min.js" ></script>

<script type="text/javascript" src="lib/util.js" ></script>
<script type="text/javascript" src="js/ticketsearch.js?ver=20170619"></script>


<script type="text/javascript">


	var nowday = "2017724";

	function ViewLayer(sid){
			$('#LeftMenuCal').toggle();
			$('#frCalendar').attr('src', "lib/Cal.asp?Ca="+sid)
 	}

	function ViewOpt(){
			$('#lay_opt').toggle();
 	}

	function ViewCast() {
			$('#ly_cast').toggle();
 	}

	function goTour(txtsearch) {
			document.location = "http://tour.interpark.com/search/search.aspx?q=" + escape(txtsearch);
	}

</script>

<div id="wrapBody_SearchT">
	<!-- S: 바로가기:웹접근용 -->
	<div class="blind">
		<li><a href="#SearchContents">검색결과 바로가기</a></li>
		<li><a href="#Select_Option">맞춤 티켓 찾기 바로가기</a></li>
	</div>
	<div class="wrapSc_Body">
		<!-- S: LeftArea : wrapSc_BodyL -->
		<div class="wrapSc_BodyL">
		<div class="Con_SM">
			<div class="sCategory">
				<dl>

					<dt><span class="tit">콘서트</span><span class="num">444</span></dt>
					<dd><a href=""><img src="http://ticketimage.interpark.com/TicketImage/main/100506_sub/tit_concert_sm1.gif" alt="발라드 본창이동"></a></dd>
					<dd><a href=""><img src="http://ticketimage.interpark.com/TicketImage/main/100506_sub/tit_concert_sm4.gif" alt="랩/힙합 본창이동"></a></dd>
					<dd><a href=""><img src="http://ticketimage.interpark.com/TicketImage/main/100506_sub/tit_concert_sm5.gif" alt="인디 본창이동"></a></dd>
					<dd class="Mgray"><a href="javascript:RegionViewLayer();"><img src="http://ticketimage.interpark.com/TicketImage/main/100506_sub/tit_sort_ssm4.gif" alt="지역별 예매"></a></dd>
					<dd><a href=""><img src="http://ticketimage.interpark.com/TicketImage/main/100506_sub/tit_sort_ssm5.gif" alt="날짜별 예매"></a></dd>
				</dl>
				<p class="last"></p>
				<p class="btn"><a href=""><img src="http://ticketimage.interpark.com/TicketImage/main/100506_sub/btn_all.gif" alt="콘서트 주간랭킹순 상품 페이지 본창이동"></a></p>
			</div>
			<!--지역별 예매-->  
			<div id="LeftMemuMap" style="position:absolute; display:none; z-index:20;margin:75px 0 0 -520px;">
				<iframe id="frRegion" title="지역별예매" src="/Lib/left/TPLeftMenuRegion.html" scrolling="no" frameborder="0" valign= "Top" marginwidth="0" width="175" height="245" marginheight="0"></iframe>
			</div>
			<!--날짜별 예매-->  
			<div id="LeftMenuCal" style="position:absolute; display:none; z-index:100;margin:152px 0 0 -520px;">
			<iframe id="frCalendar" title="날짜별예매" src="/Lib/left/TPLeftMenuCal.asp?Ca=Liv" scrolling="no" frameborder="0" valign= "Top" marginwidth="0" width="160" height="165" marginheight="0"></iframe>
			</div>
		</div>
			<br>
				<div id="Select_Option" class="Section_yours">
				<form>
				<fieldset>
				<legend>맞춤 티켓 검색</legend>
				<a href="javascript:ViewOpt();" class="btn_help"><span>맞춤티켓이란?</span></a>
				<div class="Option">
					<dl><dt>지역</dt><dd>
						<select name="sel_region" id="sel_region">
							<option selected="selected" value=''>전국</option>
							<option value='42001'>서울</option>
							<option value='42010'>경기</option>
							<option value='42011'>인천시</option>
							<option value='42020'>경남</option>
							<option value='42021'>부산시</option>
							<option value='42030'>경북</option>
							<option value='42031'>대구시</option>
							<option value='42040'>전남</option>
							<option value='42041'>광주시</option>
							<option value='42050'>전북</option>
							<option value='42060'>충남</option>
							<option value='42061'>대전시</option>
							<option value='42070'>충북</option>
							<option value='42080'>강원</option>
							<option value='42090'>제주</option>
							<option value='42091'>울산시</option>
							<option value='42093'>기타</option>
						</select>
					</dd></dl>
					<dl><dt>장르</dt><dd>
						<select name="sel_category" id="sel_category">
							<option selected="selected" value=''>전체</option>
							<option value="01" >뮤지컬</option>
							<option value="03"> 연극</option>
							<option value="02">콘서트</option>
							<option value="04">클래식/무용</option>
							<option value="05">스포츠</option>
							<option value="06">전시/행사</option>
							<option value="07">레저</option>
						</select>
					</dd></dl>
					<dl>
						<dt>관람기간</dt>
						<dd><input name="startdate" id="startdate" type="text" value="20170725" readonly="true" /><button class="btn_Tsearch_calendar" onclick="ViewLayer('startdate');" ><span>달력보기</span></button><input name="enddate" id="enddate" type="text" value="20170801" readonly="true" /><button class="btn_Tsearch_calendar" onclick="ViewLayer('enddate');"><span>달력보기</span></button></dd>
					</dl>
					<a href="javascript:Search.ExeOpt();" class="btn_search_Option"  data-egs=1  data-egs-obj = '{"section_id" : "btn_custom_search"}' ><span>조회하기</span></a>
				</div>
				</fieldset>
				</form>

			</div>
			<!-- //E: 맞춤티켓 : Section_yours -->


			<!-- //S: 랭킹  -->
			<div id="ranking_result"></div>
			<!-- //E: 랭킹  -->

		</div><!-- //E: LeftArea : wrapSc_BodyL : 좌측영역 끝남 -->

<div id=boardlist>
<div id=result><span class=h1>검색내용</span>에 대한 검색결과는
<span class=h2>(검색결과)</span> 건 입니다.
</div>
<br><br>
<div id=board><span class=dd>판매중&판매예정</span>(검색결과수)</div>
<br>
<table width="100%" height="30">
	<tr class=top>
		<td>상품기본정보</td>
		<td>일시</td>
		<td>장소</td>
		<td>예매</td>
	</tr>
			<c:forEach var="vo" items="${requestScope.list }">
			<tr class=table>
				<td width="50%"><img src="upload/${vo.savename}" width="80" height="100" align="left"><br><br><p align="center"><a href="/semi/board?cmd=detail&gnum=${vo.gnum}" class=title>${vo.showtitle}</a><p align="center" class="psub">${vo.conname} &nbsp; | &nbsp; ${vo.age}세 이상</p></td>
				<td>${vo.startdate }<br>~<br>${vo.closedate }</td>
				<td>${vo.place }</td>
				<td><a href=""><img src="mainimage/btn_detail.png" width="70" height="18"><br><img src="mainimage/btn_reservation.png" width="70" height="18"></a></td>
			</tr>
		</c:forEach>	
	</table>
	
</table>
<div align="center">
<c:choose>
	<c:when test="${startPage>10 }">
		<a href="/board/list.do?pageNum=${startPage-1 }"><div id='imgleftO' style='background-image:url(mainimage/btn_paging.gif)'></div></a>
	</c:when>
	<c:otherwise>
		<div id='imgleftX' style='background-image:url(mainimage/btn_paging.gif)'></div>
	</c:otherwise>
</c:choose>
<c:forEach var="i" begin="${startPage }" end="${endPage }">
	<c:choose>
		<c:when test="${i==pageNum }">
			<a href="/board/list.do?pageNum=${i }" class=numsize><span style="color:white;background-color:#5D5D5D ">${i }</span></a>
		</c:when>
		<c:otherwise>
			<a href="/board/list.do?pageNum=${i }" class=numsize><span style="color:#5D5D5D">${i }</span></a>
		</c:otherwise>
	</c:choose>
</c:forEach>
<!-- 다음 -->
<c:choose>
	<c:when test="${endPage<pageCount }">
		<a href="/board/list.do?pageNum=${endPage+1 }"><div id='imgrightX' style='background-image:url(mainimage/btn_paging.gif)'></div></a>
	</c:when>
	<c:otherwise>
		<div id='imgrightX' style='background-image:url(mainimage/btn_paging.gif)'></div>
	</c:otherwise>
</c:choose>
<!-- 맞춤 티켓 달력 -->
<div id="LeftMenuCal" style="position:absolute; top:700;left:200; display:none; z-index:700;margin:-32px 0 0 130px;">
	<iframe id="frCalendar" src="" scrolling="no" frameborder="0" valign= "Top" marginwidth="0" width="160" height="165" marginheight="0"></iframe>
</div>
</div>
</div>
</body>
</html>