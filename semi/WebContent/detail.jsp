<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<link href="http://ticketimage.interpark.com/TicketImage/uidev/desktop/styles/pages/category/classicDance/detail.css?v=20170613" rel="stylesheet">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ko">
<head>
<title>인터파크 보다 싼 - 엔터파크 티켓</title>

<style>

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
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<meta name="Title" content="인터파크 티켓"/>
<link rel="shortcut icon" href="mainimage/ent.png">

<link href="css/base.css" rel="stylesheet" id="TCssNo1">
<link href="css/common_info.css" rel="stylesheet" id="TCssNo2">
<link href="css/common.css" rel="stylesheet" type="text/css" >
<link rel="stylesheet" href="css/header.css" />
<link rel="stylesheet" href="css/main.css" />
<link rel="stylesheet" href="css/khs2.css"/>
</head>

<body bgcolor="#aaa" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onload="btnset()">

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
	function btnset(){
		var btn=document.getElementById("btn");
		btn.style.right="150px";
		btn.style.top="250px";
	}
	function btnMove(){
		var layer=document.getElementById("layer_fixed");
		var btn=document.getElementById("btn");
		var button=event.target;
	
		//닫기
		if(parseInt(btn.style.right)==150){
			console.log(btn.style.rigth+"11");
			layer.style.right=-150+"px";
			btn.style.right=0+"px";
			button.src="mainimage/rightWing_open.gif";	
		}
		//열기
		else if(btn.style.right==0+"px"){
			console.log(btn.style.rigth+"22");
			layer.style.right=0+"px";
			btn.style.right=150+"px";
			button.src="mainimage/rightWing_close.gif";
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
	function windowOpen(){
		window.open("http://www.playdb.co.kr/artistdb/list.asp?code=013001","_blank","width=1000,height=800");
		
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
							<input type="text" id="Nav_SearchWord" name="keyword" title="검색어입력" value="${param.keyword }">
							<a href="/semi/board?cmd=search31"><img src="http://ticketimage.interpark.com/TicketImage/2015/20150429_main/img/header/btn_search.gif" alt="검색" /></a>
							</form>
						</div>
				</fieldset>
			</div>
		</div>
	</div>
</div>
	<div class="gnbWrap">
	<ul class="gnbBtns">
		<li><a href="javascript:;" class="btn_allMenu" onclick="allMenu()"><img src="http://ticketimage.interpark.com//TicketImage/2015/20150429_main/img/header/blank.png" alt="전체메뉴보기" /></a></li>
		<li><a href="" class="btn_notice"><img src="mainimage/blank.png" alt="공지" /></a></li>
		<li><a href="" class="btn_concert"><img src="mainimage/blank.png" alt="콘서트" /></a></li>
		<li><a href="" class="btn_show"><img src="mainimage/blank.png"></a>
		<li><!-- new 아이콘이 있을때는 해당 li에 topingNew아이디 추가 아이콘이 없을때는 삭제 -->
		</li>
		<li><a href="" class="btn_ranking"><img src="mainimage/blank.png" alt="랭킹" /></a></li>
		<li><a href="" class="btn_location"><img src="mainimage/blank.png" alt="지역" /></a></li>
		<li><a href="" class="btn_event"><img src="mainimage/blank.png" alt="공연장" /></a></li>
	</ul>
	<div class="gnbSubWrap" id="allMenu"><!-- 전체메뉴 -->
				<div class="gnbSubBody">
					<ul>
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
		</
	<div style="clear:both; height:0px; font-size:0px; line-height:0px;"></div>
</div>
<div class="wrap_DT_body">
	<!-- 본문콘텐츠 상단 -->
	<div class="dt_Top_Wrap ">

		<!-- //2015.05.14 본인인증 팝업 -->
		<div class="dt_Ttop">
			<div class="dt_Ttop_tbg">
				<!-- 공연명 -->
				<div class="dt_Name">
					<h1><span id="IDGoodsName">${vo.showtitle }</span>
					
					
					</h1>
					<dl class="dt_Name_info">
						<dd class="etc">콘서트  <span>|</span>  ${vo.age }세 이상</dd> 
					</dl>
				</div>
				<!-- //공연명 -->
			
				<!-- 소셜 -->
				<div class="dt_tSocial">
				
                    <!-- 랭킹 -->
					<dl class="Ranking">
						<dt class="tit"><span class="icon_arrow"></span>랭킹</dt>
						<dd>일간: <span class="num">3</span>위<span class="bar">|</span>주간: <span class="num">12</span>위</dd>
					</dl>
				
					<!-- 기대평 -->
					<dl class="Expect">
						<dt class="tit">
							
							<a href="javascript:fnShowTab(3);"><span class="icon_arrow"></span>평점 및 후기</a>
							
						</dt>
						<dd id="ddExpect">
							<div><span id="spBbsVote" class="num">0</span>명 참여</div>
						</dd>
					</dl>
				
				
				</div>
			
			</div><!-- //dt_Top_tbg -->
		</div><!-- //dt_Top -->
		
		<div class="dt_Tmid">
			<!-- 탭+콘텐츠Wrap :content_Wrap -->
			<div class="content_Wrap">
				<!-- 좌탭 -->
				<div class="DT_Litab">
					<h2 id="hTabA" class="tab1"><a id="aTabA" class="tabOn" href="#"><span>기본정보 보기</span></a></h2>
					<h2 id="hTabC" class="tab3"><a id="aTabC" class="" href="#" onclick="windowOpen();"><span>인물정보 보기</span></a></h2>
					<h2 id="hTabD" class="tab4"><a id="aTabD" class="" href="#aTab3"><span>공연정보 보기</span></a></h2>
					<h2 id="hTabG" class="tab5 OFF"><a id="aTabG" class="" href="javascript:fnBasicTab('G');"><span>콘텐츠 보기</span></a></h2>
				</div>
				<!-- //좌탭 -->
				<!-- 기본정보 Group :DT_infoWrap -->
				<div class="DT_infoWrap">
					<!-- wrap_BG조정 -->
					<div class="crossbr">
						<!-- 기본정보block: DT_info -->
				
						<div class="DT_info DT_infoH">
				
							<!-- 아래 : 데이터 교체 될 블록 (TabA~TAbD까지) -->
							<!-- TabA -->
							<div id="TabA" class="TabA" style="display:;">
								<div class="TabA_Poster">
									<div class="poster"><img src="upload/${vo.savename }" ></div>
						
									<div id="divMediaInfo" name="divMediaInfo" class="thumb" style="display:none;"></div>
						
								</div>
					
								<div class="TabA_Info">
									
									
									<!-- 20170327 add (s) -->
									<ul class="info_Lst">
									
										<li class="item"><dl><dt>장소</dt><dd>${vo.place }</dd></dl></li>
										<li class="item"><dl><dt>기간</dt><dd><span>${vo.startdate }</span>
											
												<span><a href="javascript:fnShowTab(0);" class="btn_moretime">관람시간 보기<i class="i_arrow"></i></a></span>									
											
											</dd></dl>
										</li>
									
										<li class="item item4"><dl><dt>출연</dt><dd>
											<a href='http://www.playdb.co.kr/artistdb/detail.asp?ManNo=38343' target='_blank'>${vo.singer }</a><span class="dllips">..</span>
											<span><a href="javascript:;" class="btn_moretime" onclick="javascript:fnBasicTab('C');">더보기<i class="i_arrow"></i></a></span>
											</dd></dl>											
										</li>
									
									</ul>
									<!-- 20170327 add (e) -->
								
									<!-- 가격 UI개편-->
									<div class="info_Div">
										<ul>

											
											<li class="costView">
												<div class="title">가격정보</div>
												<div><a href="javascript:;" onclick="fnBasicTab('B');" ><img src="http://ticketimage.interpark.com/TicketImage/2015/20151209_detail/img/costView.gif" alt="가격상세보기" /></a></div>
											</li>
											
											<li id="trBasicPrice">
												<div class="title">기본가</div>
												<div>
													<table cellpadding="0" cellspacing="0" >
														<colgroup>
															<col />
															<col style="width:20px;" />
															<col />
														</colgroup>
														<tbody id="divSalesPrice">
															<!-- 등록된 기본가 가져오기 오류-->
															<tr>
																<td colspan="3" id="liBasicPrice" >
																	<ul>
																	<ul> <li>스탠딩&nbsp;<strong>${vo.price }</strong>원</li></ul>
																	</ul>
																</td>
															</tr>
														</tbody>
													</table>
												</div>
											</li>
											<!-- 20170327 modify: benefits_layers추가 (s) -->

										</ul>
									</div>
								
									<div class="info_Div info_solid">
										<ul>
											
											<li>
												<div class="title">정보1</div>
												<div>
													<div><b class="type_bb">테스트</b> <img src="http://ticketimage.interpark.com/TicketImage/2015/20151209_detail/img/arrowBg.gif" alt="" /></div>
												</div>
											</li>
											
										</ul>
									</div>
										
											<div class="info_Div"></div>
											<div class="anotherTicket">
										
												<b>관련공연</b>
										
											</div>
											<ul class="etcPrdLinks" id="divRelation"></ul>
									
								</div><!-- //TabA_Info -->
							</div>
							<!-- //TabA -->
							<!-- TabB: 가격할인 -->
							<div id="TabB" style="display:none;">
								<!-- <div id="divLoadB" style="display: block; position: absolute; top: 50%; left: 30%;z-index: 1102; "><img src="http://ticketimage.interpark.com/Movie/theater_renew/loading.gif" border="0" /></div> -->
								<iframe title="가격할인" id="ifrTabB" name="tab_info" src="" scrolling="no" class="tab" frameborder="0" marginwidth="0" marginheight="0" allowTransparency="true">
								</iframe>
							</div>
							<!-- //TabB: 가격할인 -->

							<!-- TabC: 인물정보 -->
							<div id="TabC" style="display:none;">
								<!-- <div id="divLoadC" style="display: block; position: absolute; top: 50%; left: 30%;z-index: 1102; "><img src="http://ticketimage.interpark.com/Movie/theater_renew/loading.gif" border="0" /></div> -->
								<iframe title="인물정보" id="ifrTabC" name="tab_info" src="" scrolling="no" class="tab" frameborder="0" marginwidth="0" marginheight="0" allowTransparency="true">
								</iframe>
							</div>
							<!-- //TabC: 인물정보 -->
							<!-- TabD: 공연정보 -->
							<div id="TabD" style="display:none;">
								<!-- <div id="divLoadD" style="display: block; position: absolute; top: 50%; left: 30%;z-index: 1102; "><img src="http://ticketimage.interpark.com/Movie/theater_renew/loading.gif" border="0" /></div> -->
								<iframe title="공연정보" id="ifrTabD" name="tab_info" src="" scrolling="no" class="tab" frameborder="0" marginwidth="0" marginheight="0" allowTransparency="true">
								</iframe>
							</div>
							<!-- //TabD: 공연정보 -->
							<!-- TabE: 이미지 -->
							<div id="TabE" style="display:none;">
								<iframe title="이미지보기" id="ifrTabE" name="tab_info" src="" scrolling="no" class="tab" frameborder="0" marginwidth="0" marginheight="0" allowTransparency="true">
								</iframe>
							</div>
							<!-- //TabE: 이미지 -->
							<!-- TabE: 동영상 -->
							<div id="TabF" style="display:none;">
								<iframe title="동영상보기" id="ifrTabF" name="tab_info" src="" scrolling="no" class="tab" frameborder="0" marginwidth="0" marginheight="0" allowTransparency="true">
								</iframe>
							</div>
							<!-- //TabE: 동영상 -->
							<!-- TabG: 컨텐츠 -->
							<div id="TabG" style="display:none;">
								<iframe title="컨텐츠" id="ifrTabG" name="tab_info" src="" scrolling="no" class="tab" frameborder="0" marginwidth="0" marginheight="0" allowTransparency="true">
								</iframe>
							</div>
							<!-- //TabG: 컨텐츠 -->
							<!-- TabH: 출연진 -->
							<div id="TabH" style="display:none;">
								<iframe title="출연진" id="ifrTabH" name="tab_info" src="" scrolling="no" class="tab" frameborder="0" marginwidth="0" marginheight="0" allowTransparency="true"></iframe>
							</div>
							<!-- //TabH: 출연진 -->

							
						</div><!-- //기본정보block: DT_info -->
						
						<!-- 우측 예매일자 블록 -->
						<div class="DT_Rarea">							
							
<!-- 우측 예매일자 블록:공연일로보기 -->

		<div class="Date_tit">
			<h3>예매가능 공연일자 </h3>
			<p class="btn" style="display:;">
				<a href="javascript:fnPlayDateTab(2);" id="aPlayDateTab" class="btn_view_calendar_On">달력</a>
				<a href="javascript:fnPlayDateTab(1);" id="aPlayDateTab" class="btn_view_date">공연일</a>		
			</p>
			<p class="time"><span class="ff_tahoma fs_s11">${vo.startdate } ~ ${vo.closedate }</span><span class='btn_time_noti'><a href='javascript:;' onClick='BEBTimeCodeView(event.clientX,event.clientY,"3");'>관람전일 17시</a></span></p>
		</div>
		<div class="Date_Select">
			<!-- 공연일로 보기 예매가능 일자 로딩중... -->
			<div id="divPlayDateList" class="Date_list" style="display:none; overflow:auto;">
				<ul>
					<li onmouseover="fnGetPlayDate('68001','0','0');"><a id="aPlayDateDefalut" href='#'>날짜를 선택해주세요.</a></li>
				</ul>
			</div>
			<!-- 달력으로 보기 -->
			<div id="divCarendar" name="divCarendar" style="display:">
				<iframe title="달력" id="ifrCalendar" name="ifrCalendar" src="" scrolling="no" width="100%" height="100%" frameborder="0" marginwidth="0" marginheight="0"> </iframe>
			</div>
			<input id="hidPlayDate" name="hidPlayDate" type="hidden" value="" />
		</div>
		<div class="Time">
			<div class="select open" style="width:210px; margin:5px 0;"> <span class="ctrl"><span class="arrow"></span></span>
				<div class="myValue">회차를 선택해주세요.</div>
				<ul id="ulPlaySeq" class="iList">
				</ul>
			</div>
			<input id="hidPlaySeq" name="hidPlaySeq" type="hidden" value="" />
		</div>
		<div class="Seat">
			<h3><span>예매가능 좌석</span>
	
			</h3>
			<div class="Seat_list">
				<span id="spSeatList" class="noSelect">관람일과 회차를 선택해주세요.</span>
				<ul id="ulSeatList">
				</ul>
			</div>
		</div>
		<div class="tk_dt_btn_TArea">
	
			<a href="#" onclick="javascript:NoMemPrivacyCertify('','17009412');" class="btn_rev"><span>예매하기</span></a>
			
		</div>
		</div>
		</div>
		</div>
		</div>
		</div>
		</div>
		</div>
		<div class="dt_Mid_Wrap">
		<div class="dt_Mid_L">

			<div class="Mid_Tab">

				<ul>
					<li id="ctrlTab" name="ctrlTab" class="On"><a href="javascript:fnShowTab(0);">상세정보</a></li>
					<li id="ctrlTab" name="ctrlTab" class="" style='display:none;'><a href="javascript:fnShowTab(1);">캘린더</a><div class="iconN"><span>New</span></div></li>
					<li id="ctrlTab" name="ctrlTab" class="" ><a href="javascript:fnShowTab(2);">관람후기<span id="spReviewCnt"></span></a></li>
					<li id="ctrlTab" name="ctrlTab" class="" ><a href="javascript:fnShowTab(3);">기대평<span id="spExpertCnt"></span></a></li>
					<li id="ctrlTab" name="ctrlTab" class="" ><a href="javascript:fnShowTab(4);">Q&A<span id="spQnACnt"></span></a></li>
					
					<li id="ctrlTab" name="ctrlTab" class="" ><a href="javascript:fnShowTab(5);">공연장정보</a></li>
					
					<li id="ctrlTab" name="ctrlTab" class=""><a href="javascript:fnShowTab(6);">예매유의사항</a></li>
				</ul>
			</div>		
		
			<div id="divTabSub" class="Mid_TabS">
				<ul><li><a href="#aTab1">알립니다</a><span class="sai">|</span><a href="#aTab2">가격/할인정보</a><span class="sai">|</span><a href="#aTab3">작품설명</a><!-- <span class="sai">|</span><a href="#">캐스팅</a><span class="sai">|</span><a href="#">관련공연</a> --></li></ul>
			</div>
		
<!-- #Tab 상세정보 //-->
			<div id="divTabArea" class="DT_dataWrap">
		
				<div class="Data">
			
					<h4>공연시간 정보</h4>
			
					<div class="Data_infoarea">	
						<div id="tbPlayWeekDay"></div>
						<p class="m_T5">${vo.startdate }</p>
					</div>
				</div>
		
		<a name="aTab1"></a>
		
				<div class="Data">
					<h4>알립니다</h4>
				
					<div class="Data_infoarea">
					- 현장수령 티켓배부는 공연 1시간 30분 전 부터 배부합니다.<br>
					- 입장은 공연 30분 전입니다. (현장 사정상 변경 될 수 있습니다.)<br>
					- 공연시작 후 입장은 제한될 수 있으니 10분 전에는 입장 완료 부탁드립니다.<br>
					- 공연 시작 후 입장은 현장 스텝의 지시에 따라 주시기 바랍니다.<br>
					- 공연장 내 식음료 반입이 금지되어 있습니다.</div>
				
				</div>
				
		<a name="aTab3"></a>
				<div id="divDetailInfoArea" class="Data" onload="getImg()">
					<h4>작품설명</h4>
					<div id="divDetailInfo" class="Data_infoarea"></div>
					<img src="upload/${vo1.savename }">
				</div>
		
				<div class="Data">
					<h4>기획사정보</h4>
					<div class="Data_infoarea">
						주최: 엔터파크<br>주관: 엔터파크
					</div>
				</div>
		
				<!-- S: 121106 상품정보고시 -->

				<div class="Data" style="display:;">
					<h4>상품관련정보</h4>
					<div class="Data_infoarea">
						<table width="100%" border="0" cellspacing="0" cellpadding="0" class="table_goods_info">
							<caption>상품관련정보 안내입니다.</caption>
							<colgroup><col width="16%" /><col width="38%" /><col width="13%" /><col width="33%" /></colgroup>
							<tr>
								<th class="border_none">주최/기획</th>
								<td>엔터파크</td>
								<th>고객문의</th>
								<td>02-1234-5678</td>
							</tr>
							<tr>
								<th class="border_none">공연시간</th>
								<td>상품상세정보 확인</td>
								<th>관람등급</th>
								<td>${vo.age }세 이상</td>
							</tr>
							<tr>
								<th class="border_none">주연</th>
								<td>${vo.singer }</td>
								<th>공연장소</th>
								<td>${vo.place }</td>
							</tr>
							<tr>
								<th class="border_none">예매수수료</th>
								<td>장당 0원</td>
								<th>배송료</th>
								<td>배송 0원</td>
							</tr>
							<tr>
								<th class="border_none">유효기간/이용조건</th>
								<td colspan="3">${vo.closedate }&nbsp;
						예매한 공연 날짜, 회차에 한해 이용 가능
								</td>
							</tr>
							<tr>
								<th class="border_none">예매취소조건</th>
								<td colspan="3">

									<ul class="list_option">
				
										<li >취소 방법에따라 진행해주세요<br /></li>	
			
									</ul>

			 <!--20170123 psj-->
									<table width="100%" border="0" cellspacing="0" cellpadding="0" class="inner_table">
										<colgroup>
											<col width="50%" />
											<col width="" />
										</colgroup>
										<caption>취소일에 따른 취소수수료안내</caption>
										<tr>
											<th class="left">취소일</th>
											<th class="right">취소수수료</th>
										</tr>
											<tr>
				
												<td class="left">예매 후 7일 이내</td>
												<td class="right">없음</td>
					
											</tr>
			
							<tr>
								<td class="left">관람일 9일전~7일전까지</td>
								<td class="right">없음</td>
							</tr>
		
							<tr>
								<td class="left">관람일 6일전~3일전까지</td>
								<td class="right">없음</td>
							</tr>
		
							<tr>
								<td class="left">관람일 2일전~1일전까지</td>
								<td class="right">없음</td>
							</tr>
		
									</table>
	
								</td>
							</tr>
							<tr>
								<th class="border_none">취소환불방법</th>
								<td colspan="3">
									<ul class="list_option">
										<li>My티켓 > 예매/취소내역에서 직접 취소 또는 고객센터 (1544-1555)를 통해서 예매를 취소할 수 있습니다.</li>
										<li>티켓이 배송된 이후에는 인터넷 취소가 안되며, 취소마감 시간 이전에 티켓이 인터파크 티켓 고객센터로 반송되어야 취소 가능합니다. 취소수수료는 도착일자 기준으로 부과되며, 배송료는 환불되지 않습니다.</li>
									</ul>

								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			</div>
			</div>
<div id="btn">
	<img src="mainimage/rightWing_close.gif" name="button" onclick="btnMove()">
</div>
<div id="layer_fixed">
 	<div id="wing">
 		<div id="wingheader">
	 		<img src="mainimage/wingtopbg.png" style="height: 150px;">
	 		<div id="user">
	 			<c:choose>
					<c:when test="${empty sessionScope.id}">
						<a href="로그인페이지위치">반갑습니다<br>로그인해주세요</a>
					</c:when>
					<c:otherwise>
						${sessionScope.id}님<br>반감습니다.
					</c:otherwise>
				</c:choose>
	 		</div>
	 		<div id="rservation">
	 		<c:choose>
					<c:when test="${empty sessionScope.id}">
						<img src="mainimage/login.png">
					</c:when>
					<c:otherwise>
						<img src="mainimage/reservation.png">
					</c:otherwise>
				</c:choose>
	 		</div>
 		</div>
 		<h2>최근 본 상품</h2>
 		<hr>
 		<div id="recent" onload="cook()">
 					<%
 	String gnum=request.getParameter("gnum");
	String savename=request.getParameter("savename");
	
	Cookie cook1=new Cookie("gnum",gnum);
	response.addCookie(cook1);
	Cookie cook2=new Cookie("savename",savename);
	response.addCookie(cook2);
	
	Cookie[] ck=request.getCookies();
	if(ck==null){
		out.println("<h3>최근 본 상품이"+"<br>"+"존재하지 않음</h3>");
	} else {
		for(Cookie cook:ck){
			//쿠키이름 얻어오기
			String cookieName=cook.getName();
			String cookieValue=cook.getValue();
			%>
			<a href='http://localhost:8081/semi/board?cmd=detail&gnum=${vo.gnum}'><img src='upload/${vo.savename}'></a><br>
			<%
		}
	}
%>
</body>
</html>