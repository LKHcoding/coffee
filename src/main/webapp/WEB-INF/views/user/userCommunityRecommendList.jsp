<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>

<style>
	.cafeReviewSearch {
		padding: 10px 0;
	}

	.cafeReviewSearch .selectLeft {
		float: left;
	}
	
	.cafeReviewSearch .selectRight {
		float: right;
	}
	
	/* 추천카페 : 타이틀 */
	.RC_Area .cafeRCnt {
		font-weight: 400;
		font-size: 16px;
	}	
	.RC_Area .RC_titleWrap {
		padding: 10px 0;
	}
	.RC_Area .RC_title{
		float: left;
	}
	.RC_Area .RC_topBtns{
		float: right;
	}
	.RC_topBtns{
		font-size: 14px;
	}
	.RC_topBtns .RC_Best{
		float: left;
		margin-right: 10px;
	}
	.RC_topBtns .RC_Best:hover{
		border-color: #ED7D31;	
	}
	.RC_topBtns #RC_Register{
		height: 34px;
		float: right;
		border-radius: 10px;
		outline: none;
	}
	.RC_topBtns #RC_Register:hover{
		background-color: #F46B45;	
	}
	
	/* 추천카페 : 리스트 */
	.recommendBest .recomWrap ul{
		overflow: hidden;
	}
	
	.recommendBest .recomWrap li {
		float: left;
		width: 162px;
		height: 220px;
		margin: 10px;
		border: 1px solid #545454;
	}
	.recommendBest .recomWrap li div.RC_listImg{
		width: 100%;
		height: 140px;
		background-color: gray;
	}
	.recommendBest .recomWrap li div.RC_listTitle{
		width: 90%;
		height: 80px;
		padding: 8px;
	}
	.recommendBest .recomWrap li div.RC_listTitle div.zoneBtn,div.themeKeySmall{
		font-size: 13px;
	}
	.recommendBest .recomWrap li div.RC_listTitle h3.RC_titleName{
		padding-top: 7px;
	}				
</style>
	
<div class="content subPageContent">
	<!-- 서브페이지 콘텐츠 -->
	<div class="contentArea">
		<!-- 서브페이지 공통적인 타이틀 -->
		<h2 class="subPageTitle">
			<span class="title">MuKKa人 추천 카페</span>
			<span class="subTit grayB"> | 세 상 에! 이런 카페가 있는지 몰랐지?</span>
		</h2>
			
		<!-- 게시판 베스트 -->
		<div class="bestBoardBox">
			<div class="boardTitle bottomLine2">
				<p>베스트</p>
				<p>월간</p>
			</div>
			<table class="post1-5">
				<tr>
					<td class="no"><p class="bgRed">1</p></td>
					<td>
						<a href="#" class="title">test</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
				<tr>
					<td class="no"><p class="bgRed">2</p></td>
					<td>
						<a href="#" class="title">test</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
				<tr>
					<td class="no"><p class="bgRed">3</p></td>
					<td>
						<a href="#" class="title">test</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
				<tr>
					<td class="no"><p class="bgPink">4</p></td>
					<td>
						<a href="#" class="title">testaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
				<tr>
					<td class="no"><p class="bgPink">5</p></td>
					<td>
						<a href="#" class="title">test</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
			</table>
			<table class="post6-10">
				<tr>
					<td class="no"><p class="bgPink">6</p></td>
					<td>
						<a href="#" class="title">test</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
				<tr>
					<td class="no"><p class="bgPink">7</p></td>
					<td>
						<a href="#" class="title">test</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
				<tr>
					<td class="no"><p class="bgPink">8</p></td>
					<td>
						<a href="#" class="title">test</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
				<tr>
					<td class="no"><p class="bgPink">9</p></td>
					<td>
						<a href="#" class="title">testaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
				<tr>
					<td class="no"><p class="bgPink">10</p></td>
					<td>
						<a href="#" class="title">test</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
			</table>
		</div>
		<!-- 게시판 베스트 end -->
		
		<!-- 카테고리 & 검색창 -->
		<div class="cafeReviewSearch bottomLine2 clearfix">
			<div class="selectLeft">
				<select name="" id="">
					<option value="all">전체</option>
				</select>
				<select name="" id="">
					<option value="all">전체</option>
				</select>
			</div>
			<div class="selectRight">
				<select name="" id="">
					<option value="">제목</option>
				</select>
				<input type="text" name="" placeholder="검색어를 입력하세요." />
				<input type="submit" value="검색" class="navyBtn" style="cursor: pointer"/>
			</div>
		</div>
		<!-- 카테고리 & 검색창 end -->
		

		<!-- 추천카페 : 타이틀 -->
		<div class="RC_Area">
			<div class="RC_titleWrap clearfix">
				<h3 class="RC_title">오늘의 카페 추천 | <span class="red cafeRCnt">N개</span></h3>
				<div class="RC_topBtns">
					<div class="RC_Best grayLineBtn"><a href="#"><span class="red bold">베스트 글</span> 전체 보기</a></div>
					<button class="navyBtn" id="RC_Register" style="cursor: pointer">추천 카페 쓰기</button>
				</div>
			</div>
		
		<!-- 추천카페 : 리스트  -->
			<div class="recommendBest mb30">
				<div class="recomWrap">
<!-- 					<ul>
						<li class="temp"><a href="#"></a></li>
						<li class="temp"><a href="#"></a></li>
						<li class="temp"><a href="#"></a></li>
						<li class="temp"><a href="#"></a></li>
						<li class="temp"><a href="#"></a></li>
						<li class="temp"><a href="#"></a></li>
						<li class="temp"><a href="#"></a></li>
						<li class="temp"><a href="#"></a></li>
						<li class="temp"><a href="#"></a></li>
						<li class="temp"><a href="#"></a></li>
						<li class="temp"><a href="#"></a></li>
						<li class="temp"><a href="#"></a></li>
						<li class="temp"><a href="#"></a></li>
						<li class="temp"><a href="#"></a></li>
						<li class="temp"><a href="#"></a></li>
						<li class="temp"><a href="#"></a></li>
						<li class="temp"><a href="#"></a></li>
						<li class="temp"><a href="#"></a></li>
						<li class="temp"><a href="#"></a></li>
						<li class="temp"><a href="#"></a></li>
						<li class="temp"><a href="#"></a></li>
						<li class="temp"><a href="#"></a></li>
						<li class="temp"><a href="#"></a></li>
						<li class="temp"><a href="#"></a></li>
						<li class="temp"><a href="#"></a></li>						
					</ul> -->
				<ul>
					<c:forEach var="board" items="${list}">
						<li>
								<div class="RC_listImg"></div>
								<div class="RC_listTitle">
									<div class="zoneBtn zoneOrangeIconSmall">위치</div>
									<div class="ame themeKeySmall">#착한아메</div>
									<h3 class="RC_titleName">${board.writingTitle}</h3>						
								</div>
						</li>
					</c:forEach>
				</ul>
				</div>
			</div>
		</div>				
	</div> 
</div>
	
<script>
	$("#RC_Register").click(function(){
		location.href="${pageContext.request.contextPath}/user/community/cafeRecommend/register";
		//alert("test");
	})
</script>
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>