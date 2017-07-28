<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>게시판</h1>
	
	<table border="1" width="500px">
		
		<tr>
			<th>글번호</th>
			<th>작성자</th>
			<th>글제목</th>
			<th>삭제</th>
		</tr>
		
		<c:forEach var="vo" items="${requestScope.list }">
			<tr class=table>
				<td width="50%"><img src="upload/${vo.savename}" width="80" height="100" align="left"><br><br><p align="center"><a href="" class=title>${vo.showtitle}</a><p align="center" class="psub">${vo.conname} &nbsp; | &nbsp; ${vo.age}세 이상</p></td>
				<td>${vo.startdate }<br>~<br>${vo.closedate }</td>
				<td>${vo.place }</td>
				<td><a href=""><img src="mainimage/btn_detail.png" width="70" height="18"><br><img src="mainimage/btn_reservation.png" width="70" height="18"></a></td>
			</tr>
		</c:forEach>	
	</table>
	
		<div class="search">
			<div id="AllSearch">
				<h2>검색</h2>
				<fieldset>
					<legend>검색폼</legend>
						<div class="box">
	<form action="/semi/board?cmd=search31" method="post">
							<input type="text" id="Nav_SearchWord" name="keyword" title="검색어입력" value="${param.keyword }">
							<a href="semi/board?cmd=search31"><img src="http://ticketimage.interpark.com/TicketImage/2015/20150429_main/img/header/btn_search.gif" alt="검색" /></a>
							<input type="submit" value="검색">
	</form>
						</div>
				</fieldset>
			</div>
		</div>
	
<br/>
<div>
	<c:choose>
		<c:when test="${startPageNum>4 }">
			<a href="/semi/board?cmd=list&pageNum=${startPageNum-1 }&search=${param.search}&keyword=${param.keyword}">[이전]</a>
		</c:when>
		<c:otherwise>
			[이전]
		</c:otherwise>
	</c:choose>
	<c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
		<c:choose>
			<c:when test="${i==pageNum }">
				<a href="/semi/board?cmd=list&pageNum=${i }&keyword=${param.keyword}">
					<span style="color:lime">[${i }]</span>
				</a>
			</c:when>
			<c:otherwise>
				<a href="/semi/board?cmd=list&pageNum=${i }&keyword=${param.keyword}">
					<span style="color:blue">
						[${i }]
					</span>
				</a>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	<c:choose>
		<c:when test="${endPageNum<pageCount }">
			<a href="/semi/board?cmd=list&pageNum=${endPageNum+1 }&keyword=${param.keyword}">[다음]</a>
		</c:when>
		<c:otherwise>
			[다음]
		</c:otherwise>
	</c:choose>
</div>
</body>
</html>