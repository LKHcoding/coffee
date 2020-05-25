<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>
<!-- bar-rating -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/w3.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/fontawesome-stars.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.barrating.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<style>
	/* 위치 아이콘 */
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
	    padding-right: 10px;
	    margin-right: 20px;
	    border-radius: 5px;
	    color: white;
	    display: inline;
	}
	/* 테마 아이콘 */
	.themeIcon{
		background-size: 19px;
	    background-position: 5px center;
	    background-color: #b038fa;
	    width: 60px;
	    height: 25px;
	    line-height: 25px;
	    text-align: right;
	    padding-right: 10px;
	    margin-right: 5px;
	    padding: 0 10px;
	    border-radius: 5px;
	    color: white;
	    display: inline;
	}
	.position{
		position: relative;
	}
	/* update 날짜 */
	.modifyDate{
		color: #ED7D31;
		font-size: 14px;
		position: absolute;
		top: 0;
		right: 0;
	}
	/* 위시(wish) 아이콘 */
	#love{
		height: 30px;
	    position: absolute;
	    top: 26px;
	    right: 80px;
	}
	/* 추천 아이콘 */
	#like{
		position: absolute;
	    top: 25px;
	    right: 20px;
	    font-size: 30px;
	    color: darkgrey;
	}
	/* 한줄소개 */
	#oneline{
		margin: 10px 40px;
	}
	/* 카페 기본정보 */
	.cafeInfo{
		height: 50px;
	    border-bottom: 1px solid #545454;
	    line-height: 50px;
	    padding-left: 10px;
	    clear: both;
	}
	.upAndDown{
		position: absolute;
    	right: 30px;
	}
	.infoIcon{
		height: 25px;
	    padding: 10px;
	    float: left;
	}
	/* 카페 별점 관련 */
	#spoint{
		height: 45px;
	    line-height: 45px;
	    background-color: #f4f4f4;
	    border-radius: 10px;
	    width: 180px;
	    padding-left: 10px;
	    float: left;
	}
	#spointComment{
		height: 45px;
	    line-height: 45px;
	    background-color: #f4f4f4;
	    border-radius: 10px;
	    width: 110px;
	    padding-left: 10px;
	    float: left;
	}
	/* 카페 별점의 별 색상 */
	.br-theme-fontawesome-stars .br-widget a.br-selected:after {
		color: red;
	}
	#jumsu{
		height: 45px;
	    line-height: 45px;
	    float: left;
	    margin-left: -60px;
	    margin-bottom: 20px;
	}
	td, th {
	padding: 5px;
	border: 1px solid white;
	text-align: center;
	max-height: 35px;
	}
	
	th {
		background-color: white;
	}
	/* 메뉴 이미지 */
	#menuImg{
		background-image:url("${pageContext.request.contextPath }/resources/images/sumnail/carmel-menu.jpg");
		background-repeat: no-repeat;
		background-size: cover;
		clear: both;
    	width: 800px;
		height: 400px;
		margin: 0px 70px 30px;
	}
	/* 카페 상세 정보 아이콘 관련 */
	.cafeInfoIcon{
	    border-radius: 100px;
	    width: 50px;
	    padding: 10px;
	    box-shadow: 3px 3px 10px #ccc;
	}
	#detailInfo{
	    margin: 30px;
	}
	.iconExplain{
		list-style: none;
	    float: left;
	    width: 200px;
	    height: 100px;
	    line-height: 70px;
	    text-align: center;
	}
	.iconExplain2{
		list-style: none;
	    float: left;
	    width: 180px;
	    height: 100px;
	    line-height: 70px;
	    text-align: left;
	}
	/* 카페 댓글 관련 */
	#commentTitle{
		font-size: 20px;
	    font-weight: bold;
	    display: inline;
	    margin: 0 10px;
	}
	#commentRegiBtn{
		width: 150px;
	    height: 35px;
	    margin-bottom: 20px;
	    font-size: 17px;
	    border-radius: 10px;
	    background-color: white;
	    border-style: none;
	    border: 2px solid #929292;
	    cursor: pointer;
	    outline: 0;
	}
	#commentBoxHeader{
		height: 52px;
	    line-height: 52px;
	    padding-left: 20px;
	    font-size: 18px;
	    color: white;
	    background-color: #001e5a;
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

<script>
	$(function() {
	// 카페 세부정보 별점 
		$('.starPoint').barrating({
			theme: 'fontawesome-stars',
			initialRating: ${starpointSelect},
			readonly: true
		})
	//카페 세부정보 이미지 변경
		$('.bxslider').bxSlider({
			auto : true,
			speed : 300,
			pause : 4000,
			mode : 'fade',
			pager : true,
			slideWidth : 800,
			adaptiveHeight : true
		});
		
		//카페 상세정보, 메뉴판, 편의정보, 상세정보
		$('.cafeInfo').addClass('open');
		$('.closeInfo').addClass('close');
		$('#cafeInfo1 .upAndDown').html('<i class="fas fa-angle-up"></i>');
		$('#cafeInfo2 .upAndDown').html('<i class="fas fa-angle-down"></i>');
		$('#cafeInfo3 .upAndDown').html('<i class="fas fa-angle-down"></i>');
		$('#cafeInfo4 .upAndDown').html('<i class="fas fa-angle-down"></i>');

		$('#cafeInfo1 .upAndDown').click(function(e) {
			e.preventDefault();

			if ($('#cafeDefault').hasClass('open')) {
				$('#cafeDefault').slideUp();
				$('#cafeDefault').removeClass('open');
				$(this).html('<i class="fas fa-angle-down"></i>');
			} else {
				$('#cafeDefault').slideDown();
				$('#cafeDefault').addClass('open');
				$(this).html('<i class="fas fa-angle-up"></i>');
			}
		})
		$('#cafeInfo2 .upAndDown').click(function(e) {
			e.preventDefault();

			if ($('#cafeMenu').hasClass('open')) {
				$('#cafeMenu').slideUp();
				$('#cafeMenu').removeClass('open');
				$(this).html('<i class="fas fa-angle-down"></i>');
			} else {
				$('#cafeMenu').slideDown();
				$('#cafeMenu').addClass('open');
				$(this).html('<i class="fas fa-angle-up"></i>');
			}
		})
		$('#cafeInfo3 .upAndDown').click(function(e) {
			e.preventDefault();

			if ($('#cafeComfort').hasClass('open')) {
				$('#cafeComfort').slideUp();
				$('#cafeComfort').removeClass('open');
				$(this).html('<i class="fas fa-angle-down"></i>');
			} else {
				$('#cafeComfort').slideDown();
				$('#cafeComfort').addClass('open');
				$(this).html('<i class="fas fa-angle-up"></i>');
			}
		})
		$('#cafeInfo4 .upAndDown').click(function(e) {
			e.preventDefault();

			if ($('#cafeDetail').hasClass('open')) {
				$('#cafeDetail').slideUp();
				$('#cafeDetail').removeClass('open');
				$(this).html('<i class="fas fa-angle-down"></i>');
			} else {
				$('#cafeDetail').slideDown();
				$('#cafeDetail').addClass('open');
				$(this).html('<i class="fas fa-angle-up"></i>');
			}
		})
		
		var chartDrowFun = {
			chartDrow : function(){
				var chartData = '';
 
		        //날짜형식 변경하고 싶으시면 이 부분 수정하세요.
		        var chartDateformat     = 'yyyy년MM월dd일';
		        //라인차트의 라인 수
		        var chartLineCount    = 10;
		        //컨트롤러 바 차트의 라인 수
		        var controlLineCount    = 10;
 
        		function drawDashboard() {
        			var data = new google.visualization.DataTable();
			        //그래프에 표시할 컬럼 추가
			        data.addColumn('datetime' , '날짜');
			        data.addColumn('number'   , '별점');
			 
			        //그래프에 표시할 데이터
			        var dataRow = [];
 					
		            for(var i = 0; i <= 12; i++){ //랜덤 데이터 생성
		            	var star   = ${pointList}[i];
		            	if(star==0){
		            		break;
		            	}
		            	dataRow = [new Date('2020', i), star];
		            	data.addRow(dataRow);
		          	}
		            
		            var chart = new google.visualization.ChartWrapper({
		              chartType   : 'LineChart',
		              containerId : 'lineChartArea', //라인 차트 생성할 영역
		              options     : {
		            	  isStacked   : 'percent',
		                  focusTarget : 'category',
		                  height      : 300,
		                  width       : '100%',
		                  legend      : { position: "top", textStyle: {fontSize: 13}},
		                  pointSize   : 5,
		                  tooltip     : {textStyle : {fontSize:12}, showColorCode : true,trigger: 'both'},
		                  hAxis       : {format: chartDateformat, gridlines:{count:chartLineCount,units: {
		                	  years : {format: ['yyyy년']},
		                      months: {format: ['MM월']},
		                      days  : {format: ['dd일']},
		                      hours : {format: ['HH시']}}
		                  },
		                  textStyle   : {fontSize:12}},
		                  vAxis       : {minValue: 5,viewWindow:{min:0},gridlines:{count:-1},textStyle:{fontSize:12}},
		                  animation   : {startup: true,duration: 1000,easing: 'in' },
		                  annotations : {pattern: chartDateformat,
		                	  textStyle: {
		                		  fontSize: 15,
		                		  bold: true,
		                		  italic: true,
		                		  color: '#871b47',
		                		  auraColor: '#d799ae', 
		                		  opacity: 0.8,
		                		  pattern: chartDateformat
		                	  }
		                  },
		                  colors: ['red']
		              }
		            });
 
           			var control = new google.visualization.ControlWrapper({
           				controlType: 'ChartRangeFilter',
           				containerId: 'controlsArea',  //control bar를 생성할 영역
           				options: {
           					ui:{
           						chartType: 'LineChart',
           						chartOptions: {
           							chartArea: {'width': '60%','height' : 80},
           							hAxis: {'baselineColor': 'none', format: chartDateformat, textStyle: {fontSize:12},
           								gridlines:{count:controlLineCount,units: {
           									years : {format: ['yyyy년']},
           									months: {format: ['MM월']},
           									days  : {format: ['dd일']},
           									hours : {format: ['HH시']}}
           							}},
           						 	colors: ['red']
           						}
           					},
	           				filterColumnIndex: 0
           				}
           			});
           			
		            var date_formatter = new google.visualization.DateFormat({ pattern: chartDateformat});
		            date_formatter.format(data, 0);
		 
		            var dashboard = new google.visualization.Dashboard(document.getElementById('Line_Controls_Chart'));
		            window.addEventListener('resize', function() { dashboard.draw(data); }, false); //화면 크기에 따라 그래프 크기 변경
		            dashboard.bind([control], [chart]);
		            dashboard.draw(data);
 
        		}
          		google.charts.setOnLoadCallback(drawDashboard);
      		}
	    }
 
		$(document).ready(function(){
		  google.charts.load('current', {'packages':['line','controls']});
		  chartDrowFun.chartDrow(); //chartDrow() 실행
		});
		
		$('#starPointCheck').barrating({
			theme: 'fontawesome-stars',
			onSelect: function(value, text, event){
				$('#hiddenStarpoint').val(value);
			} 
		});
		
		$('.changeColor').click(function() {
			var colorArr = new Array();
			for(var i=0;i<6;i++){
				colorArr[i] = $('.changeColor').eq(i).css("color");
			}
			var color = $(this).css("color");
			var backgroundColor = $(this).css("background-color");
			
			if(color != "rgb(255, 255, 255)"){
				for(var i=0;i<colorArr.length;i++){
					if(colorArr[i]=="rgb(255, 255, 255)"){
						return false;
					}
				}
				$(this).css("background-color", color);
				$(this).css("color", "white");
				for(var i=0;i<6;i++){
					if($('.changeColor').eq(i).css("color")=="rgb(255, 255, 255)"){
						$('#hiddenTheme').val(i);
					}
				}
				
			}else{
				$(this).css("background-color", "white");
				$(this).css("color", backgroundColor);
				$(this).css("border-color",backgroundColor);
			}
		})
		
		$('#btnStarpointAdd').click(function() {
			var cafeNo = ${cafe.cafeNo};
			var themeNo = $('#hiddenTheme').val();
			var starPoint = $('#hiddenStarpoint').val();
			var starPointComment = $('#comment').val();
			console.log(cafeNo);
			console.log(themeNo);
			console.log(starPoint);
			console.log(starPointComment);
			
			/* var json = JSON.stringify({"cafeNo":cafeNo, "themeNo":themeNo, "starPoint":starPoint, "starPointComment":starPointComment});
			
			$.ajax({
				url:"${pageContext.request.contextPath}/replies/",
				type:"post",
				headers:{"Content-Type":"application/json"},
				data:json,
				dataType:"text",
				success:function(res){
					if(res=="SUCCESS"){
						alert("댓글이 틍록되었습니다.");
						$("#newReplyText").val("");
						getPageList(1);
					}
				}
			}) */
		})
	})
</script>

	<div class="content subPageContent position">
		<!-- 서브페이지 콘텐츠 -->
		<div class="contentArea">
			<!-- 서브페이지 공통적인 타이틀 -->
			<h2 class="subPageTitle">
				<span class="title">${cafe.cafeName }</span>
				<span class="subTit grayB"> <span style="font-size: 22px; vertical-align: text-bottom;">|</span> <a href="${cafe.sns }"><img src="${pageContext.request.contextPath }/resources/images/sns.png" style="height: 18px;"></a></span>
			</h2>
			
			<!-- 서브콘텐츠 시작 -->
			<div class="modifyDate">Update <fmt:formatDate value="${cafe.updateDate }" pattern="yyyy-MM-dd"/> </div>
			<img id="love" src="${pageContext.request.contextPath }/resources/images/key1.png">
			<i class="far fa-thumbs-up" id="like"></i>
			<div class="daeguIcon keyword">${cafe.zoneNo.zoneName }</div>
			
			<!-- 카페 테마 아이콘 관련 코드 -->
			<c:choose>
				<c:when test="${cafe.themeNo.themeNo == 1 }">
					<div class="themeIcon keyword" style="background-color: #b038fa;">#데이트</div>
				</c:when>
				<c:when test="${cafe.themeNo.themeNo == 2 }">
					<div class="themeIcon keyword" style="background-color: #528236;">#뷰</div>
				</c:when>
				<c:when test="${cafe.themeNo.themeNo == 3 }">
					<div class="themeIcon keyword" style="background-color: #96814c;">#착한아메</div>
				</c:when>
				<c:when test="${cafe.themeNo.themeNo == 4 }">
					<div class="themeIcon keyword" style="background-color: #f2486f;">#디저트</div>
				</c:when>
				<c:when test="${cafe.themeNo.themeNo == 5 }">
					<div class="themeIcon keyword" style="background-color: #FFB232;">#댕댕이</div>
				</c:when>
				<c:when test="${cafe.themeNo.themeNo == 6 }">
					<div class="themeIcon keyword" style="background-color: #0170c2;">#작업</div>
				</c:when>
			</c:choose>
			<c:forEach var="theme" items="${themeRank }">
				<c:if test="${cafe.themeNo.themeNo != theme.themeNo}">
					<c:choose>
						<c:when test="${theme.themeNo == 1 }">
							<div class="themeIcon keyword" style="background-color: #b038fa;">#데이트</div>
						</c:when>
						<c:when test="${theme.themeNo == 2 }">
							<div class="themeIcon keyword" style="background-color: #528236;">#뷰</div>
						</c:when>
						<c:when test="${theme.themeNo == 3 }">
							<div class="themeIcon keyword" style="background-color: #96814c;">#착한아메</div>
						</c:when>
						<c:when test="${theme.themeNo == 4 }">
							<div class="themeIcon keyword" style="background-color: #f2486f;">#디저트</div>
						</c:when>
						<c:when test="${theme.themeNo == 5 }">
							<div class="themeIcon keyword" style="background-color: #FFB232;">#댕댕이</div>
						</c:when>
						<c:when test="${theme.themeNo == 6 }">
							<div class="themeIcon keyword" style="background-color: #0170c2;">#작업</div>
						</c:when>
					</c:choose>
				</c:if>
			</c:forEach>
		</div>
		<div>
			<p id="oneline">
				<img src="${pageContext.request.contextPath }/resources/images/ssang-1.png">
				<span style="font-size: 20px;">${cafe.oneline }</span>
				<img src="${pageContext.request.contextPath }/resources/images/ssang-2.png" style="vertical-align: text-top;">
			</p>
			<p style="font-size: 20px; padding: 5px 25px;">${cafe.content }</p>
			<div style="padding: 20px 65px;">
				<div class="bxslider" style="text-align: center;">
					<c:forEach var="images" items="${imgList }">
						<div><img src="${pageContext.request.contextPath }/resources/images/sumnail/${images.imageName}"></div>
					</c:forEach>
				</div>
			</div>
			<!-- 카페 기본정보 -->
			<div class="cafeInfo" id="cafeInfo1">
				<span style="font-size: 20px;font-weight: bold;">기본 정보</span><span style="font-size: 20px;margin: 0 10px;"> | </span>
				<img style="height: 20px;vertical-align: middle;" src="${pageContext.request.contextPath }/resources/images/spaner.png">
				<a href="#"><span style="color: red;vertical-align: middle;">오류 제보</span></a><a class="upAndDown" href="#"></a>
			</div>
			<div id="cafeDefault">
				<img class="infoIcon" src="${pageContext.request.contextPath }/resources/images/point.png"> 
				<div style="height: 45px;line-height: 45px;">${cafe.address } ${cafe.detailAddress }</div>
				
				<div id="map" style="width:100%;height:400px;"></div>
				<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=82c67a5c009ecc3de6e3c10d398c0061&libraries=services"></script>
				<script>
					// 주소-좌표 변환 객체를 생성합니다
					var geocoder = new kakao.maps.services.Geocoder();
					
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
						mapOption = {
							center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
							level : 3 // 지도의 확대 레벨
						};
	
					// 지도를 생성합니다    
					var map = new kakao.maps.Map(mapContainer, mapOption);
	
					// 주소로 좌표를 검색합니다
					geocoder.addressSearch('${cafe.address } ${cafe.detailAddress }', function(result, status) {
						// 정상적으로 검색이 완료됐으면 
						if (status === kakao.maps.services.Status.OK) {
							var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
							// 결과값으로 받은 위치를 마커로 표시합니다
							var marker = new kakao.maps.Marker({
								map : map,
								position : coords
							});
							// 인포윈도우로 장소에 대한 설명을 표시합니다
							var infowindow = new kakao.maps.InfoWindow({
								content : '<div style="width:150px;text-align:center;padding:6px 0;">${cafe.cafeName }</div>'
							});
							infowindow.open(map, marker);
							// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
							map.setCenter(coords);
						}
					});
				</script>
				
				<img class="infoIcon" src="${pageContext.request.contextPath }/resources/images/time.png"> 
				<div style="height: 45px;line-height: 45px;">평일 ${cafe.wkdOpentime } / 주말 ${cafe.wkndOpentime } | ${cafe.closedDay }</div>
				
				<img class="infoIcon" src="${pageContext.request.contextPath }/resources/images/tel.png"> 
				<div style="height: 45px;line-height: 45px;">${cafe.tel }</div>
				
				<img class="infoIcon" src="${pageContext.request.contextPath }/resources/images/star.png"> 
				<div class="star" id="spoint">
					<select class="starPoint"> 
						<option value="1">1</option> 
						<option value="2">2</option> 
						<option value="3">3</option> 
						<option value="4">4</option> 
						<option value="5">5</option> 
					</select>
				</div>
				<div id="jumsu">${starpoint } / 5</div>

				<h4 style="clear: both; margin-left: 50px;">기간별 별점 변화 그래프</h4>

				<div id="Line_Controls_Chart">
					<!-- 라인 차트 생성할 영역 -->
					<div id="lineChartArea" style="padding: 0px 20px 0px 0px;margin-bottom: 30px;"></div>
					<!-- 컨트롤바를 생성할 영역 -->
					<div id="controlsArea" style="padding: 0px 20px 0px 0px; height: 130px;"></div>
				</div>
	
			</div>
			<!-- 카페 메뉴판 정보 -->
			<div class="cafeInfo" id="cafeInfo2">
				<span style="font-size: 20px;font-weight: bold;">메뉴판</span><a class="upAndDown" href="#"></a>
			</div>
			<div class="closeInfo" id="cafeMenu">
				<div>
					<c:forEach var="menuName" items="${menuName }">
						<table style="float: left;margin: 30px;width: 250px; ">
							<tr>
								<th>${menuName.sortName }</th>
								<th>HOT</th>
								<th>ICED</th>
							</tr>
							<c:set var="row_sum" value="0"/>
							<c:forEach var="menuList" items="${menuList }">
								<c:if test="${menuName.sortNo == menuList.menukinds.sortNo }">
									<tr>
										<td>${menuList.menuName }</td>
										<c:if test="${menuList.hI == 0 }">
											<td>${menuList.price }</td>
											<td>${menuList.icedMenuPrice }</td>
										</c:if>
										<c:if test="${menuList.hI == 1 }">
											<td colspan="2">${menuList.price }</td>
										</c:if>
										<c:set var="row_sum" value="${row_sum + 1 }"/>
									</tr>
								</c:if>
							</c:forEach>
							<c:if test="${row_sum <= 5 }">
								<c:forEach begin="0" end="3">
									<tr>
										<td style="color: white;">.</td>
									</tr>
								</c:forEach>
							</c:if>
						</table>
					</c:forEach>
					<div id="menuImg"></div>
				</div>
			</div>
			
			<!-- 카페 상세 정보 관련 -->
			<div class="cafeInfo" id="cafeInfo3">
				<span style="font-size: 20px;font-weight: bold;">상세 정보</span><a class="upAndDown" href="#"></a>
			</div>
			<div class="closeInfo" id="cafeComfort">
				<div>
					<ul id="detailInfo">
						<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/tableNum.png"></li>
						<li class="iconExplain2">테이블 수 ${cafe.tableNumber }개</li>
						<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/socketNum.png"></li>
						<li class="iconExplain2">콘센트 수  ${cafe.socketNumber }개</li>
						<c:if test="${cafe.toiletCdt == 0 }">
							<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/toilet.png"></li>
							<li class="iconExplain2">화장실 청결해요</li>
						</c:if>
						<c:if test="${cafe.mkdessertCdt == 0 }">
							<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/socketNum.png"></li>
							<li class="iconExplain2">디저트 직접 만들어요</li>
						</c:if>
						<c:if test="${cafe.terrasCdt == 0 }">
							<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/terras.png"></li>
							<li class="iconExplain2">루프탑/테라스 있어요</li>
						</c:if>
						<c:if test="${cafe.reservationCdt == 0 }">
							<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/reservation.png"></li>
							<li class="iconExplain2">예약룸 있어요</li>
						</c:if>
						<c:if test="${cafe.wondooBuyCdt == 0 }">
							<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/coffeeBeans.png"></li>
							<li class="iconExplain2">원두 구매 가능해요</li>
						</c:if>
						<c:if test="${cafe.bookCdt == 0 }">
							<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/books.png"></li>
							<li class="iconExplain2">도서를 보유하고 있어요</li>
						</c:if>
						<c:if test="${cafe.beerCdt == 0 }">
							<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/alcohol.png"></li>
							<li class="iconExplain2">술 판매해요</li>
						</c:if>
						<c:if test="${cafe.goodsCdt == 0 }">
							<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/goods.png"></li>
							<li class="iconExplain2">굿즈를 판매해요</li>
						</c:if>
						
					</ul>
				</div>
			</div>
			
			<!-- 카페 편의정보 관련 -->
			<div class="cafeInfo" id="cafeInfo4"">
				<span style="font-size: 20px;font-weight: bold;">편의 정보</span><a class="upAndDown" href="#"></a>
			</div>
			<div class="closeInfo" id="cafeDetail">
				<div>
					<ul id="detailInfo">
						<c:if test="${cafe.wifiCdt == 0 }">
							<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/wifi.png"></li>
							<li class="iconExplain2">와이파이 있어요</li>
						</c:if>
						<c:if test="${cafe.puppyCdt == 0 }">
							<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/puppy.png"></li>
							<li class="iconExplain2">애견 동반 가능해요</li>
						</c:if>
						<c:if test="${cafe.reserveokCdt == 0 }">
							<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/reservation.png"></li>
							<li class="iconExplain2">예약 가능해요</li>
						</c:if>
						<c:if test="${cafe.parkingCdt == 0 }">
							<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/parking.png"></li>
							<li class="iconExplain2">주차공간 있어요</li>
						</c:if>
						<c:if test="${cafe.nokidsCdt == 0 }">
							<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/nokids.png"></li>
							<li class="iconExplain2">노키즈존이에요</li>
						</c:if>
					</ul>
				</div>
			</div>
			<div style="margin-bottom: 50px;clear: both;"></div>
			
			<!-- 카페 댓글 관련 -->
			<div>
				<div id="commentTitle">
					<span style="color: #2e75b6;">${cafe.cafeName }</span>에 대한 <span id="spointNum" style="color: #FF5722;"></span>개의 이야기가 있어요!
				</div>
				<button id="commentRegiBtn" onclick="document.getElementById('id01').style.display='block'">내 <span style="color: red; font-weight: bold; ">평점</span> 등록</button>
			</div>

			<div id="id01" class="w3-modal">
				<div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
					<div>
						<div id="commentBoxHeader">내 평점 등록</div>
					</div>
					<div class="w3-center"><br>
						<span style="color: white;" onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
						<div style="font-size: 25px;font-weight: bold;margin-bottom: 10px;">${cafe.cafeName }</div>
						<select id="starPointCheck"> 
							<option value="1">1</option> 
							<option value="2">2</option> 
							<option value="3">3</option> 
							<option value="4">4</option> 
							<option value="5">5</option> 
						</select>
						<input type="hidden" id="hiddenStarpoint">
						<div style="color: #949494;">평점을 선택해주세요.</div>
						<div style="width: 90%;border-bottom: 1px solid #ccc;margin: 0px 30px 10px;height: 20px;"></div>
					</div>
					<div style="margin: 0px 30px;font-size: 18px;margin-bottom: 15px;">${cafe.cafeName }의 키워드를 선택해주세요! <span style="color: red;font-size: 14px;">중복 선택 불가</span></div>
					<div class="w3-container">
						<div>
							<div class="themeIcon keyword changeColor" style="background-color: white;color: #b038fa;border: 2px solid;margin-left: 15px; cursor: pointer;">#데이트</div>
							<div class="themeIcon keyword changeColor" style="background-color: white;color: #528236;border: 2px solid;cursor: pointer;">#뷰</div>
							<div class="themeIcon keyword changeColor" style="background-color: white;color: #96814c;border: 2px solid;cursor: pointer;">#착한아메</div>
							<div class="themeIcon keyword changeColor" style="background-color: white;color: #f2486f;border: 2px solid;cursor: pointer;">#디저트</div>
							<div class="themeIcon keyword changeColor" style="background-color: white;color: #FFB232;border: 2px solid;cursor: pointer;">#댕댕이</div>
							<div class="themeIcon keyword changeColor" style="background-color: white;color: #0170c2;border: 2px solid;cursor: pointer;">#작업</div>
						</div>
						<input type="hidden" id="hiddenTheme">
						<div style="width: 540px;border-bottom: 1px solid #ccc;margin: 0px 15px 10px;height: 20px;"></div>
						<div class="w3-section">
							<textarea id="comment" style="margin: 0px 0px 0px 15px;width: 540px;height: 210px;"placeholder=" ${cafe.cafeName }에서 즐거우셨나요? 어떤 점이 좋았는지 이야기해주세요."></textarea>
							<div style="text-align: center;">
								<button onclick="document.getElementById('id01').style.display='none'" type="button" class="w3-button w3-text-grey w3-border"style="width: 100px;margin-right: 10px;">취소</button>
								<button class="w3-button w3-red w3-section w3-padding" id="btnStarpointAdd" style="width: 100px;">등록</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div>
				<table style="width: 900px; margin: 0px 20px;" id="spointList">
					<tr>
						<td colspan="6" style="text-align: left;border-top: 3px solid #ccc;border-bottom: 1px solid #949494;">
							<i class="fas fa-check" style="color: #ccc;"></i><span style="margin-left: 10px;margin-right: 20px;">별점순</span>
							<i class="fas fa-check" style="color: #ccc;"></i><span style="margin-left: 10px;">최신순</span>
						</td>
					</tr>
				</table>
				<div class="spointPage" style="text-align: center;">
					<ul id="pagination" class="pagination"></ul>
				</div>
				<div style="margin-bottom: 50px;clear: both;"></div>
			</div>
		</div>
	</div>
	
<script id="template" type="text/x-handlebars-template">
	{{#each list}}
	<tr class="spointBoard" data-spno="{{starPointNo}}">
		<td style="width: 120px;border-bottom: 1px solid #dadada;">
			<div class="star" id="spointComment">
				<select class="starPointWrite">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
				</select>
			</div>
		</td>
		<td style="font-weight: bold;width: 25px;text-align: left;border-bottom: 1px solid #dadada;">{{starPoint}}</td>
		<td style="width: 115px;border-bottom: 1px solid #dadada;">
			<div class="themeIcon keyword spThemeIcon" style="background-color: #f2486f;"><span>#</span>{{themeNo.themeName}}</div>
		</td>
		<td style="border-bottom: 1px solid #dadada;">{{starPointComment}}</td>
		<td style="width: 140px;border-bottom: 1px solid #dadada;">| {{dateHelper registrationDate}}</td>
		<td style="border-bottom: 1px solid #dadada;text-align: left;">
			<img src="${pageContext.request.contextPath }/resources/images/{{userNo.userGrade.userGradeImage}}" style="width: 25px;vertical-align: bottom;margin-right: 10px;">
			<span>{{userNo.nick}}</span>
			<span>({{userNo.userId}})</span>
		</td>
	</tr>
	{{/each}}
</script>

<script>
	/*---- starpoint -----------------------------------------------------------------------------------------------------*/
	var no = 1;
	Handlebars.registerHelper ("dateHelper", function(value){
		var d = new Date(value);
		var year = d.getFullYear();
		var month = d.getMonth() + 1;
		var day = d.getDate();
		return year + "/" + month + "/" + day;
	})
	
	/* 댓글 리스트 */
	function getPageList( page ){
		var cafeNo = ${cafe.cafeNo};
		
		$.ajax({
			url:"${pageContext.request.contextPath}/rest/starpoint/"+cafeNo+"/"+page,
			type:"get",
			datatype:"json",
			success:function(res){
				console.log(res);
				var starpoint = new Array();
				var backColor = new Array();
				for(var i=0;i<res.list.length;i++){
					starpoint[i] = res.list[i].starPoint;
					backColor[i] = res.list[i].themeNo.themeNo;
				}
				console.log(starpoint);
				console.log(backColor);
				
				$(".spointBoard").remove();
				var source = $("#template").html();
				var func = Handlebars.compile(source);
				$("#spointList").append(func(res));				
				
				for(var i=0;i<res.list.length;i++){
					$('.starPointWrite').eq(i).barrating({
						theme: 'fontawesome-stars', 
						initialRating: starpoint[i], 
						readonly: true
					})
				}
				
				for(var i=0;i<res.list.length;i++){
					var colorNum = backColor[i];
					console.log(colorNum);
					switch(colorNum){
					case 1:
						$('.spThemeIcon').eq(i).css("background-color","#b038fa");
						break;
					case 2:
						$('.spThemeIcon').eq(i).css("background-color","#528236");
						break;
					case 3:
						$('.spThemeIcon').eq(i).css("background-color","#96814c");
						break;
					case 4:
						$('.spThemeIcon').eq(i).css("background-color","#f2486f");
						break;
					case 5:
						$('.spThemeIcon').eq(i).css("background-color","#FFB232");
						break;
					case 6:
						$('.spThemeIcon').eq(i).css("background-color","#0170c2");
						break;
					}
				}

				var startPage = res.pageMaker.startPage;
				var endPage = res.pageMaker.endPage;
				$("#pagination").empty();
				for(var i = startPage; i <= endPage; i++){
					var $li = $("<li>");
					if(i == no) {
						$li.addClass("active");
					}
					var $a = $("<a>").html(i);
					$a.css("cursor", "pointer");
					$li.append($a);
					$("#pagination").append($li);
				}
				
				var totalCnt = res.pageMaker.totalCount;
				$("#spointNum").text(totalCnt);
			}
		})
		
		
	}
	
	/* 댓글 리스트 show */
	getPageList(1);
	
	/* 댓글 페이징 */
	$(document).on("click", "#pagination a", function(){
		no = $(this).text();
		getPageList(no);
	})
</script>
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>