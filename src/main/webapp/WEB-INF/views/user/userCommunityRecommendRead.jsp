<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>
<style>
	.wrapStyle {
		border-top: 1px solid #545454;
		border-bottom: 1px solid #545454;
		padding: 15px;
	}

	/* title 영역 */
	.detaliCafeR_title_wrap .keyword {
		font-size: 14px;
	}
	
	.detaliCafeR_title_wrap .regDate {
		float: right;
		color: gray;
		font-weight: 300;
		margin-right: 13px;
	}
	
	.detaliCafeR_title_wrap .d_cafeR_titleMiddle{
		padding: 10px;
	}
	
	.detaliCafeR_title_wrap .d_cafeR_title {
		font-size: 25px;
		font-weight: 700;
		float: left;
	}
	
	.detaliCafeR_title_wrap .d_cafeR_user {
		float: right;
	}
	
	.detaliCafeR_title_wrap .d_cafeR_user img{
		height: 25px;
		float: left;
		margin-right: 5px;
	}
	
	.detaliCafeR_title_wrap .d_cafeR_user p {
		float: left;
		font-size: 16px;
		font-weight: 700;
	}
	
	.detaliCafeR_title_wrap .d_cafe_icon {
		background-color: #deeaf6;
		display: inline-block;
		padding: 10px;
	}
	
	.detaliCafeR_title_wrap .d_cafe_icon a {
		color: #2d4686;
	}
	
	.detaliCafeR_title_wrap .d_cafe_icon img {
		height: 25px;
		float: left;
		margin-right: 10px;
	}
	#RC_viewCnt{
		float: right;
		color: gray;
		font-weight: 300;
		margin-right: 13px;
		margin-top: 10px;	
	}
	
	/* 콘텐츠 영역 */
	.d_cafeR_context_wrap {
		padding: 10px;
	}
	.d_cafeR_context_wrap .readImgBox{ /* 이미지 사이즈 고민 */
		text-align: center;
	}
	.d_cafeR_context_wrap .readImgBox img{ /* 이미지 사이즈 고민 */
		width: 100%;
		margin-top: 15px;
	}
	div#addMap{
		width: 102%;
		margin-top: 15px;
		margin-bottom: 15px;
	}
	span.mapTitle{
		background-color: #303A50;
		color: white;
		font-weight: bold;
		padding-left: 5px;
		padding-right: 5px;
		border-radius: 3px;
		letter-spacing: 2px;
	}
	.d_cafeR_context_wrap #map{ 
		width: 100%;
		height: 400px;
	}
	
	/* 버튼 영역 */
	.d_cafeR_btn_wrap .d_cafeR_cnt {
		font-size: 20px;
		line-height: 18px;
		margin-right: 20px;
		margin-top: 10px;
	}
	
	.d_cafeR_btn_wrap p {
		margin-left: 5px;
	}
	
	.d_cafeR_btn_wrap .d_cafeR_btns button {
		font-size: 18px;
		margin-left: 10px;
	}
	
	/* 댓글 영역 */
	.replyStyle{
		border-bottom: 1px solid #545454;
		padding: 10px 25px;
	}
	
	/* 댓글 작성 */
	.d_cafeR_reply_wrap .d_cafeR_reply_input img {
		height: 37px;
		margin-right: 15px;
	}
	
	.d_cafeR_reply_wrap .d_cafeR_reply_input textarea[name="commentContent"] {
		height: 35px;
		width: 83%;
		margin-right: 15px;
		padding: 0 10px;
		line-height: 35px;
		font-size: 16px;
	}
	
	.d_cafeR_reply_wrap .d_cafeR_reply_input #d_cafeR_replyAddBtn {
		font-size: 18px;
	}
	
	/* 댓글 리스트 */
	.d_cafeR_reply_wrap .d_cafeR_replyList li {
		line-height: 35px;
		position: relative;
	}	
	
	.d_cafeR_reply_wrap .d_cafeR_replyList li img {
		height: 35px;
		margin-right: 30px;
	}
	
	.d_cafeR_reply_wrap .d_cafeR_replyList li > p:nth-of-type(1) {
		font-weight: 700;
		margin-right: 30px;
	}
	
	.d_cafeR_reply_wrap .d_cafeR_replyList li > p:last-child {
		position: absolute;
		font-size: 14px;
		top: 0;
		right: 25px;
	}
	
	/* 같은 카페 다른 리뷰 영역 */
	.cafeR_sameList {
		margin-top: 100px;
	}
	
	.cafeR_sameList .cafeR_sameTitle {
		font-size: 20px;
	}
	
	.cafeR_sameList .cafeR_sameTitle .sameBtn {
		width: 30px;
	    height: 30px;
	    border: 1px solid #aaa;
	    line-height: 30px;
	    text-align: center;
	    margin-left: 10px;
	    cursor: pointer;
	}
	
	/* 다른 포스트 list */
	.cafeR_sameList .a_cafeReview {
		display: block;
		float: left;
		width: 48.6%;
		border: 1px solid #545454;
		margin-bottom: 20px;
	}
	
	.cafeR_sameList .cafeR_box:hover .cafe_title{
		text-decoration: underline;
	}
	
	.cafeR_sameList .a_cafeReview:nth-of-type(odd) {
		margin-right: 20px;
	}
	
	.cafeR_sameList .cafeR_titleBox {
		height: 200px;
		padding: 15px 10px;
		position: relative;
		color: #fff;
	}
	
	.cafeR_sameList .cafeR_titleBox .cafeR_titleImg {
		position: absolute;
	    top: 0;
	    left: 0;
	    width: 100%;
	    height: 100%;
	    z-index: -1;
	    overflow: hidden;
	}
	
	.cafeR_sameList .cafeR_titleBox .cafeR_titleImg .bg {
		width: 100%;
	    height: 100%;
	    position: absolute;
	    top: 0;
	    left: 0;
	    background: rgba(0,0,0,0.4);
	}
	
	.cafeR_sameList .cafeR_titleBox .cafeR_titleImg img {
		width: 100%;
    	min-height: 100%;
	}
	
	.cafeR_sameList .cafeR_writer {
		line-height: 50px;
		float: left;
	}
		
	.cafeR_sameList .cafeR_writer img {
		width: 50px;
		display: block;
		float: left;
		margin-right: 10px;
	}
	
	.cafeR_sameList .cafeR_writer span {
		display: block;
		float: left;
		color: #fff;
		font-size: 18px;
	}
	
	.cafeR_sameList .cafeR_recomCnt {
		float: right;
		width: 30px;
		height: 30px;
		border-radius: 40px;
		margin: 10px;
		text-align: center;
		line-height: 30px;
		font-weight: 700;
	}
	
	.cafeR_sameList .cafeR_titleBox h2 {
		position: absolute;
	    top: 50%;
	    left: 50%;
	    transform: translate(-50%, -50%);
	    width: 85%;
	    text-align: center;
	}
	
	.cafeR_sameList .cafeR_date {
		position: absolute;
	    top: 85%;
	    left: 50%;
	    transform: translate(-50%, -50%);
	    width: 85%;
	    text-align: right;
	    font-size: 20px;
	}	
	
	.cafeR_sameList .cafeR_infoBox {
		padding: 10px;
		padding-bottom: 0;
	}
	
	.cafeR_sameList .cafeR_infoTop {
		padding-bottom: 10px;
	}
	
	.cafeR_sameList .cafeR_infoTop h2{
		text-align: right;
		padding: 10px 0;
	}
	
	.cafeR_sameList .cafeR_text {
		overflow: hidden; 
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-line-clamp: 4; /* 라인수 */
		-webkit-box-orient: vertical;
		word-wrap: break-word;
	}
	
	.cafeR_sameList .cafeR_replyCdtWrap {
		float: right;
		padding: 10px;
		padding-right: 0;
	}
	
	.cafeR_sameList .cafeR_replyCdt .cafeR_btns {
		border: 1px solid #545454;
		padding: 5px 10px;
		border-radius: 10px;
		float: left;
		margin-right: 10px;
	}
	
	/* 같은카페 리스트 */
	.recommendBest .recomWrap ul{
		overflow: hidden;
	}
	
	.recommendBest .recomWrap li {
		float: left;
		width: 222px;
		height: 260px;
		margin: 3px;
		border: 1px solid #545454;
	}
	.recommendBest .recomWrap li div.RC_listImgWrap{
		width: 100%;
		height: 160px;
		position: relative;
	}
	.recommendBest .recomWrap li div.RC_listImgContainer img{
		width: 100%;
		height: 160px;
		position: absolute;
	}
	.recommendBest .recomWrap li div.RC_listImgContainer .active{
		z-index: 1;
	}		
	.recommendBest .recomWrap li div.RC_listTitle1{
		width: 90%;
		height: 33px;
		padding: 8px;
	}
	.recommendBest .recomWrap li div.RC_listTitle1 div.zoneBtn,div.themeKeySmall{
		font-size: 12px;
		margin-top: 5px;
	}
 	.recommendBest .recomWrap li div.RC_listTitle2{
		width: 90%;
		height: 45px;
		padding: 8px;
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
			<!-- title 영역 -->
			<div class="detaliCafeR_title_wrap bgLightGray wrapStyle">
				<div class="d_cafeR_titleTop clearfix">
					<div class="zoneOrangeIconSmall keyword">${board.zoneNo.zoneName }</div>
				<c:choose>
					<c:when test="${board.themeNo.themeNo == 1}">
						<div class="date keyword themeKeySmall">#${board.themeNo.themeName}</div>
					</c:when>
					<c:when test="${board.themeNo.themeNo == 2}">
						<div class="view keyword themeKeySmall">#${board.themeNo.themeName}</div>
					</c:when>
					<c:when test="${board.themeNo.themeNo == 3}">
						<div class="ame keyword themeKeySmall">#${board.themeNo.themeName}</div>
					</c:when>
					<c:when test="${board.themeNo.themeNo == 4}">
						<div class="dessert keyword themeKeySmall">#${board.themeNo.themeName}</div>
					</c:when>
					<c:when test="${board.themeNo.themeNo == 5}">
						<div class="dog keyword themeKeySmall">#${board.themeNo.themeName}</div>
					</c:when>																																								
					<c:otherwise>
						<div class="work keyword themeKeySmall">#${board.themeNo.themeName}</div>		
					</c:otherwise>
				</c:choose>					
					<div class="regDate"><fmt:formatDate value="${board.registrationDate }" pattern="yyyy/MM/dd"/></div>
				</div>
				<div class="d_cafeR_titleMiddle clearfix">
					<p class="d_cafeR_title" id="cafe_title">${board.writingTitle }</p>
					<div class="d_cafeR_user clearfix">
						<img src="${pageContext.request.contextPath }/resources/images/${board.userNo.userGrade.userGradeImage}" alt="등급아이콘" />
						<p>${board.userNo.nick }(${board.userNo.userId })</p>
					</div>
				</div>
				<div class="d_cafeR_cafe">
					<div class="d_cafe_icon clearfix">
							<img src="${pageContext.request.contextPath }/resources/images/location.png">
							<span class="blue bold" id="add">${board.address}</span>							
					</div>
					<div id="RC_viewCnt">조회수 <span class="orange">${board.viewNumber}</span></div>	
				</div>
			</div>
			
			<!-- content 영역 -->
			<div class="d_cafeR_context_wrap">
				<c:forEach var="file" items="${board.files}">
					<input type="hidden" class="readImgName" value="${file.imageName}">
				</c:forEach>
				<!-- 이미지 -->
				<div class="readImgBox"></div>
				<!-- 지도 -->
				<div id="addMap"><span class="mapTitle">지도</span> | ${board.address}</div>
			    <div id="map"></div>
				<!-- 글내용 -->
				<div id="RC_contentText"><pre style="padding:30px;">${board.writingContent}</pre></div>
			</div>
			<!-- 히든처리 -->
			<input type="hidden" name="board.boardNo" value="${board.boardNo}">
			
			
			<!-- 버튼 영역 -->
			<div class="d_cafeR_btn_wrap clearfix bgLightGray wrapStyle">
				<div class="d_cafeR_cnt d_cafeR_voteBtn clearfix f_left">
					<a href="#" class="f_left">
						<i class="far fa-thumbs-up orange voteIcon"></i>
					</a>
					<p class="orange f_left">좋아요 ${board.voteNumber }</p>
				</div>
				<div class="d_cafeR_cnt d_cafeR_replyBtn f_left">
					<i class="far fa-comment-dots clearfix grayB f_left"></i>
					<p class="grayB f_left">댓글 ${board.replyCnt}</p>
				</div>
				<div class="d_cafeR_btns f_right">
					<button type="button" class="d_cafeR_modifyBtn greenLineBtn f_left" id="RC_modify">수정</button>
					<button type="button" class="d_cafeR_deleteBtn redLineBtn f_left" id="RC_delete">삭제</button>
					<button class="d_cafeR_listBtn navyBtn2 f_left" id="RC_list">목록</button>
				</div>
			</div>
			
			<!-- 댓글 영역 -->
			<div class="d_cafeR_reply_wrap">
				<div class="d_cafeR_reply_input replyStyle clearfix">
					<!-- 로그인 된 회원의 등급 이미지 : 로그인 기능 구현 후 수정해야함 -->
					<img class="f_left" src="${pageContext.request.contextPath }/resources/images/Lv01_w1.png" alt="등급아이콘" />
					<textarea class="f_left" name="commentContent" cols="30" rows="10" placeholder="여러분의 소중한 댓글을 남겨주세요."></textarea>
					<!-- <input class="f_left" type="text" name="commentContent" placeholder="여러분의 소중한 댓글을 남겨주세요."/> -->
					<button id="d_cafeR_replyAddBtn" class="orangeBtn f_left">저장</button>
				</div>
				
				<!-- 댓글 샘플 -->
				<div class="d_cafeR_replyList">
					<ul>
						<li class="replyStyle clearfix">
							<img class="f_left" src="${pageContext.request.contextPath }/resources/images/Lv01_w1.png" alt="등급아이콘" />
							<p class="f_left">닉네임1</p>
							<p class="f_left">댓글 내용</p>
							<p class="regitDate orange">2020/05/02</p>
						</li>
					</ul>
				</div>
			</div>
			
			
			<!-- 같은 카페의 다른 포스트 list -- "개수"  -->
			<div class="cafeR_sameList">
<%-- 				<c:if test="${sameCnt > 0 }">
					<div class="cafeR_sameTitle bottomLine clearfix">
							<p class="f_left"><span class="blue bold">${board.cafeNo.cafeName }</span>에 대한 <span class="orange bold">${sameCnt }</span>개의 <span class="red bold">탐방기</span>가 더 있어요!</p>
						<c:if test="${sameCnt > 4 }">
							<div class="sameListBtn f_right">
								<div class="sameBtn prevBtn f_left"><i class="fas fa-angle-left"></i></div>
								<div class="sameBtn nextBtn f_left"><i class="fas fa-angle-right"></i></div>
							</div>
						</c:if>
					</div>
				</c:if>	 --%>
				
			<!-- 같은 카페의 다른 포스트 list -->	
			<div class="recommendBest mb30">
				<div class="recomWrap">
				 <ul>
					<c:forEach var="sameCafe" items="${sameCafe}">
					<a href="${pageContext.request.contextPath}/user/community/cafeRecommend/read?boardNo=${sameCafe.boardNo}">
						<li>
							<div class="RC_listImgWrap">
<%-- 									<div class="RC_listImgContainer">
						                <!-- 이미지 이름 꺼내서 삽입하기 -->		
										<c:forEach var="img" items="${listImg}">
											 <c:if test="${img.boardNo.boardNo == board.boardNo }">
												<img src = "${pageContext.request.contextPath }/user/displayFile?filename=${img.imageName}" class="thumbNailImg">										
											</c:if>
										</c:forEach>
										<p class="test"></p>								
									</div>	 --%>						
							</div>
							<div class="RC_listTitle1">
								<!-- 위치 -->
								<div class="zoneBtn zoneOrangeIconSmall">${sameCafe.zoneNo.zoneName}</div>
								<!-- 키워드 -->
								<c:choose>
									<c:when test="${board.themeNo.themeNo == 1}">
										<div class="date themeKeySmall">#${sameCafe.themeNo.themeName}</div>
									</c:when>
									<c:when test="${board.themeNo.themeNo == 2}">
										<div class="view themeKeySmall">#${sameCafe.themeNo.themeName}</div>
									</c:when>
									<c:when test="${board.themeNo.themeNo == 3}">
										<div class="ame themeKeySmall">#${sameCafe.themeNo.themeName}</div>
									</c:when>
									<c:when test="${board.themeNo.themeNo == 4}">
										<div class="dessert themeKeySmall">#${sameCafe.themeNo.themeName}</div>
									</c:when>
									<c:when test="${board.themeNo.themeNo == 5}">
										<div class="dog themeKeySmall">#${sameCafe.themeNo.themeName}</div>
									</c:when>																																								
									<c:otherwise>
										<div class="work themeKeySmall">#${sameCafe.themeNo.themeName}</div>		
									</c:otherwise>
								</c:choose>
								</div>
								<div class="RC_listTitle2">
									<!-- 상세페이지로 가기 -->																																			
									<h3 class="RC_titleName">${sameCafe.writingTitle}</h3>
								</div>							
						</li>
					</a>
					</c:forEach>
				</ul>
				</div>

			</div>
</div>
			</div>
		</div>
	</div>		
		<!-- 서브페이지 콘텐츠 end -->
	</div>
	
<script>
</script>
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=82c67a5c009ecc3de6e3c10d398c0061&libraries=services"></script>
<script>
	//콘텐츠영역 - 사진출력	
	var filesCnt = $(".readImgName").length;
	var arr = new Array(filesCnt);
	for(var i = 0; i<filesCnt;i++){
		arr[i] = $(".readImgName").eq(i).val();
		//alert(arr[i]);
		var start = arr[i].substring(0,12);
		var end = arr[i].substring(14);
		
		//console.log(start+end);
		fileName = start + end;
		//alert(fileName);
		
		$("div.readImgBox").append("<img src = '${pageContext.request.contextPath }/user/displayFile?filename="+fileName+"'>");			 	
	}
	
	//수정버튼
	$("#RC_modify").click(function() {
		location.href="${pageContext.request.contextPath}/user/community/cafeRecommend/modify?boardNo=${board.boardNo}";
	})
	//삭제버튼
	$("#RC_delete").click(function() {
		location.href="${pageContext.request.contextPath}/user/community/cafeRecommend";
	})	
	//목록버튼
	$("#RC_list").click(function() {
		location.href="${pageContext.request.contextPath}/user/community/cafeRecommend";
	})
	

	//지도 -- 주소, 카페이름 빼오기
	var address = $("#add").text();
	console.log("주소"+address);
	var cafeName = $("#cafe_title").text();
	if(address == ""){ //정확한 주소를 알 수 없을때
		$("#add").removeClass("blue").addClass("red");
		$("#add").text("정확한 주소를 확인할 수 없습니다.");
		$("div#addMap").remove(); // 지도 Title remove
		$("div#map").remove(); // 지도 remove
	}
	console.log("카페이름"+cafeName);
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3 // 지도의 확대 레벨
		};

	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption);

	// 주소로 좌표를 검색합니다 -- address
	geocoder.addressSearch(address, function(result, status) {
		// 정상적으로 검색이 완료됐으면 
		if (status === kakao.maps.services.Status.OK) {
			var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
			// 결과값으로 받은 위치를 마커로 표시합니다
			var marker = new kakao.maps.Marker({
				map : map,
				position : coords
			});
			// 인포윈도우로 장소에 대한 설명을 표시합니다
			var infowindow = new kakao.maps.InfoWindow({                              //cafeName
				content : '<div style="width:150px;text-align:center;padding:6px 0;">'+cafeName+'</div>'
			});
			infowindow.open(map, marker);
			// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			map.setCenter(coords);
		}
	});
</script>

<%@ include file="../userInclude/footer.jsp" %>