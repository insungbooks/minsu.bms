<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="minsu.bms.bookmanagement.domain.Book"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>책목록조회</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
.table {
	text-align: center;
}

/*여기까지*/
/*사이드바*/

/* CSS코드는 관리자나 회원이나 동일한 코드 */
.nav-sidebar { 
    width: 100%;
    padding: 8px 0; 
    border-right: 1px solid #ddd;
}
.nav-sidebar a {
    color: #333;
    transition: all 0.08s linear;
    border-radius: 4px 0 0 4px; 
}
.nav-sidebar .active a { 
    cursor: default;
    background-color: rgb(115, 215, 209); 
    color: #fff; 
    text-shadow: 1px 1px 1px #666; 
}
.nav-sidebar .active a:hover {
    background-color: rgb(115, 215, 209);   
}

/* Right-aligned sidebar */
.nav-sidebar.pull-right { 
    border-right: 0; 
    border-left: 1px solid #ddd; 
}
.nav-sidebar.pull-right a { 
    border-radius: 0 4px 4px 0; 
}

.nav-header{
	color : #909090;
}

/*//사이드바*/

/*여기서부터 main*/
body {
	padding-top: 20px;
}

#text1{
	background-color : rgba(0, 0, 0,0.1);
	text-color:black;
}
#imgInfo{
	position : relative;
	top : -320px;
	transition-property : all;
}
#imgInfo:hover,#imgInfo1:hover{
	opacity : 0.1;
}
#imgInfo1{
	position : relative;
	top : -150px;
	transition-property : all;
}
.jumbotron {
	padding-top : 30px;
	background-color: #FFFFFF; /*배경색 흰색*/
	border: 1px solid black; /*테두리선*/
	height: 180px; /*높이*/
}

.headlogo {
	width: 110px;
	height: 110px;
	margin: none;
}

a {
	text-decoration: none; /* 밑줄 없앰 */
	color: #000000; /*검정색*/
}

.topul { /*위ul*/
	padding-top: 20px; /*위에여백*/
	float: right; /*오른쪽정렬*/
	background-color: #ffffff; /*배경색 흰색*/
}

.topli { /*위li*/
	display: inline; /*한줄로표시*/
	font-size: 12px;
	font-weight: bold; /* 진하게 */
	border-left: 1px solid #666666; /* menu글씨 왼쪽옆에 "|" 표시 */
} /*위li 앞에*/
.topli:first-child {
	border-left: none;
}

.topli a { /*위li 링크*/
	margin: 0 10px 0 10px; /* 메뉴 글자 간격 */
}

.topli a:hover { /*위li*/
	color: #ff9900; /* li요소의 글자에 마우스 올렸을때 글자색 변경*/
}

.menubar { /*메뉴바색깔*/
	background-color: rgb(115, 215, 209);
}

/* 드롭다운 버튼 */
.dropbtn {
	background-color: rgb(115, 215, 209);
	padding: 17px; /*안쪽여백*/
	font-size: 13.5px; /*글씨크기*/
	border: none; /*테두리*/
	cursor: pointer; /*커서 손모양*/
	float: center; /* 가운데정렬 */
	font-weight: bold; /* 진하게 */
}

/*드롭다운 */
.dropdown {
	position: relative; /*상대적위치?*/
	display: inline-block; /*한줄로 보기*/
	padding-right: 60px; /*오른쪽 안여백*/
	padding-left: 60px; /*왼쪽 안여백*/
}

/* 드롭다운 아래 */
.dropdown-content {
	display: none; /*화면상에 아무것도 나타내지 않겠다*/
	position: absolute;
	background-color: rgb(115, 215, 209);
	min-width: 160px;
	z-index: 1;
}

/* 드롭다운 아래 링크 */
.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {
	background-color: rgb(56, 194, 188);
}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
	display: block;
}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {
	background-color: rgb(56, 194, 188);
}

article { /*본문*/
	background-color: white;
	height: 400px;
}

/* 회전판 */
.carousel {
	margin-bottom: 0;
	padding: 0 40px 30px 40px;
}

.carousel-control {
	left: -12px;
	height: 40px;
	width: 40px;
	background: none repeat scroll 0 0 #222222;
	border: 4px solid #FFFFFF;
	border-radius: 23px 23px 23px 23px;
	margin-top: 90px;
}

.carousel-control.right {
	right: -12px;
}
/* The indicators */
.carousel-indicators {
	right: 50%;
	top: auto;
	bottom: -10px;
	margin-right: -19px;
}
/* The colour of the indicators */
.carousel-indicators li {
	background: #cecece;
}

.carousel-indicators .active {
	background: #428bca;
}
/*바닥글*/
.footerul { /*바닥ul*/
	padding-top: 10px; /*위에여백*/
}

.footerli { /*바닥li*/
	display: inline-block; /*한줄로표시*/
	font-size: 12px; /*한줄로표시*/
	font-weight: bold; /* 진하게 */
	border-left: none;
	padding-right: 40px;
	padding-left: 40px;
}

footer { /*바닥글*/
	clear: both;
	background-color: #FFFFFF;
	border: 1px solid black;
}

.footerlogo { /*바닥 로고*/
	padding: 16px;
	width: 130px;
	height: 130px;
}
/*이미지*/

</style>
</head>
<body>
	<div class="container">
		<!-- 위에 고정바 -->
		<nav class="btnRight navbar-fixed-top">
			<div class="container">
				<ul class="topul">
					<li class="topli"><a href="../../main.jsp">로그아웃</a></li>
					<li class="topli"><a>적립금 : 650점</a></li>
					
					<li class="topli"><a href="../../guest/signUp/signUp.html">회원가입</a></li>
					<li class="topli"><a href="../../guest/basket/Basket.html">장바구니</a></li>
					<li class="topli"><a href="../../order/member/memberList.html">관리페이지</a></li>
				</ul>
			</div>
		</nav>
		<br>
		<!-- 상단 -->
		<div class="jumbotron">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<a href="../../main.jsp"><img src="../../img/logo.png" class="headlogo"></a>
					</div>
					<div class="col-md-7">
						<form action="../../shop/search/searchResult.html">
							<div class="input-group" class="searchBar" style="margin: 80px;">
								<div class="input-group-btn search-panel">
									<button type="button" class="btn btn-default ">
										<SELECT name=s_search style="border: none;">
											<OPTION value=ai_bookname>도서명</OPTION>
											<OPTION value=ai_writer>저자</OPTION>
											<OPTION value=ai_publisher>출판사</OPTION>
											<OPTION value=ai_category>번역자</OPTION>
											<OPTION value=ai_sequence>차례</OPTION>
										</SELECT>
									</button>

								</div>

								<input type="hidden" name="search_param" value="all"
									id="search_param"> <input type="text"
									class="form-control" name="x" placeholder="입력하세요">
								<span class="input-group-btn">

									<button class="btn btn-default" type="submit">
										<span class="glyphicon glyphicon-search"></span>
									</button>

								</span>
							</div>
						</form>
					</div>
				</div>
				<!-- 검색바 -->
			</div>
		</div>
	</div>


	<!-- 메뉴바 -->
	<div class="container">
		<div class="navbar">
			<nav class="navbar navbar-inverse">
				<div class="menubar">
					<div class="menubar collapse navbar-collapse navbar-center"
						id=myNavbar>
						<div class="#myNavbar">
							<div class="dropdown">
								<a href="../../category/bestBook.html"><button class="dropbtn">베스트셀러</button></a>
							</div>
							<div class="dropdown">
								<a href="../../category/newBook.html"><button class="dropbtn">신간도서</button></a>
							</div>
							<div class="dropdown">
								<a href="../../category/saleBook.html"><button class="dropbtn">할인도서</button></a>
							</div>
							<div class="dropdown">
								<button class="dropbtn">
									국내도서 <span class="glyphicon glyphicon-chevron-down"></span>
								</button>
								<div class="dropdown-content">
									<a href="../../category/domesticBook/literatureBook.html">문학</a> 
									<a href="../../category/domesticBook/humanitiesBook.html">인문</a> 
									<a href="../../category/domesticBook/referenceBook.html">참고서</a>
									<a href="../../category/domesticBook/besidesBook.html">기타</a>
								</div>
							</div>
							<div class="dropdown">
								<button class="dropbtn">
									해외도서 <span class="glyphicon glyphicon-chevron-down"></span>
								</button>
								<div class="dropdown-content">
									<a href="../../category/foreignBook/literatureBook.html">문학</a> 
									<a href="../../category/foreignBook/humanitiesBook.html">인문</a> 
									<a href="../../category/foreignBook/referenceBook.html">참고서</a>
									<a href="../../category/domesticBook/besidesBook.html">기타</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</nav>
		</div>
	</div>
	<!-- //메뉴바 -->
	<article>
		<div class="container">
			<div class="row">
				<div class="col-md-2">
					<nav class="nav-sidebar">
						<ul class="nav">
							<li class="nav-header"><strong> 회원관리</strong></li>
							<li><a href="../member/memberList.html">회원목록조회</a></li>
							<li class="nav-divider"></li>
							<li class="nav-header"><strong> 주문관리</strong></li>
							<li class="active"><a href="BookList.html">도서목록조회</a></li>
							<li><a href="bookAdd.html">도서 추가</a></li>
							<li class="nav-divider"></li>
							<li class="nav-header"><strong> 재고관리</strong></li>
							<li><a href="../orderManagement/orderManagement.html">
									주문관리</a></li>
						</ul>
					</nav>
				</div>
				<div class="col-md-10">
					<table class="table table-hover">
						<thead>
							<tr>
								<td></td>
								<td><strong>도서코드</strong></td>
								<td><strong>분류</strong></td>
								<td><strong>제목</strong></td>
								<td><strong>저자</strong></td>
								<td><strong>출판사</strong></td>
								<td><strong>출간일</strong></td>
								<td><strong>정가</strong></td>
								<td><strong>재고</strong></td>
								<td><strong>삭제</strong></td>
							</tr>
						</thead>
						<tbody>
							<tr>

								<td><input type="checkbox"></td>
								<td></td>
								<td></td>
								<td></td>
								<td>한강</td>
								<td>장비</td>
								<td>2007/10/30</td>
								<td>12,000</td>
								<td>100</td>
								<td>삭제</td>
								<td>수정</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>H12345</td>
								<td>이문학</td>
								<td>채식주의자</td>
								<td>한강</td>
								<td>장비</td>
								<td>2007/10/30</td>
								<td>12,000</td>
								<td>100</td>
								<td>삭제</td>
								<td>수정</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>H12345</td>
								<td>이문학</td>
								<td>채식주의자</td>
								<td>한강</td>
								<td>장비</td>
								<td>2007/10/30</td>
								<td>12,000</td>
								<td>100</td>
								<td>삭제</td>
								<td>수정</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>H12345</td>
								<td>이문학</td>
								<td>채식주의자</td>
								<td>한강</td>
								<td>장비</td>
								<td>2007/10/30</td>
								<td>12,000</td>
								<td>100</td>
								<td>삭제</td>
								<td>수정</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>H12345</td>
								<td>이문학</td>
								<td>채식주의자</td>
								<td>한강</td>
								<td>장비</td>
								<td>2007/10/30</td>
								<td>12,000</td>
								<td>100</td>
								<td>삭제</td>
								<td>수정</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>H12345</td>
								<td>이문학</td>
								<td>채식주의자</td>
								<td>한강</td>
								<td>장비</td>
								<td>2007/10/30</td>
								<td>12,000</td>
								<td>100</td>
								<td>삭제</td>
								<td>수정</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>H12345</td>
								<td>이문학</td>
								<td>채식주의자</td>
								<td>한강</td>
								<td>장비</td>
								<td>2007/10/30</td>
								<td>12,000</td>
								<td>100</td>
								<td>삭제</td>
								<td>수정</td>
							</tr>
						</tbody>
					</table>
					<div class="row">
						<div class="col-sm-3"></div>
						<div class="col-sm-6">
							<div class="text-center" id="searchPageNum">
								<!-- 페이지숫자 테두리 없는게 더 깔끔하겠지? 내일 고칠게/  그리고 이게 검색된책들 아래가 아니고, 위에 오는게 맞아? -->
								<ul class="pagination pagination-sm" id="pageNum">
									<li><a href="#" rel="prev">«</a></li>
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">6</a></li>
									<li><a href="#">7</a></li>
									<li><a href="#">8</a></li>
									<li><a href="#">9</a></li>
									<li><a href="#">10</a></li>
									<li><a href="#" rel="next">»</a></li>
								</ul>
							</div>
							<div class="col-sm-3"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</article>

	<!-- //구매화면 -->
<!-- 바닥글 -->
	<div class="container">
		<footer>
			<div class="row">
				<ul class="footerul">
					<li class="footerli"><a href="../../footer/insungInfo.jsp">회사소개</a></li>
					<li class="footerli"><a href="../../footer/adInfo.jsp">광고안내</a></li>
					<li class="footerli"><a href="../../customerCenter/frequent10.html">고객센터</a></li>
					<li class="footerli"><a href="../../footer/agreementUtilization.jsp">이용약관</a></li>
					<li class="footerli"><a href="../../footer/individualInfo.jsp">개인정보처리</a></li>
					<li class="footerli"><a href="../../footer/pictureInfo.jsp">영상정보관리방침</a></li>
					<li class="footerli"><a href="../../footer/emailCollectBan.jsp">이메일무단복제금지</a></li>
				</ul>
			</div>
			<hr>
			<div class="row">
				<div class="col-md-3">
					<img src="../../img/logo.png" class="footerlogo">
				</div>
				<div class="col-md-5">
					<h4>(주)인성문고</h4>
					<ul>
						<li>서울시 종로구 종각 soldesk</li>
						<li>사업자등록번호 : 123-45-67891</li>
						<li>대표번호 : 1544-1234(발신자부담전화)</li>
						<li>서울특별시 통신판매업신고번호 : 제 653호</li>
					</ul>
				</div>
				<div class="col-md-4">
					<h4>고객센터</h4>
					<ul>
						<li>일반문의:1234-1234</li>
						<li>월~금(09:00~18:00)</li>
						<li>토요일(09:00~13:00)</li>
						<li>일요일, 공휴일 휴무</li>
						<li>E-mail 문의:dlstjd@naver.com</li>
					</ul>
				</div>
			</div>
		</footer>
	</div>
	<!-- //바닥글 -->
</body>
</html>