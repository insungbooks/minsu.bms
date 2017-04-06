<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>영상정보처리방침</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<style>
/*영상정보처리방침*/
h3 {
	padding: 10px 0 10px 5px;
	border-bottom: 2px solid #eee;
	color: #634f34;
	font-family: '돋움', dotum;
	font-weight: bold;
}

.ftST {
	font-size: 12px;
	color: #666;
	line-height: 140%;
}

.ftST b {
	color: #634f34;
	display: inline-block;
	margin-bottom: 10px;
	background: url(/ypbooks/images/icon/blet_order.gif) no-repeat;
	height: 11px;
	padding-left: 7px;
	background-position: 0 2px;
}

.w13 {
	width: 13%;
	text-align: center;
}

#rMainContents {
	padding-left: 25px;
	cursor: default;
	line-height: 150%;
	font-size: 12px
}

#cctv {
	width: 96%;
	border: 1px solid #e5e5e5;
	margin-left: 10px;
	font-size: 12px;
}

#cctv th {
	border: 1px solid #e5e5e5;
	vertical-align: middle;
	background-color: #f5f5f5;
	cursor: default;
	color: #444;
	height: 33px;
	vertical-align: middle;
}

#cctv td {
	border: 1px solid #e5e5e5;
	vertical-align: middle;
	font-size: 12px;
	color: #666;
	height: 33px;
	text-align: center;
	text-decoration: none;
	vertical-align: middle;
}

#cctv td a {
	text-decoration: none;
	color: #666;
}

#cctv td a:hover {
	color: #FF3333;
	text-decoration: underline;
}
/*/영상정보처리방침*/

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
<body style="margin: 0; padding: 5px">
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
							<li><a href="insungInfo.jsp">회사소개</a></li>
							<li><a href="adInfo.jsp">광고안내</a></li>
							<li><a href="agreementUtilization.jsp">이용약관</a></li>
							<li><a href="individualInfo.jsp">개인정보처리방침</a></li>
							<li class="active"><a href="pictureInfo.jsp">영상정보처리방침</a></li>
							<li><a href="emailCollectBan.jsp">이메일무단복제금지</a></li>
						</ul>
					</nav>
				</div>
				<div class="col-md-10">
					<h2>영상정보관리방침</h2>
					<div style="font-size: 12px; color: #666; line-height: 140%;"
						class="ftST">
						(주)인성문고의 전 매장은 개인정보보호법등의 관계법령과 당사규정에 의거하여 다음과 같이 영상정보처리기기를<br>
						운영하고 있으며 고객 개인정보의 안전한 관리를 위하여 최선을 다하고 있습니다.<br> <br> <b
							style="color: #634f34; display: inline-block; margin-bottom: 10px; background: url(/ypbooks/images/icon/blet_order.gif) no-repeat; height: 11px; padding-left: 7px; background-position: 0 2px;">1.
							설치 근거 및 설치 목적</b><br> &nbsp;&nbsp;가. 각종 범죄의 예방<br>
						&nbsp;&nbsp;나. 고객의 안전보장<br> &nbsp;&nbsp;다. 시설물 안전관리 및 화재예방<br>
						<br> <b
							style="color: #634f34; display: inline-block; margin-bottom: 10px; background: url(/ypbooks/images/icon/blet_order.gif) no-repeat; height: 11px; padding-left: 7px; background-position: 0 2px;">2.
							설치 대수, 설치 위치 및 촬영범위</b><br> &nbsp;&nbsp;가. 설치 대수 : 주요 취약 내 천장 및
						벽면(아래 참조)<br> &nbsp;&nbsp;나. 지점별 CCTV 카메라 설치 위치 및 촬영범위<br>
						&nbsp;&nbsp;&nbsp;

						<table
							style="width: 96%; border: 1px solid #e5e5e5; margin-left: 10px; font-size: 12px;"
							id="cctv" cellpadding="0" cellspacing="0" summary="설치 위치 및 촬영범위">
							<tbody>
								<tr>
									<th
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; background-color: #f5f5f5; cursor: default; color: #444; height: 33px; vertical-align: middle;"
										class="Ctxt" rowspan="2">서울</th>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle; width: 13%"
										class="Ctxt w13">본사</td>
									<td class="Ctxt w13">종로본점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle; width: 13%"
										class="Ctxt w13">삼성 코엑스몰점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle; width: 13%"
										class="Ctxt w13">미아 현대점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle; width: 13%"
										class="Ctxt w13">김포공항 롯데점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle; width: 13%"
										class="Ctxt w13">여의도 IFC몰점</td>

								</tr>
								<tr>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle; width: 13%"
										class="Ctxt w13">강남역점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">&nbsp;</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">&nbsp;</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">&nbsp;</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">&nbsp;</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">&nbsp;</td>
								</tr>
								<tr>
									<th
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; background-color: #f5f5f5; cursor: default; color: #444; height: 33px; vertical-align: middle;"
										class="Ctxt" rowspan="2">인천<br />경기
									</th>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">인천 터미널점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">의정부 신세계점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">수원 NC점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">분당 오리점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">죽전 이마트점</td>

									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">평촌 롯데점</td>
								</tr>
								<tr>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle; width: 13%"
										class="Ctxt w13">하남 스타필드점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle; width: 13%"
										class="Ctxt w13">분당 서현점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle; width: 13%"
										class="Ctxt w13">&nbsp;</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">&nbsp;</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">&nbsp;</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">&nbsp;</td>
								</tr>
								<tr>
									<th
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; background-color: #f5f5f5; cursor: default; color: #444; height: 33px; vertical-align: middle;"
										class="Ctxt">부산<br />경남
									</th>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">울산 현대점</td>
									<!-- <td class="Ctxt"><a href="javascript:goURL('http://www.ypbooks.co.kr/helper.yp?targetpage=helper_branch_ulsandonggu')">울산동구점</a></td> -->
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">마산 롯데점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">광복 롯데점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">부산대점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">부산 남포점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">&nbsp;</td>
								</tr>
								<tr>
									<th
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; background-color: #f5f5f5; cursor: default; color: #444; height: 33px; vertical-align: middle;"
										class="Ctxt">대구<br />경북
									</th>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">대구 반월당점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">포항 남구점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">경산 이마트점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">대구 대백점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">&nbsp;</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">&nbsp;</td>
								</tr>
								<tr>
									<th
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; background-color: #f5f5f5; cursor: default; color: #444; height: 33px; vertical-align: middle;"
										class="Ctxt">광주<br />전라
									</th>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">광주 터미널점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">목포 터미널점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">전주 터미널점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">&nbsp;</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">&nbsp;</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">&nbsp;</td>
								</tr>
								<tr>
									<th
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; background-color: #f5f5f5; cursor: default; color: #444; height: 33px; vertical-align: middle;"
										class="Ctxt">충청</th>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">대전 터미널점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">청주점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">&nbsp;</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">&nbsp;</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">&nbsp;</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">&nbsp;</td>
								</tr>
							</tbody>
						</table>
						<br> <br> <b
							style="color: #634f34; display: inline-block; margin-bottom: 10px; background: url(/ypbooks/images/icon/blet_order.gif) no-repeat; height: 11px; padding-left: 7px; background-position: 0 2px;">3.
							영상정보의 관리 및 처리방법</b><br> &nbsp;&nbsp;가. 촬영시간 : 24시간 또는 매장운영시간 내<br>
						&nbsp;&nbsp;나. 보관기간 : 최소 7일~30일이내<br> &nbsp;&nbsp;다. 보관 및 확인
						장소 : 각 매장의 CCTV 전용 DVR 영상정보저장장치 <br> &nbsp;&nbsp;라. 보관기간이
						만료되면 영상정보는 안전하게 파기처리되며 이의 확인을 위하여 관리책임자에 의해 반기 1회이상의 정기적인<br>
						&nbsp;&nbsp; &nbsp;&nbsp;점검을 실시하고 있습니다. <br> <br> <b
							style="color: #634f34; display: inline-block; margin-bottom: 10px; background: url(/ypbooks/images/icon/blet_order.gif) no-repeat; height: 11px; padding-left: 7px; background-position: 0 2px;">4.
							영상정보처리기기운영자의 영상정보 확인 방법 및 장소</b><br> &nbsp;&nbsp;저장된 영상정보는 당사의
						개인정보보호책임자, 영상정보관리책임자, 기타 관리책임자(본사 인사총무주무부서장)에 의해 <br>
						&nbsp;&nbsp;직접 또는 내부 네트워크망을 이용하여 원거리에서 확인할 수 있으며 이외의 자는 영상정보 접근을
						엄격하게 통제하고 있습니다.<br> <br> <b
							style="color: #634f34; display: inline-block; margin-bottom: 10px; background: url(/ypbooks/images/icon/blet_order.gif) no-repeat; height: 11px; padding-left: 7px; background-position: 0 2px;">5.
							정보주체(고객)의 영상정보 열람등 요구에 대한 조치</b><br> &nbsp;&nbsp;가. 열람 절차<br>
						&nbsp;&nbsp;&nbsp;&nbsp;매장 관리책임자 열람 청구 -> 총괄 관리책임자(본사)승인(검토), 필요시
						관계기관 및 인사총무주무부서 협의<br> &nbsp;&nbsp;&nbsp;&nbsp;->최종승인 후 해당
						매장에서 직접 열람<br> &nbsp;&nbsp;&nbsp;&nbsp;단, 영상정보의 사본의 유출은 관계법령
						및 당사 규정에서 정하는 바에 의해 제한될 수 있습니다.<br> &nbsp;&nbsp;나. 영상정보의
						보관기간이 만료되어 파기되었거나, 관계법령 및 당사규정에서 정한 정당한 사유가 아닐 경우에는 열람 요청을 <br>
						&nbsp;&nbsp;&nbsp;&nbsp;거절 할 수 있거나 열람의 범위가 축소될 수 있습니다.<br>
						&nbsp;&nbsp; &nbsp;&nbsp;이 경우 10일 이내 정보주체에게 이의 사실을 통지토록 하겠습니다.<br>
						<br> <b
							style="color: #634f34; display: inline-block; margin-bottom: 10px; background: url(/ypbooks/images/icon/blet_order.gif) no-repeat; height: 11px; padding-left: 7px; background-position: 0 2px;">6.
							영상정보 보호를 위한 안전 조치</b><br> &nbsp;&nbsp;가. 정기적인 관리실태 점검 및 보완(반기
						1회)<br> &nbsp;&nbsp;나. 개인 정보보호 위원회의 개최를 통한 고객정보의 안전한 관리방안
						모색(반기 1회)<br> &nbsp;&nbsp;다. DVR 영상정보저장장치의 백신프로그램 설치 및 지속적이
						성능 향상(수시)<br> &nbsp;&nbsp;라. 개인정보 보호책임자 및 영상정보관리책임자, 기타관리책임자에
						의한 엄격한 관리통제(수시)<br> <br> <b
							style="color: #634f34; display: inline-block; margin-bottom: 10px; background: url(/ypbooks/images/icon/blet_order.gif) no-repeat; height: 11px; padding-left: 7px; background-position: 0 2px;">7.
							관리부서 / 책임자</b><br> &nbsp;&nbsp;가. 영상정보보호책임자 <br>
						&nbsp;&nbsp;&nbsp;&nbsp;정 - (주)인성문고 인사총무팀장 이인석(12-1234-1234)<br>
						&nbsp;&nbsp;&nbsp;&nbsp;부 - (주)인성문고 각 지점장<br> <br>
						<table
							style="width: 96%; border: 1px solid #e5e5e5; margin-left: 10px; font-size: 12px;"
							id="cctv" cellpadding="0" cellspacing="0" summary="책임자">
							<thead>
								<tr>
									<th
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; background-color: #f5f5f5; cursor: default; color: #444; height: 33px; vertical-align: middle;"
										class="Ctxt">지점명</th>
									<th
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; background-color: #f5f5f5; cursor: default; color: #444; height: 33px; vertical-align: middle;"
										class="Ctxt">점장/팀장</th>
									<th
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; background-color: #f5f5f5; cursor: default; color: #444; height: 33px; vertical-align: middle;"
										width="120" class="Ctxt">연락처</th>

									<th
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; background-color: #f5f5f5; cursor: default; color: #444; height: 33px; vertical-align: middle;"
										class="Ctxt">지점명</th>
									<th
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; background-color: #f5f5f5; cursor: default; color: #444; height: 33px; vertical-align: middle;"
										class="Ctxt">점장/팀장</th>
									<th
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; background-color: #f5f5f5; cursor: default; color: #444; height: 33px; vertical-align: middle;"
										width="120" class="Ctxt">연락처</th>
								</tr>
							</thead>
							<tbody>

								<tr>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">종로본점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">지점장</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">15-546-456</td>

									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">인천 터미널점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">지점장</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">15-546-457</td>
								</tr>
								<tr>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">분당 오리점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">지점장</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">15-546-458</td>

									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">광주 터미널점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">지점장</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">15-546-459</td>
								</tr>
								<tr>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">대구 반월당점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">지점장</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">15-546-460</td>


									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">수원 NC점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">지점장</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">15-546-461</td>
								</tr>
								<tr>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">부산대점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">지점장</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">15-546-462</td>

									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">포항 남구점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">지점장</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">15-546-463</td>
								</tr>
								<tr>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">목포 터미널점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">지점장</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">15-546-464</td>

									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">대전 터미널점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">지점장</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">15-546-465</td>
								</tr>

								<tr>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">여의도 IFC몰점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">지점장</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">15-546-466</td>

									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">삼성 코엑스몰점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">지점장</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">15-546-467</td>
								</tr>

								<tr>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">강남역점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">지점장</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">15-546-468</td>


									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">부산 남포점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">지점장</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">15-546-469</td>
								</tr>
								<tr>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">전주 터미널점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">지점장</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">15-546-470</td>

									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">울산 현대점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">지점장</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">15-546-471</td>
								</tr>
								<tr>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">미아 현대점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">지점장</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">15-546-472</td>

									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">마산 롯데점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">지점장</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">15-546-473</td>
								</tr>
								<tr>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">광복 롯데점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">지점장</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">15-546-474</td>

									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">김포공항 롯데점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">지점장</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">15-546-475</td>
								</tr>
								<tr>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">평촌 롯데점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">지점장</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">15-546-476</td>

									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">의정부 신세계점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">지점장</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">15-546-477</td>
								</tr>
								<tr>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">경산 이마트점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">지점장</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">15-546-478</td>

									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">청주점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">지점장</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">15-546-479</td>
								</tr>
								<tr>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">죽전 이마트점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">지점장</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">15-546-480</td>

									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">하남 스타필드점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">지점장</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">15-546-481</td>
								</tr>
								<tr>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">분당 서현점</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">지점장</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">15-546-482</td>

									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">&nbsp;</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">&nbsp;</td>
									<td
										style="text-align: center; border: 1px solid #e5e5e5; vertical-align: middle; font-size: 12px; color: #666; height: 33px; text-align: center; text-decoration: none; vertical-align: middle;"
										class="Ctxt">&nbsp;</td>
								</tr>
							</tbody>
						</table>
						<br> &nbsp;&nbsp;나. 기타 관리책임자 : (주)인성문고 인사총무팀장 이인석
						(12-1234-1234) <br>
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
					<li class="footerli"><a href="customerCenter.html">고객센터</a></li>
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