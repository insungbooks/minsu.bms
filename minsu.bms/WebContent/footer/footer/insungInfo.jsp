<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>회사소개</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<style>
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

.nav-header {
	color: #909090;
}
/*/사이드바*/

/*여기서부터 main*/
body {
	padding-top: 20px;
}

#text1 {
	background-color: rgba(0, 0, 0, 0.1);
	text-color: black;
}

#imgInfo {
	position: relative;
	top: -320px;
	transition-property: all;
}

#imgInfo:hover, #imgInfo1:hover {
	opacity: 0.1;
}

#imgInfo1 {
	position: relative;
	top: -150px;
	transition-property: all;
}

.jumbotron {
	padding-top: 30px;
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
					<%
	String id = ""; 
	if(session.getAttribute("login")!=null) {		//세션값이 비어있지 않다라면
		id = (String)session.getAttribute("login"); //세션값 추출하고 저장
	}
%>
					<% if(id.equals("insung")) { %>
					<!-- 세센값의 아이디가 관리자 아이디와 같다면 밑에 코드 출력  -->
					<li class="topli"><a href="../shop/system/login/logoutProc.jsp">로그아웃</a></li>
					<li class="topli"><a href="../order/member/memberList.html">관리자페이지</a></li>
					<% }else if(!id.equals("")) { %>
					<!-- 로그인이 성공했다라면 id값에 데이터가 들어가있으므로 실행 -->
					<li class="topli"><a href="../shop/system/login/logoutProc.jsp">로그아웃</a></li>
					<li class="topli"><a>적립금 : 650점</a></li>
					<li class="topli"><a href="../guest/basket/Basket.html">장바구니</a></li>
					<li class="topli"><a href="../guest/mypage/orderList.html">마이페이지</a></li>
					<% }else { %>
					<!-- 세션값이 없다라면 실행 (로그인 안된상태) -->
					<li class="topli"><a href="../shop/system/login/login.jsp">로그인</a></li>
					<li class="topli"><a href="../guest/signUp/signUp.html">회원가입</a></li>
					<li class="topli"><a href="../guest/basket/Basket.html">장바구니</a></li>
					<li class="topli"><a href="../guest/mypage/orderList.html">마이페이지</a></li>
					<% } %>
				</ul>
			</div>
		</nav>
		<br>
		<!-- 상단 -->
		<div class="jumbotron">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<a href="../main.jsp"><img src="../img/logo.png"
							class="headlogo"></a>
					</div>
					<div class="col-md-7">
						<form action="../shop/search/searchResult.html">
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
									class="form-control" name="x" placeholder="입력하세요"> <span
									class="input-group-btn">

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
								<a href="../category/bestBook.html"><button class="dropbtn">베스트셀러</button></a>
							</div>
							<div class="dropdown">
								<a href="../category/newBook.html"><button class="dropbtn">신간도서</button></a>
							</div>
							<div class="dropdown">
								<a href="../category/saleBook.html"><button class="dropbtn">할인도서</button></a>
							</div>
							<div class="dropdown">
								<button class="dropbtn">
									국내도서 <span class="glyphicon glyphicon-chevron-down"></span>
								</button>
								<div class="dropdown-content">
									<a href="../category/domesticBook/literatureBook.html">문학</a> <a
										href="../category/domesticBook/humanitiesBook.html">인문</a> <a
										href="../category/domesticBook/referenceBook.html">참고서</a> <a
										href="../category/domesticBook/besidesBook.html">기타</a>
								</div>
							</div>
							<div class="dropdown">
								<button class="dropbtn">
									해외도서 <span class="glyphicon glyphicon-chevron-down"></span>
								</button>
								<div class="dropdown-content">
									<a href="../category/foreignBook/literatureBook.html">문학</a> <a
										href="../category/foreignBook/humanitiesBook.html">인문</a> <a
										href="../category/foreignBook/referenceBook.html">참고서</a> <a
										href="../category/domesticBook/besidesBook.html">기타</a>
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
							<li class="nav-header"><strong>인성문고</strong></li>
							<li class="active"><a href="insungInfo.jsp">회사소개</a></li>
							<li><a href="adInfo.jsp">광고안내</a></li>
							<li><a href="agreementUtilization.jsp">이용약관</a></li>
							<li><a href="individualInfo.jsp">개인정보처리방침</a></li>
							<li><a href="pictureInfo.jsp">영상정보처리방침</a></li>
							<li><a href="emailCollectBan.jsp">이메일무단복제금지</a></li>
						</ul>
					</nav>
				</div>
				<div class="col-md-10">
					<div class="row">
						<div class="col-md-12">
							<br>
							<h2>인사말 및 소개</h2>
							<hr>
						</div>
						<div class="row">
							<div class="col-md-10">
								<p>인성문고에 오신 것을 환엽합니다.</p>
								<p>
									<strong>"책 읽는 사람이 세상을 바꾼다!"</strong>
								</p>
								<p>(주)인성문고는 모든 고객들이 책을 통해 지식을 습득하고 마음의 양식을 얻으실 수 있는 지식 정보
									문화의 중심 역할을 수행하고, 급변해가는 사회 문화와 환경에 발 맞추어 고객 여러분의 소리에 능동적으로 대응하는
									고객 서비스 제일의 회사가 되기 위해 항상 노력하겠습니다.</p>
								<ul>
									<li><strong>고객과 보다 가까이 함께하는 지식 문화공간</strong></li>
									<li><strong>증겁고 유익한 행사 및 이벤트가 함께하는 문화공간</strong></li>
									<li><strong>기업과 고객이 믿음으로 함께하는 문화공간</strong></li>
								</ul>
							</div>
							<div class="col-md-2">
								<img src="../img/insungInfo/introduction1.jpg">
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<br>
								<h2>회사 연혁</h2>
								<hr>
								<p>인성문고가 걸어온 발자취 입니다.</p>
								<p>인성문고의 설립부터 현재까지, 인성의 연혁을 소개합니다.</p>
								<dl>
									<dt>2010.08.03</dt>
									<dd>㈜인성문고 일산점 개점</dd>
									<dt>2010.08.25</dt>
									<dd>㈜인성문고 광복점 개점</dd>
									<dt>2010.12.03</dt>
									<dd>㈜인성문고 천안아산점 개점</dd>
									<dt>2010.12.10</dt>
									<dd>㈜인성문고 청량리점 개점</dd>
									<dt>2011.07.30</dt>
									<dd>㈜인성문고 목포점 개점</dd>
									<dt>2011.12.09</dt>
									<dd>㈜인성문고 김포공항점 개점</dd>
									<dt>2011.12.22</dt>
									<dd>㈜인성문고 대전점 개점</dd>
									<dt>2012.03.29</dt>
									<dd>㈜인성문고 평촌점 개점</dd>
									<dt>2012.04.20</dt>
									<dd>㈜인성문고 의정부점 개점</dd>
									<dt>2012.08.30</dt>
									<dd>㈜인성문고 여의도점 개점</dd>
									<dt>2014.11.27</dt>
									<dd>㈜인성문고 코엑스몰점 개점</dd>
									<dt>2015.09.01</dt>
									<dd>㈜인성문고 강남역점 개점</dd>
									<dt>2016.04.14</dt>
									<dd>㈜인성문고 남포점 개점</dd>
									<dt>2016.05.13</dt>
									<dd>㈜인성문고 전주점 개점</dd>
									<dt>2016.08.29</dt>
									<dd>㈜인성문고 죽전점 개점</dd>
									<dt>2016.09.05</dt>
									<dd>㈜인성문고 하남스타필드점 개점</dd>
									<dt>2016.10.10</dt>
									<dd>㈜인성문고 대구 대백점 개점</dd>
								</dl>
								<br>
								<h2>CEO 인사말</h2>
								<hr>
								<p>
									<strong>"인성문고는 좋은 책을 추천하고, 읽은 방법을 소개하여 고객이 책을 총해 꿈을
										키워하는 사회가 될 수 있도록 노력하겠습니다."</strong>
							</div>
							<div class="row">
								<div class="col-md-8">
									<br> <br>
									<p>인성문고는 지금의 성장에 안주하지 않고, 고객만족을 위해 최선을 다할 것이며,</p>
									<p>그 이름에 걸맞는 글로벌 지식문화 브랜드로 성장하여 최상의 고객가치를</p>
									<p>제공할 수 있도록 전력을 다하겠습니다.</p>
									<br>
									<p>
										<strong>인성문고를 이용하시는 모든 고객들께 다시 한 번 진심으로 감사의 말씀을 드립니다.</strong>
									</p>

								</div>
								<div class="col-md-4">
									<img src="../img/ceo.jpg"
										style="border-radius: 100%; width: 300px; height: 400px;">
									<div class="text">
										<p>인성문고 주식회사 대표이사</p>
										<p>
											<strong>이 인 석</strong>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</article>
	<!-- 바닥글 -->
	<div class="container">
		<footer>
			<div class="row">
				<ul class="footerul">
					<li class="footerli"><a href="insungInfo.jsp">회사소개</a></li>
					<li class="footerli"><a href="adInfo.jsp">광고안내</a></li>
					<li class="footerli"><a
						href="../customerCenter/customerCenter.html">고객센터</a></li>
					<li class="footerli"><a href="agreementUtilization.jsp">이용약관</a></li>
					<li class="footerli"><a href="individualInfo.jsp">개인정보처리</a></li>
					<li class="footerli"><a href="pictureInfo.jsp">영상정보관리방침</a></li>
					<li class="footerli"><a href="emailCollectBan.jsp">이메일무단복제금지</a></li>
				</ul>
			</div>
			<hr>
			<div class="row">
				<div class="col-md-3">
					<img src="../img/logo.png" class="footerlogo">
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