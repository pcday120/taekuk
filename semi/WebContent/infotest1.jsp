<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="http://ticketimage.interpark.com/TicketImage/uidev/desktop/styles/pages/category/classicDance/detail.css?v=20170613" rel="stylesheet">
</head>
<body>
<div class="dt_Ttop">
			<div class="dt_Ttop_tbg">
				<!-- 공연명 -->
				<div class="dt_Name">
					<h1><span id="IDGoodsName">${vo.showtitle }</span>
					
					
					</h1>
					<dl class="dt_Name_info">
						<dd class="etc">콘서트  <span>|</span>  ${vo.age }</dd> 
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
							
							<a href="javascript:fnShowTab(3);"><span class="icon_arrow"></span>기대평</a>
							
						</dt>
						<dd id="ddExpect">
							<div><span id="spBbsVote" class="num">0</span>명 참여</div>
						</dd>
					</dl>
				
					<!-- 티켓캐스트 -->
					<dl class="tkCast">
						<div class="Pos_icon_info"><a href="javascript:TKCastLayerInfo(1);" class="icon_info"><span>티켓캐스트란?</span></a></div>
						<dt class="tit"><a href="javascript:fnAttentionPop();"><span class="icon_arrow"></span>티켓캐스트</a></dt>
						<dd id="ddTkCast">
							<div><span id="spTicketCast" class="num">0</span>명 등록</div>							
						</dd>
					</dl>
				
				</div>
					<!-- 레이어설명추가 -->
					<div id="divTKCastLayer" class="DT_small_LayerWrap" style="display:none;position:absolute; top:70px; right:0px; z-index:10;">
						<div class="Close"><a href="javascript:TKCastLayerInfo(2);"><span>레이어닫기</span></a></div>
						<div class="Layer_Topbg"></div>						
						<div class="Layer_Midbg">
							<div class="Text"><strong>티켓캐스트란?</strong><br>
							<span style="margin-top:5px; display:inline-block;">관심공연, 관심인물을 등록하시면 모바일 알림과 이메일로 티켓오픈일을 알려드리는 맞춤형 티켓정보입니다.</span></div>
						</div>
						<div class="Layer_Btmbg"></div>
					</div>
				<!-- //소셜 -->			
			
			</div><!-- //dt_Top_tbg -->
		</div><!-- //dt_Top -->
		
		<div class="dt_Tmid">
			<!-- 탭+콘텐츠Wrap :content_Wrap -->
			<div class="content_Wrap">
				<!-- 좌탭 -->
				<div class="DT_Litab">
					<h2 id="hTabA" class="tab1"><a id="aTabA" class="tabOn" href="javascript:fnBasicTab('A');"><span>기본정보 보기</span></a></h2>
					<h2 id="hTabB" class="tab2"><a id="aTabB" class="" href="javascript:fnBasicTab('B');"><span>가격할인 보기</span></a></h2>
					<h2 id="hTabC" class="tab3"><a id="aTabC" class="" href="javascript:fnBasicTab('C');"><span>인물정보 보기</span></a></h2>
					<h2 id="hTabD" class="tab4"><a id="aTabD" class="" href="javascript:fnBasicTab('D');"><span>공연정보 보기</span></a></h2>
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
									<div class="poster"><img src="http://ticketimage.interpark.com/Play/image/large/17/17009412_p.gif" alt="포스터이미지" onError="javascript:this.src='http://ticketimage.interpark.com/Play/image/large/NoImage.gif'" ></div>
						
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
		</div>
				</div>
			</div>
			</div>
			</div>
</body>
</html>