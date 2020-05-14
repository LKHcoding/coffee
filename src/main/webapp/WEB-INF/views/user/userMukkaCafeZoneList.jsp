<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>

<style>
	.cafeLocationSearch {
		padding: 10px 0 20px;
	}

	.cafeLocationSearch .selectLeft {
		float: left;
	}
	
	.cafeLocationSearch .selectRight {
		float: right;
	}
	
	.locationCafe{
		height: 160px;
		margin-bottom: 30px;
	}
	
	.locationListLeft{
		width: 160px;
	    height: 160px;
	    display: inline;
	    float: left;
	    border-top: 1px solid #545454;
	    border-bottom: 1px solid #545454;
	    position: relative;
	}
	
	.locationListLeft img{
		width: 160px;
		height: 160px;
	}
	
	.locationListCenter{
		line-height: 40px;
	    float: left;
	    width: 530px;
	    border-top: 1px solid #545454;
	    border-bottom: 1px solid #545454;
	    height: 160px;
	    padding-left: 22px;
	}
	
	.daeguIcon{
		background: url(/coffeemukka/resources/images/point_w.png) no-repeat;
	    background-size: 19px;
	    background-position: 5px center;
	    background-color: #ED7D31;
	    width: 60px;
	    height: 25px;
	    line-height: 25px;
	    text-align: right;
	    padding: 0 30px;
	    padding-right: 5px;
	    margin-right: 5px;
	    border-radius: 5px;
	    color: white;
	    display: inline;
	}
	
	.themeIcon{
		background-size: 19px;
	    background-position: 5px center;
	    background-color: #b038fa;
	    width: 60px;
	    height: 25px;
	    line-height: 25px;
	    text-align: right;
	    padding-right: 10px;
	    padding: 0 10px;
	    border-radius: 5px;
	    color: white;
	    display: inline;
	}
	
	.cafeTitle{
		display: inline;
    	margin-left: 10px;
	}
	
	.locationListRight{
		border-top: 1px solid #545454;
		border-bottom: 1px solid #545454;
	    float: left;
	    height: 160px;
	}
	
	.cafeRegiDate{
		float: left;
   		padding: 5px 11px;
	}
	
	.cafeZzim{
		width: 30px;
    	padding: 5px 10px 0 10px;
	}
	
	.visitAndLocation{
		line-height: 40px;
	    width: 23px;
	    float: left;
	    margin-right: 5px;
	}
	
	.visitAndLocation img{
		vertical-align: middle;
	}
	
	.visit{
		width: 180px;
    	float: left;
	}
	.oneline{
		height: 70px;
	    line-height: 70px;
	    margin-left: 10px;
	    text-overflow: ellipsis;
	    overflow: hidden;
	    padding-right: 30px;
	    white-space:nowrap;
	}
	
	.replyAndView{
		line-height: 40px;
	    width: 80px;
	    float: left;
	    margin-right: 5px;
	    border: 1px solid black;
	    border-radius: 5px; 
	    text-align: center;
	    margin: 10px 0 10px 10px;
	}
	
	.replyAndView img{
		vertical-align: middle;
	}
	
	.more{
		clear: both;
	    border: 1px solid black;
	    width: 173px;
	    margin-left: 10px;
	    text-align: center;
	    height: 40px;
	    line-height: 40px;
	}
	
	.cafeVoteNum{
		float: right;
	    width: 25px;
	    height: 25px;
	    border-radius: 40px;
	    margin: 10px;
	    text-align: center;
	    line-height: 25px;
	    font-weight: 700;
	    position: absolute;
	    top: 0px;
	    right: 0px;
	    font-size: 12px;
	}
	
	.star{
		position: absolute;
	    top: 11px;
    	left: 5px;
	}
	
	.blackOpacity{
		background-color: rgba(0,0,0,.2);
		position: absolute;
		width: 160px;
		height: 160px;
		top: 0;
		left: 0;
		
	}
	.pagination {
		display: inline-block;
	  	padding-left: 0;
	  	margin: 20px 0;
	  	border-radius: 4px;
}
	.pagination > li {
  		display: inline;
}
	.pagination > li > a,
	.pagination > li > span {
		position: relative;
		float: left;
		padding: 6px 12px;
		margin-left: -1px;
		line-height: 1.42857143;
		color: #303A50;
		text-decoration: none;
		background-color: #fff;
		border: 1px solid #ddd;
}
	.pagination > li:first-child > a,
	.pagination > li:first-child > span {
		margin-left: 0;
		border-top-left-radius: 4px;
		border-bottom-left-radius: 4px;
}
	.pagination > li:last-child > a,
	.pagination > li:last-child > span {
		border-top-right-radius: 4px;
		border-bottom-right-radius: 4px;
}
	.pagination > li > a:hover,
	.pagination > li > span:hover,
	.pagination > li > a:focus,
	.pagination > li > span:focus {
		color: #23527c;
		background-color: #eee;
		border-color: #ddd;
}
	.pagination > .active > a,
	.pagination > .active > span,
	.pagination > .active > a:hover,
	.pagination > .active > span:hover,
	.pagination > .active > a:focus,
	.pagination > .active > span:focus {
		z-index: 2;
		color: #fff;
		cursor: default;
		background-color: #303A50;
		border-color: #303A50;
}
	.pagination > .disabled > span,
	.pagination > .disabled > span:hover,
	.pagination > .disabled > span:focus,
	.pagination > .disabled > a,
	.pagination > .disabled > a:hover,
	.pagination > .disabled > a:focus {
		color: #777;
		cursor: not-allowed;
		background-color: #fff;
		border-color: #ddd;
}
	.pagination-lg > li > a,
	.pagination-lg > li > span {
		padding: 10px 16px;
		font-size: 18px;
}
	.pagination-lg > li:first-child > a,
	.pagination-lg > li:first-child > span {
		border-top-left-radius: 6px;
		border-bottom-left-radius: 6px;
}
	.pagination-lg > li:last-child > a,
	.pagination-lg > li:last-child > span {
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
}
	.pagination-sm > li > a,
	.pagination-sm > li > span {
		padding: 5px 10px;
		font-size: 12px;
}
	.pagination-sm > li:first-child > a,
	.pagination-sm > li:first-child > span {
       border-top-left-radius: 3px;
	   border-bottom-left-radius: 3px;
}
	.pagination-sm > li:last-child > a,
	.pagination-sm > li:last-child > span {
		border-top-right-radius: 3px;
		border-bottom-right-radius: 3px;
}
</style>

<!-- bar-rating -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/fontawesome-stars.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.barrating.min.js"></script>

<script type="text/javascript"> 
	$(function() {
		$('.starPoint').barrating({
			theme: 'fontawesome-stars' , initialRating: 3, readonly: true
		});
	})
</script>

	<div class="content subPageContent">
		<!-- 서브페이지 콘텐츠 -->
		<div class="contentArea">
			<h2 class="subPageTitle">
				<span class="title">위치별</span>
				<span class="subTit grayB"> | 위치 중심의 카페정보</span>
			</h2>
			
			<!-- 서브콘텐츠 시작 -->
			
			<!-- 위치, 테마 선택 및 검색란 -->
			<div class="cafeLocationSearch clearfix">
				<div class="selectLeft">
					<select name="" id="">
						<option value="all">전체</option>
						<option value="동성로">동성로</option>
						<option value="수성못 들안길">수성못 들안길</option>
						<option value="두류공원 이월드">두류공원 이월드</option>
						<option value="달서구">달서구</option>
						<option value="수성구">수성구</option>
						<option value="서구-북구">서구-북구</option>
						<option value="중구">중구</option>
						<option value="동구">동구</option>
						<option value="남구">남구</option>
						<option value="달성군">달성군</option>
						<option value="팔공산">팔공산</option>
					</select>
					<select name="" id="">
						<option value="all">전체</option>
						<option value="데이트">데이트</option>
						<option value="뷰">뷰</option>
						<option value="착한아메">착한아메</option>
						<option value="디저트">디저트</option>
						<option value="댕댕이">댕댕이</option>
						<option value="작업">작업</option>
					</select>
				</div>
				<div class="selectRight">
					<select name="" id="">
						<option value="">카페명</option>
						<option value="">한줄소개</option>
						<option value="">주소</option>
					</select>
					<input type="text" name="" placeholder="검색어를 입력하세요." />
					<input type="submit" value="검색" class="navyBtn"/>
				</div>
			</div>
			<!-- 위치별 카페 리스트 -->
			<c:forEach var="cafe" items="${list }">
			<div class="locationCafe">
				<div class="locationListLeft">
					<c:forEach var="img" items="${imgList }">
						<c:if test="${img.cafeNo.cafeNo == cafe.cafeNo }">
							<img src="${pageContext.request.contextPath }/resources/images/sumnail/${img.imageName}">
						</c:if>
					</c:forEach>
					<div class="blackOpacity"></div>
					<div class="star">
						<select class="starPoint"> 
							<option value="1">1</option> 
							<option value="2">2</option> 
							<option value="3">3</option> 
							<option value="4">4</option> 
							<option value="5">5</option> 
						</select>
					</div>
					<div class="cafeVoteNum bgRed">${cafe.voteNumber }</div>
				</div>
				<div class="locationListCenter">
					<div class="daeguIcon">${cafe.zoneNo.zoneName }</div>
					<c:set var="theme" value="${cafe.themeNo.themeNo }"/>
					<c:choose>
						<c:when test="${theme == 1 }">
							<div class="themeIcon" style="background-color: #b038fa;">#${cafe.themeNo.themeName }</div>
						</c:when>
						<c:when test="${theme == 2 }">
							<div class="themeIcon" style="background-color: #528236;">#${cafe.themeNo.themeName }</div>
						</c:when>
						<c:when test="${theme == 3 }">
							<div class="themeIcon" style="background-color: #96814c;">#${cafe.themeNo.themeName }</div>
						</c:when>
						<c:when test="${theme == 4 }">
							<div class="themeIcon" style="background-color: #f2486f;">#${cafe.themeNo.themeName }</div>
						</c:when>
						<c:when test="${theme == 5 }">
							<div class="themeIcon" style="background-color: #FFB232;">#${cafe.themeNo.themeName }</div>
						</c:when>
						<c:when test="${theme == 6 }">
							<div class="themeIcon" style="background-color: #0170c2;">#${cafe.themeNo.themeName }</div>
						</c:when>
					</c:choose>
					
					<h2 class="cafeTitle">${cafe.cafeName }</h2>
					<p class="oneline">'${cafe.oneline }'</p>
					<div>
						<div class="visit">
							<div class="visitAndLocation">
								<img src="${pageContext.request.contextPath }/resources/images/menu2_1.png">
							</div>
							<div>
								<span>100</span>개의 탐방기
							</div>
						</div>
						<div class="location">
							<div class="visitAndLocation">
								<img src="${pageContext.request.contextPath }/resources/images/menu5.png">
							</div>
							<div>
								<p>${cafe.address } ${cafe.detailAddress }</p>
							</div>
						</div>
					</div>
				</div>
				<div class="locationListRight">
					<div>
						<p class="cafeRegiDate">
							<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${cafe.registrationDate}"/>						
						</p>
						<img class="cafeZzim" src="${pageContext.request.contextPath }/resources/images/key1.png">
					</div>
					<div>
						<div class="replyAndView">
							<img src="${pageContext.request.contextPath }/resources/images/reply.png">
							<span>20</span>
						</div>
						<div class="replyAndView">
							<img src="${pageContext.request.contextPath }/resources/images/view.png">
							<span>${cafe.viewNumber }</span>
						</div>
					</div>
					<div class="more">
						<p><span>카페정보</span> 더보기 ></p>
					</div>
				</div>
			</div>
			</c:forEach>
			<div style="text-align: center;">
				<ul class="pagination">
					<c:if test="${pageMaker.prev == true }">
						<li><a href="zone?page=${pageMaker.startPage-1 }">&laquo;</a></li>
					</c:if>
					<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
						<li class="${pageMaker.cri.page == idx?'active':'' }"><a href="zone?page=${idx }">${idx }</a></li>
					</c:forEach>
					<c:if test="${pageMaker.next == true }">
						<li><a href="zone?page=${pageMaker.endPage+1 }">&raquo;</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>

<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>

<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>