<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>개인정보처리안내</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<style>
.agreeUtil {
	border: 1px solid black;
	width: 950px;
	height: 600px;
	overflow: scroll;
}

table {
	border: 1px solid black;
}

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
							<li><a href="insungInfo.jsp">회사소개</a></li>
							<li><a href="adInfo.jsp">광고안내</a></li>
							<li><a href="agreementUtilization.jsp">이용약관</a></li>
							<li class="active"><a href="individualInfo.jsp">개인정보처리방침</a></li>
							<li><a href="pictureInfo.jsp">영상정보처리방침</a></li>
							<li><a href="emailCollectBan.jsp">이메일무단복제금지</a></li>
						</ul>
					</nav>
				</div>
				<div class="col-md-10">
					<h2>개인정보처리안내</h2>
					<hr>
					<div class="agreeUtil">
						<h4>1. 수집하는 개인정보의 항목 및 수집방법</h4>

						<h5>1) 수집하는 개인정보의 항목</h5>
						<p>① 회사는 회원가입, 원활한 고객상담, 각종 서비스의 제공을 위해 최초 회원가입 당시 아래와 같은
							개인정보를 수집하고 있습니다.</p>
						<br /> <strong>&lt;필수 수집 항목&gt;</strong><br /> <strong>가.
							간편인증 회원</strong><br />
						<table>
							<caption>수집하는 개인정보의 필수 수집 항목 - 간편인증회원</caption>
							<colgroup>
								<col width="9%" />
								<col width="7%" />
								<col width="*" />
								<col width="20%" />
								<col width="17%" />
							</colgroup>
							<tr>
								<th scope="col" class="first" colspan="2">회원유형</th>
								<th scope="col">필수 수집 항목</th>
								<th scope="col">이용목적</th>
								<th scope="col">보유 및 이용기간</th>
							</tr>
							<tr>
								<td rowspan="2">일반</td>
								<td>온라인</td>
								<td>성명, 성별, 생년월일, 아이디, 비밀번호, 이메일, 연락처(휴대폰or전화번호)</td>
								<td rowspan="2">회원관리,<br />추천서비스제공
								</td>
								<td rowspan="4">회원탈퇴시까지<br />(단, 관계법령에 따름)
								</td>
							</tr>
							<tr>
								<td>영업점</td>
								<td>성명, 성별, 생년월일, 휴대폰번호</td>
							</tr>
							<tr>
								<td rowspan="2">어린이/학생</td>
								<td>온라인</td>
								<td>성명, 성별, 생년월일, 아이디, 비밀번호, 이메일,<br />연락처(휴대폰or전화번호),
									법정대리인 정보
								</td>
								<td rowspan="2">회원관리,<br />법정대리인동의여부,<br />추천서비스제공
								</td>
							</tr>
							<tr>
								<td>영업점</td>
								<td>성명, 성별, 생년월일, 휴대폰번호, 법정대리인 정보</td>
							</tr>
						</table>
						<br /> <strong>나. 본인인증 회원</strong><br />
						<table>
							<caption>수집하는 개인정보의 필수 수집 항목 - 본인인증회원</caption>
							<colgroup>
								<col width="13%" />
								<col width="*" />
								<col width="20%" />
								<col width="17%" />
							</colgroup>
							<tr>
								<th scope="col">회원유형</th>
								<th scope="col">필수 수집 항목</th>
								<th scope="col">이용목적</th>
								<th scope="col">보유 및 이용기간</th>
							</tr>
							<tr>
								<td>일반</td>
								<td>본인확인기관을 통해 받은 식별정보, 성명, 성별, 생년월일,<br />아이디, 비밀번호,
									연락처(휴대폰 or 전화번호), 이메일
								</td>
								<td>본인확인, 회원관리,<br />추천서비스제공
								</td>
								<td rowspan="6">회원탈퇴시까지<br />(단, 관계법령에 따름)
								</td>
							</tr>
							<tr>
								<td>어린이/학생</td>
								<td>본인확인기관을 통해 받은 식별정보, 성명, 성별, 생년월일,<br />아이디, 비밀번호,
									연락처(휴대폰 or 전화번호), 이메일,<br />법정대리인 정보
								</td>
								<td>본인확인, 회원관리,<br />법정대리인동의여부,<br />추천서비스제공
								</td>
							</tr>
							<tr>
								<td>기업/단체</td>
								<td>상호명, 사업자등록번호, 담당자명, 아이디, 비밀번호,<br /> 연락처(휴대폰 or 전화번호),
									이메일
								</td>
								<td>사업자 회원 서비스 제공</td>
							</tr>
							<tr>
								<td>해외거주<br />외국인
								</td>
								<td>성명, 성별, 생년월일, 아이디, 비밀번호, 이메일</td>
								<td>본인확인, 회원관리,<br />추천서비스제공
								</td>
							</tr>
							<tr>
								<td>국내거주<br />외국인
								</td>
								<td>성명, 외국인등록번호, 성별, 생년월일, 이메일</td>
								<td>본인확인, 회원관리,<br />추천서비스제공
								</td>
							</tr>
						</table>
						<br /> <strong>&lt;선택수집 항목&gt;</strong><br /> <strong>가.
							간편인증</strong><br />
						<table>
							<caption>수집하는 개인정보의 필수 수집 항목 - 간편인증</caption>
							<colgroup>
								<col width="9%" />
								<col width="7%" />
								<col width="*" />
								<col width="20%" />
								<col width="17%" />
							</colgroup>
							<tr>
								<th scope="col" colspan="2">회원유형</th>
								<th scope="col">선택 수집 항목</th>
								<th scope="col">이용목적</th>
								<th scope="col">보유 및 이용기간</th>
							</tr>
							<tr>
								<td rowspan="2">일반</td>
								<td>온라인</td>
								<td>주소(자택or직장), 관심분야, 결혼여부, 결혼기념일, 수신여부(SMS,이메일)</td>
								<td rowspan="4">추천서비스제공,<br />회원특성에 따른<br />서비스 이용 통계
								</td>
								<td rowspan="4">회원탈퇴시까지<br />(단, 관계법령에 따름)
								</td>
							</tr>
							<tr>
								<td>영업점</td>
								<td>이메일, 수신여부(SMS, 이메일), 아이디, 비밀번호</td>
							</tr>
							<tr>
								<td rowspan="2">어린이/학생</td>
								<td>온라인</td>
								<td>주소(자택or직장), 관심분야, 수신여부(SMS,이메일)</td>
							</tr>
							<tr>
								<td>영업점</td>
								<td>이메일, 수신여부(SMS, 이메일), 아이디, 비밀번호</td>
							</tr>
						</table>
						<br /> <strong>나. 본인인증</strong><br />
						<table>
							<caption>수집하는 개인정보의 선택 수집 항목 - 본인인증</caption>
							<colgroup>
								<col width="13%" />
								<col width="*" />
								<col width="20%" />
								<col width="17%" />
							</colgroup>
							<tr>
								<th scope="col">회원유형</th>
								<th scope="col">선택 수집 항목</th>
								<th scope="col">이용목적</th>
								<th scope="col">보유 및 이용기간</th>
							</tr>
							<tr>
								<td>일반</td>
								<td>주소(자택 or 직장), 관심분야,결혼여부, 결혼기념일, 수신여부(SMS,이메일)</td>
								<td rowspan="5">추천서비스제공,<br />회원특성에 따른<br />서비스 이용 통계
								</td>
								<td rowspan="6">회원탈퇴시까지<br />(단, 관계법령에 따름)
								</td>
							</tr>
							<tr>
								<td>어린이/학생</td>
								<td>주소(자택 or 직장), 관심분야, 수신여부(SMS,이메일)</td>
							</tr>
							<tr>
								<td>기업/단체</td>
								<td>주소(자택 or 직장), 관심분야, 수신여부(SMS,이메일)</td>
							</tr>
							<tr>
								<td>해외거주<br />외국인
								</td>
								<td>주소(자택 or 직장), 관심분야, 결혼여부, 결혼기념일, 이메일 수신여부</td>
							</tr>
							<tr>
								<td>국내거주<br />외국인
								</td>
								<td>주소(자택 or 직장), 관심분야, 결혼여부, 결혼기념일, 이메일 수신여부</td>
							</tr>
						</table>
						<br /> <strong>&lt;비회원 주문시&gt;</strong><br />
						<table>
							<caption>수집하는 개인정보의 필수 수집 항목 - 간편인증</caption>
							<colgroup>
								<col width="13%" />
								<col width="*" />
								<col width="20%" />
								<col width="17%" />
							</colgroup>
							<tr>
								<th scope="col">구분</th>
								<th scope="col">선택 수집 항목</th>
								<th scope="col">이용목적</th>
								<th scope="col">보유 및 이용기간</th>
							</tr>
							<tr>
								<td>필수항목</td>
								<td>주문자정보(이름, 연락처, SMS수신여부, 이메일, 주문 비밀번호),<br />배송지정보(배송방법,
									배송주소, 수신자 이름, 휴대폰번호, 영수증)
								</td>
								<td rowspan="2">상품배송을 위한<br />배송지 확인
								</td>
								<td rowspan="2">관계법령에<br />따름
								</td>
							</tr>
							<tr>
								<td>선택항목</td>
								<td>주문자 연락처, 수신자명, 수신자 연락처(수신자 다를 시)</td>
							</tr>
						</table>
						<br />


						<p>② 서비스 이용과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다. - IP
							Address, 쿠키, 방문 일시, OS종류, 브라우져 종류, 서비스 이용 기록, 불량 이용 기록, 위치정보(매장
							검색 위치, 배송지 검색위치, 모바일 실행위치, 모바일 구매완료 위치) - 모바일 eBook 서비스 이용 시 :
							단말기 모델, 이동통신사 정보, 하드웨어 ID, 단말기 OS 종류, 모델종류</p>

						<p>③ 부가 서비스 및 맞춤식 서비스 이용 또는 이벤트 응모 과정에서 해당 서비스의 이용자에 한해서만 아래와
							같은 정보들이 수집될 수 있습니다. - 개인정보 추가 수집에 대해 동의를 받는 경우</p>

						<p>④ 유료 서비스 이용 과정에서 아래와 같은 결제 정보들이 수집될 수 있습니다 - 신용카드 결제시 :
							카드사, 카드번호, 비밀번호, CVC - 휴대전화 결제시 : 휴대폰번호, 가입통신사, 주민등록번호 앞7자리,
							결제승인번호, 이메일 주소 - 계좌이체시 : 은행(증권사)명, 주민등록번호, 계좌번호, 계좌비밀번호, 보안수단
							일련번호, 보안카드번호 - 상품권 이용시 : 상품권 번호 - 환불시 : 환불계좌정보(은행명, 계좌번호, 예금주명)</p>

						<h5>2) 개인정보 수집 방법</h5>
						<p>① 홈페이지(회원가입, 게시판), 서면양식을 통한 회원가입 ② 회원정보수정, 제휴사로부터의 제공,
							이벤트응모 ③ 상담(전화, 이메일), 고객센터, Q&A, 배송요청, 비회원구매 ④ 생성정보 수집 툴을 통한 수집</p>


						<h4>2. 개인정보의 수집 및 이용목적</h4>

						<p>회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다. 이용자가 제공한 모든 정보는 하기 목적에 필요한
							용도 이외로는 사용되지 않으며, 이용 목적이 변경될 시에는 사전동의를 구할 것입니다.</p>

						<h5>1) 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산</h5>
						<p>
							① 컨텐츠 제공, 특정 맞춤 서비스 제공<br /> ② 물품배송 또는 청구서 등 발송<br /> ③ 금융거래 본인
							인증 및 금융 서비스<br /> ④ 구매 및 요금 결제, 요금추심 등
						</p>

						<h5>2) 회원관리</h5>
						<p>
							① 회원제 서비스 이용 및 제한적 본인 확인제에 따른 본인확인, 개인 식별<br /> ② 불량회원의 부정 이용방지와
							비인가 사용방지<br /> ③ 가입의사 확인, 가입 및 가입횟수 제한<br /> ④ 만14세 미만 아동 개인정보
							수집 시 법정 대리인 동의여부, 추후 법정 대리인 본인확인<br /> ⑤ 분쟁 조정을 위한 기록보존, 불만처리 등
							민원처리, 고지사항 전달
						</p>

						<h5>3) 신규 서비스 개발 및 마케팅&middot;광고에의 활용</h5>
						<p>
							① 신규 서비스 개발 및 맞춤 서비스 제공<br /> ② 통계학적 특성에 따른 서비스 제공 및 광고 게재, 서비스의
							유효성 확인<br /> ③ 이벤트 및 광고성 정보 제공 및 참여기회 제공<br /> ④ 접속빈도 파악 등에 대한
							통계
						</p>


						<h4>3. 개인정보의 이용 및 제3자 제공</h4>

						<p>
							인성문고는 이용자의 사전동의 없이 개인정보를 외부에 제공하지 않습니다.<br /> 단, 아래의 내용에 따라 제공이
							필요한 경우는 제공할 수 있으며 이용자는 제공을 거부하실 수 있는 권리가 있으나 거부 시에는 제공하는 혜택에 제한이
							있을 수 있습니다.<br /> 1) 이용자가 사전에 동의한 경우<br /> - 인성문고 계열사에서 통합회원 가입,
							통합 ID발급, 통합회원 등급 산정을 위해 기본정보 제공<br />
						<table>
							<caption>인성문고 계열사에 제공되는 개인정보</caption>
							<colgroup>
								<col width="15%" />
								<col width="15%" />
								<col width="*" />
								<col width="15%" />
							</colgroup>
							<tr>
								<th scope="col">제공받는자</th>
								<th scope="col">제공목적</th>
								<th scope="col">제공항목</th>
								<th scope="col">보유 및 이용기간</th>
							</tr>
							<tr>
								<td>인성핫트랙스</td>
								<td rowspan="2">통합멤버십 서비스 제공</td>
								<td>성명, 회원번호, 생년월일, 최초가입일, 가입점, 아이디, 이메일, 주소, 휴대폰번호, 전화번호,<br />성별,
									회원등급, 핫트랙스등급, 수신여부(SMS, 이메일),<br />포인트내역(통합포인트, 인성캐쉬, 마일리지)
								</td>
								<td rowspan="2">회원탈퇴 시 까지<br /> (단, 관계법령에 따름)
								</td>
							</tr>
							<tr>
								<td>인성라이프<br />플래닛생명보험㈜
								</td>
								<td>성명, 성별, 생년월일, 휴대폰번호, 회원번호, 이메일, 수신여부(SMS, 이메일),<br />본인확인을
									위한 식별정보(본인인증시), 아이디
								</td>
							</tr>
						</table>
						<br /> 2) 서비스의 제공에 관한 계약의 이행을 위하여 필요한 개인정보로서 경제적/기술적인 사유로 통상의 동의를
						받는 것이 현저히 곤란한 경우<br /> 3) 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에
						따라 수사기관의 요구가 있는 경우<br /> 4) 제휴사의 서비스를 이용하기 위해서 개인정보 제공에 직접 동의를 한
						경우<br /> <br />
						<table>
							<caption>인성문고 계열사에 제공되는 개인정보</caption>
							<colgroup>
								<col width="15%" />
								<col width="15%" />
								<col width="*" />
								<col width="15%" />
							</colgroup>
							<tr>
								<th scope="col">제공받는자</th>
								<th scope="col">제공목적</th>
								<th scope="col">제공항목</th>
								<th scope="col">보유 및 이용기간</th>
							</tr>
							<tr>
								<td>KB국민카드, 롯데카드,<br />신한카드, 엠콤,<br />㈜카카오, SK플래닛
								</td>
								<td rowspan="2">멤버십 가입업무</td>
								<td>이름, 생년월일, 성별, 휴대폰번호, 본인확인기관을 통해 받은 식별정보</td>
								<td rowspan="3">회원탈퇴 시 까지<br /> (단, 관계법령에 따름)
								</td>
							</tr>
							<tr>
								<td>네이버</td>
								<td>이름, 생년월일, 성별, 이메일</td>
							</tr>
							<tr>
								<td>인성라이프<br />플래닛생명보험㈜
								</td>
								<td>통합포인트 적립</td>
								<td>성명, 성별, 생년월일, 휴대폰번호, 회원번호, 수신여부(SMS, 이메일),<br />본인 확인을
									위한 식별정보 (본인 인증시), 아이디
								</td>
							</tr>
						</table>
						<br />

						<h4>4. 개인정보의 처리위탁</h4>

						<p>
							회사는 서비스 제공을 위하여 필요한 업무 중 일부를 외부업체에 위탁하고 있으며, 관계법령에 따라 위탁 받은 업체가
							개인정보를 안전하게 취급하도록 필요한 사항들을 규정하고 관리&middot;감독 하고 있습니다.<br />
						<table>
							<caption>개인정보의 처리위탁</caption>
							<colgroup>
								<col width="*" />
								<col width="37%" />
								<col width="15%" />
							</colgroup>
							<tr>
								<th>수탁업체</th>
								<th>위탁 업무</th>
								<th>보유 및 이용기간</th>
							</tr>

							<tr>
								<td>한진택배, 우체국택배, 페덱스, CVSnet, 인성핫트랙스, BGF포스트</td>
								<td>상품배송업무</td>
								<td rowspan="11">회원탈퇴 시 혹은<br /> 위탁 계약 종료시
								</td>
							</tr>
							<tr>
								<td>(주)메쉬코리아</td>
								<td>바로드림 퀵서비스 배송업무</td>
							</tr>
							<tr>
								<td>인성핫트랙스, 인터코리아 맨파워시스템 (재위탁)</td>
								<td>카운터 및 고객응대 업무</td>
							</tr>
							<tr>
								<td>이니시스, LGU+, 다날, 나이스, 금융결제원, JTNET, KICC</td>
								<td>서비스 요금 정산</td>
							</tr>
							<tr>
								<td>NICE서울신용평가정보, 한국모바일인증(주)</td>
								<td>실명/본인인증, 아이핀인증</td>
							</tr>
							<tr>
								<td>인성문고 교내서점(서울대)</td>
								<td>상품판매 및 멤버십 가입업무</td>
							</tr>
							<tr>
								<td>(주)퍼스트CNS</td>
								<td>회원카드발급</td>
							</tr>
							<tr>
								<td>(주)씽크풀</td>
								<td>로그인도용방지서비스(안심로그인)</td>
							</tr>
							<tr>
								<td>세종텔레콤</td>
								<td>안심번호 서비스 제공</td>
							</tr>
							<tr>
								<td>주식회사 북잼</td>
								<td>인성코믹스 및 북잼주니어 운영업무</td>
							</tr>
							<tr>
								<td>비즈톡(주)</td>
								<td>카카오톡 알림톡 발송 업무</td>
							</tr>

						</table>
						<br />

						<h4>5. 개인정보의 보유 및 이용기간</h4>

						<p>이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체없이 파기합니다. 단, 다음의
							정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.</p>
						<h5>1) 회사 내부 방침에 의한 정보보유 사유</h5>
						<p>
							- 보존 항목 : 이름, 생년월일, 성별, 아이디(ID), 자택 전화번호, 자택 주소, 휴대전화번호, 본인 확인기관을
							통해 받은 식별정보<br /> - 보존 근거 : 서비스 이용의 혼선 방지, 불법적 사용자에 대한 관련 기관 수사
							협조<br /> - 보존 기간 : 1년
						</p>
						<h5>2) 관련법령에 의한 정보보유 사유</h5>
						<p>
							상법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 관계법령에서
							정한 일정한 기간 동안 회원정보를 보관합니다. 이 경우 회사는 보관하는 정보를 그 보관의 목적으로만 이용하며
							보존기간은 아래와 같습니다.<br /> ① 계약 또는 청약철회 등에 관한 기록<br /> - 보존 근거 :
							전자상거래 등에서의 소비자보호에 관한 법률<br /> - 보존 기간 : 5년 <br /> ② 대금결제 및 재화
							등의 공급에 관한 기록<br /> - 보존 근거 : 전자상거래 등에서의 소비자보호에 관한 법률<br /> - 보존
							기간 : 5년 <br /> ③ 소비자의 불만 또는 분쟁처리에 관한 기록 <br /> - 보존 근거 : 전자상거래
							등에서의 소비자보호에 관한 법률<br /> - 보존 기간 : 3년 <br /> ④ 본인 확인에 관한 기록<br />
							- 보존 근거 : 정보통신망 이용촉진 및 정보보호 등에 관한 법률<br /> - 보존 기간 : 6개월<br />
							⑤ 웹사이트 방문기록<br /> - 보존 근거 : 통신비밀보호법<br /> - 보존 기간 : 3개월<br />
							⑥ 개인위치정보에 관한 기록<br /> - 보존 근거 : 위치정보의 보호 및 이용 등에 관한 법률<br /> -
							보존 기간 : 1년
						</p>


						<h4>6. 개인정보의 파기절차 및 방법</h4>

						<p>이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다. 회사의
							개인정보 파기절차 및 방법은 다음과 같습니다.</p>

						<h5>1) 파기절차</h5>
						<p>
							① 이용자가 회원가입 등을 위해 입력한 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 보관장소)
							기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조)일정 기간 저장된 후 파기됩니다.<br /> ②
							동 개인정보는 법률에 의한 경우가 아니고서는 보유되는 이외의 다른 목적으로 이용되지 않습니다.<br /> ③
							보존기간이 경과한 정보 관련 문서(대외비는 부서보안관리자, 비밀은 정보보호관리자)는 해당관리자의 승인을 받아
							폐기합니다.
						</p>

						<h5>2) 파기방법</h5>
						<p>
							① 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.<br /> ② 전자적 파일 형태로 저장된
							개인정보는 기록을 재생할 수 없는 기술적 방법(재사용 시 덮어 쓰기, 로우(low) 포맷 등)을 사용하여 삭제합니다.
						</p>

						<h5>3) 개인정보 유효기간제 도입</h5>
						<p>
							① 당사는 1년 이상 서비스 미이용자의 개인정보보호를 위하여 해당 회원의 개인정보를 다른 이용자의 개인정보와 분리하여
							저장 관리합니다.<br /> ② 미이용의 기간은 최종 로그인 일자 및 인성문고 포인트 사용, 적립, 구매의 이력으로
							산정하며, 고객의 복원 및 회원탈퇴 요청이 없을 경우 서비스 미이용자에 대하여
							분리&middot;저장&middot;관리 합니다.<br /> ③ 당사는 미이용자의 개인정보 분리&middot;저장
							시점 도래 1개월 전에 이메일 등을 통해 해당 이용자에게 관련 내용을 공지합니다.
						</p>


						<h4>7. 이용자 및 법정대리인의 권리와 그 행사방법</h4>

						<p>1) 이용자 및 법정대리인은 회사에 대해 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수
							있습니다.</p>
						<p>
							① 개인정보 열람요구<br /> ② 오류 등이 있을 경우 정정 요구<br /> ③ 삭제요구<br /> ④
							처리정지 요구
						</p>
						<p>
							2) 제1항에 따른 권리 행사는 인터넷인성문고 고객센터 내 개인정보(열람, 정정&middot;삭제, 처리정지)
							요구서에 따라 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며, 회사는 이에 대해 지체없이
							조치하겠습니다.<br /> 3) 이용자 및 법정대리인이 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에
							회사는 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다.<br /> 4) 제1항에 따른
							권리 행사는 이용자의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 위임장을 작성하여
							제출하셔야 합니다.<br /> 5) 회사는 이용자 혹은 법정 대리인의 요청에 의해 해지 또는 삭제된 개인정보는
							"5. 개인정보의 보유 및 이용기간"에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록
							처리하고 있습니다.
						</p>


						<h4>8. 개인정보 자동 수집 장치의 설치/운영 및 거부에 관한 사항</h4>

						<p>회사는 이용자들에게 특화된 맞춤서비스를 제공하기 위해서 이용자들의 정보를 저장하고 수시로 불러오는
							'쿠키(cookie)'를 사용합니다. 쿠키는 웹사이트를 운영하는데 이용되는 서버(HTTP)가 이용자의 컴퓨터
							브라우저에게 보내는 소량의 정보이며 이용자들의 PC 컴퓨터내의 하드디스크에 저장되기도 합니다.</p>

						<h5>1) 쿠키의 사용 목적</h5>
						<p>이용자들이 방문한 인성문고의 각 서비스와 웹 사이트들에 대한 방문 및 이용형태, 인기 검색어, 보안접속
							여부, 뉴스편집, 이용자 규모 등을 파악하여 이용자에게 최적화된 정보 제공을 위하여 사용합니다.</p>
						<h5>2) 쿠키의 설치&middot;운영 및 거부</h5>
						<p>
							① 이용자는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서, 이용자는 웹브라우저에서 옵션을 설정함으로써 모든
							쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다.<br />
							② 설정방법 예(인터넷 익스플로어 경우 : 웹 브라우저 상단의 도구 > 인터넷 옵션 > 개인정보)<br /> ③
							다만, 쿠키의 저장을 거부할 경우에는 로그인이 필요한 일부 서비스는 이용에 어려움이 있을 수 있습니다.
						</p>


						<h4>9. 개인정보의 기술적/관리적 보호 대책</h4>

						<p>회사는 이용자들의 개인정보를 처리함에 있어 개인정보가 분실, 도난, 누출, 변조 또는 훼손되지 않도록
							안전성 확보를 위하여 다음과 같은 기술적/관리적 대책을 강구하고 있습니다.</p>

						<h5>1) 비밀번호 암호화</h5>
						<p>인성문고 회원아이디(ID)의 비밀번호는 암호화 되어 저장 및 관리되고 있어 본인만이 알고 있으며,
							개인정보의 확인 및 변경도 비밀번호를 알고 있는 본인에 의해서만 가능합니다.</p>

						<h5>2) 해킹 등에 대비한 대책</h5>
						<p>
							회사는 해킹이나 컴퓨터 바이러스 등에 의해 회원의 개인정보가 유출되거나 훼손되는 것을 막기 위해 최선을 다하고
							있습니다.<br /> 개인정보의 훼손에 대비해서 자료를 수시로 백업하고 있고, 최신 백신프로그램을 이용하여
							이용자들의 개인정보나 자료가 누출되거나 손상되지 않도록 방지하고 있으며, 암호화 통신 등을 통하여 네트워크상에서
							개인정보를 안전하게 전송할 수 있도록 하고 있습니다.<br /> 그리고 침입차단시스템을 이용하여 외부로부터의
							무단접근을 통제하고 있으며, 기타 시스템적으로 보안성을 확보하기 위한 가낭한 모든 기술적 장치를 갖추려 노력하고
							있습니다.
						</p>

						<h5>3) 처리 직원의 최소화 및 교육</h5>
						<p>회사의 개인정보관련 처리 직원은 담당자에 한정시키고 있고 이를 위한 별도의 비밀번호를 부여하여 정기적으로
							갱신하고 있으며, 담당자에 대한 수시 교육을 통하여 인성문고 개인정보처리방침의 준수를 항상 강조하고 있습니다.</p>

						<h5>4) 개인정보보호전담기구의 운영</h5>
						<p>
							사내 개인정보보호전담기구 등을 통하여 인성문고 개인정보처리방침의 이행사항 및 담당자의 준수여부를 확인하여 문제가
							발견될 경우 즉시 수정하고 바로 잡을 수 있도록 노력하고 있습니다.<br /> 단, 이용자 본인의 부주의나
							인터넷상의 문제로 ID, 비밀번호, 주민등록번호 등 개인정보가 유출되어 발생한 문제에 대해 회사는 일체의 책임을 지지
							않습니다.
						</p>


						<h4>10. 개인위치정보의 보호</h4>

						<p>
							1) 회사는 ”위치기반 서비스” 제공을 위하여 고객의 위치정보를 수집 및 이용할 수 있습니다.<br /> 2) 상기
							개인위치정보는 상기 이용목적 이외의 용도로는 사용되지 않습니다.<br /> 3) 상기 개인위치정보의 수집, 이용
							또는 제공목적을 달성한 때에는 관련 법령에 의하여 보존하여야 하는 위치정보 수집, 이용, 제공사실 확인자료 외의
							개인위치정보는 즉시 파기합니다.<br /> 4) 기타 개인위치정보 관련한 회사의 의무 및 고객의 권리는 “위치정보의
							보호 및 이용 등에 관한 법률” 및 관련 법령을 따릅니다.
						</p>

						<h4>11. 개인정보보호최고책임자 및 담당자의 연락처</h4>

						<p>
							귀하께서는 회사의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보보호최고책임자 혹은 담당부서로
							신고하실 수 있습니다.<br /> 회사는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.
						</p>
						<table>
							<caption>개인정보관리책임자 및 담당부서</caption>
							<col width="20%" span="5">
							<thead>
								<tr>
									<th scope="col">직무</th>
									<th scope="col">부서</th>
									<th scope="col">이름</th>
									<th scope="col">연락처</th>
									<th scope="col">이메일</th>
								</tr>
							</thead>
							<thead>
								<tr>
									<td>개인정보보호최고책임자</td>
									<td>마케팅지원실</td>
									<td>이인석</td>
									<td>1234-1234</td>
									<td>dlstjdansrh@dlstjd.com</td>
								</tr>
								<tr>
									<td>개인정보보호관리자</td>
									<td>고객가치혁신팀</td>
									<td>강민수</td>
									<td>1234-5678</td>
									<td>dlstjdansrh@dlstjd.com</td>
								</tr>
							</thead>
						</table>
						<p>기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.</p>
						<p>
							- 개인정보침해신고센터 (http://privacy.kisa.or.kr / (국번없이) 118)<br /> -
							개인정보분쟁조정위원회 (http://www.kopico.go.kr / 02-2100-2499)<br /> -
							대검찰청 첨단범죄수사센터 (http://www.spo.go.kr / 02-3480-3571)<br /> - 경찰청
							사이버테러대응센터 (http://www.netan.go.kr / 1566-0112)
						</p>

						<h4>12. 고지의 의무</h4>

						<p>현 개인정보처리방침 내용 추가, 삭제 및 수정이 있을 시에는 개정 최소 7일전부터 홈페이지의 '공지사항'을
							통해 고지할 것입니다.</p>

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