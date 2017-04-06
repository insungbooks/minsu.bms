<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>이용약관</title>
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
							<li class="active"><a href="agreementUtilization.jsp">이용약관</a></li>
							<li><a href="individualInfo.jsp">개인정보처리방침</a></li>
							<li><a href="pictureInfo.jsp">영상정보처리방침</a></li>
							<li><a href="emailCollectBan.jsp">이메일무단복제금지</a></li>
						</ul>
					</nav>
				</div>
				<div class="col-md-10">
					<h2>이용약관</h2>
					<hr>
					<br>
					<div class="agreeUtil">
						<h5>제1조 (목적)</h5>
						<p>
							본 약관은 인성문고㈜(이하 “회사”라 한다)와 인성문고 계열사가 제공하는 오프라인 영업장 및 온라인 상의 인터넷
							서비스(이하 “서비스”라 하며, 접속 가능한 유.무선 단말기의 종류와는 상관없이 이용 가능한 “회사”가 제공하는 모든
							“서비스”를 의미합니다)를 이용함에 있어서 “회사”와 이용자의 권리 의무 및 책임 사항을 규정함을 목적으로 합니다.<br />
							※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다」<br />
						</p>

						<h5>제2조 (정의)</h5>
						<p>
							1. “회사”란 재화 또는 용역을 이용자에게 제공하기 위하여 운영하는 오프라인 영업장 및 컴퓨터 등
							정보통신설비(인터넷, 전화 등)를 이용하여 재화 또는 용역을 거래할 수 있도록 설정한 가상의 영업장을 말하며 아울러
							오프라인 영업장과 사이버몰을 운영하는 사업자의 의미로도 사용합니다.<br /> 2. “이용자”란 영업장에 방문하거나
							“사이트”에 접속하여 이 약관에 따라 “회사”가 제공하는 정보 및 기타 서비스를 제공받는 회원 및 비회원을 말합니다.<br />
							3. “회원”이라 함은 인성북클럽 서비스 혜택적용을 위해 회원등록을 하고 회원 ID를 부여받은 자 또는 그 전체를
							의미하며, 계속적으로 “회사”가 제공하는 서비스를 이용할 수 있는 자를 말합니다.<br /> 4. 인성북클럽
							서비스란 당사와 인성문고 계열사 및 제휴사가 회원에게 제공하는 회원등급 산정, 마일리지 및 통합포인트 적립, 사용,
							할인, 이벤트 참여 등의 전반적인 고객 서비스 프로그램을 말하며 구체적인 내용은 당사와 인성문고 계열사 또는
							제휴사와의 관계 및 당사 정책에 의해 달라질 수 있습니다.<br /> 5. “인성문고 계열사”란 당사와 인성북클럽
							서비스 운영과 관련하여 위탁 운영 계약을 맺고 인성북클럽 서비스를 동시 제공하는 회사를 말합니다.<br /> *
							인성북클럽 서비스 제공사 : 인성핫트랙스㈜, 인성라이프플래닛생명보험㈜<br /> 6. “비회원”이라 함은 회원에
							가입하지 않고 “회사”가 제공하는 서비스를 이용하는 자를 말합니다.<br /> 7. ”간편가입 회원”이라 함은 회원
							가입시 실명인증을 받지 않고 필수정보만 입력하여 “회사”가 제공하는 서비스를 이용하는 자를 말합니다.<br />
							8. “비밀번호”라 함은 “회원”이 부여 받은 “아이디”와 일치되는 “회원”임을 확인하고 비밀보호를 위해 “회원”
							자신이 정한 문자 또는 숫자의 조합을 의미합니다.<br /> 9. “유료서비스”라 함은 “회사”가 유료로 제공하는
							각종 온라인 디지털콘텐츠(각종 정보콘텐츠, VOD, 기타 유료콘텐츠 포함) 및 제반 서비스를 의미합니다.<br />
							10. “게시물”이라 함은 “회원”이 “서비스”를 이용함에 있어 “서비스상”에 게시한
							부호.문자.음성.음향.화상.동영상 등 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다.<br />
						</p>

						<h5>제3조 (약관의 명시 및 개정)</h5>
						<p>
							1. “회사”는 이 약관의 내용과 상호 및 대표자의 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의
							주소를 포함), 전화번호, 모사전송번호, 전자우편주소, 사업자 등록번호, 통신판매업신고번호, 개인정보관리책임자 등을
							이용자가 쉽게 알 수 있도록 “회사”의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을
							통하여 볼 수 있도록 할 수 있습니다.<br /> 2. “회사는 이용자가 약관에 동의하기에 앞서 약관에 정하여져
							있는 내용 중 청약철회, 배송책임, 환불조건등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는
							팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.<br /> <br /> 3. “회사”는
							“전자상거래등에서의소비자보호에관한법률, 약관의규제등에관한법률, 전자문서및전자거래기본법, 전자금융거래법, 전자서명법,
							정보통신망이용촉진및정보보호등에관한법률, 방문판매등에관한법률, 소비자기본법 등” 관련법을 위배하지 않는 범위에서 이
							약관을 개정할 수 있습니다.<br /> 4. “회사”는 약관을 개정할 경우, 적용일자 및 개정사유를 명시하여
							현행약관과 함께 “사이트”의 초기화면에 그 적용일 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게
							불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 "회사”는
							개정전 내용과 개정후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.<br /> 5. 변경된 약관 조항
							중 상품 또는 용역의 구매계약에 관한 조항은 그 적용일자 이후에 체결되는 계약에만 적용되고 그이전에 이미 체결된
							계약에 대해서는 변경전의 조항이 그대로 적용됩니다 다만, 이미 매매계약을 체결한 이용자가 변경된 조항의 적용을 받기를
							원하는 뜻을 상기 제 4항에 의한 변경약관의 공지기간 내에 “회사에 송신하여 “회사”의 동의를 받은 경우에는 변경된
							조항이 적용됩니다.<br /> 6. “회사”가 개정약관을 공지 또는 통지하면서 회원에게 30일 기간 내에 의사표시를
							하지 않으면 의사표시가 표명된 것으로 본다는 뜻을 명확하게 공지 또는 고지하였음에도 회원이 명시적으로 거부의
							의사표시를 하지 아니한 경우 회원이 개정약관에 동의한 것으로 봅니다.<br /> 7. 회원이 개정약관의 적용에
							동의하지 않는 경우 “회사”는 개정 약관의 내용을 적용할 수 없으며, 이 경우 회원은 이용계약을 해지할 수 있습니다.
							다만, 기존 약관을 적용할 수 없는 특별한 사정이 있는 경우에는 “회사”는 이용계약을 해지할 수 있습니다.<br />
							8. 본 약관에서 명시하지 않은 사항과 본 약관의 해석에 관하여는 전자상거래등에서의소비자보호에관한법률,
							약관의규제등에관한법률, 공정거래위원회가 정하는 전자상거래등에서의소비자보호지침 및 관계법령, 또는 상관례에 따릅니다.<br />
						</p>

						<h5>제4조 (서비스의 제공 및 변경)</h5>
						<p>
							1. “회사”는 다음과 같은 업무를 수행합니다.<br /> ① 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결<br />
							② 구매계약이 체결된 재화 또는 용역의 배송<br /> ③ 다양한 정보의 제공<br /> ④ 광고, 이벤트 행사
							등 재화 또는 용역과 관련한 다양한 판촉 행위<br /> ⑤ 기타 이용자에게 유용한 부가 서비스<br /> 2.
							“회사”는 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화 또는
							용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여 현재의 재화
							또는 용역의 내용을 게시한 곳에 즉시 공지합니다.<br /> 단, “회사”가 합리적으로 예측할 수 없는 불가피한
							여건이나 사정이 있는 경우, 위 공지기간을 단축할 수 있습니다.<br /> 3. “회사”가 제공하기로 이용자와
							계약을 체결한 서비스의 내용을 재화등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를
							이용자에게 통지 가능한 주소로 즉시 통지합니다.<br /> 4. 전항의 경우 “회사”는 이로 인하여 이용자가 입은
							손해를 배상합니다. 다만, “회사”가 고의 또는 과실이 없음을 입증하는 경우에는 아무런 책임을 부담하지 않습니다.<br />
						</p>

						<h5>제5조 (서비스의 중단)</h5>
						<p>
							1. “회사”는 매장 설비의 보수점검 교체, 컴퓨터 등 정보통신 설비의 보수점검 교체 및 고장 통신의 두절, 천재지변
							등의 불가항력적 사유가 발생한 경우에는 서비스 제공을 일시 중단할 수 있으며 이 경우 서비스 제공 중단에 대한
							사전공지를 합니다. 다만, “회사”가 합리적으로 예측할 수 없는 사유로 인한 서비스 중단의 경우에는 사후에 이를
							공지합니다.<br /> 2. 제1항의 사유로 서비스가 일시적으로 중단되는 경우 “회사”는 제6조에 정한 방법으로
							이용자에게 통지합니다.<br /> 3. “회사”는 제1항에 명시된 단서조항의 사유에 의한 서비스의 제공이 일시적으로
							중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단 “회사”의 고의 또는 과실이 없는 경우에는
							책임을 부담하지 않습니다.<br /> 4. 사업종목의 전환, 사업의 포기, 업체간의 통합 등의 이유로 서비스를
							제공할 수 없게 되는 경우에는 “회사”는 제6조에 정한 방법으로 이용자에게 통지하고 당초 “회사”에서 제시한 조건에
							따라 소비자에게 보상합니다. 다만, “회사”가 보상기준 등을 고지하지 아니한 경우에는 이용자들의 통합포인트 등을
							“회사”에서 통용되는 통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합니다.<br />
						</p>

						<h5>제6조 (회원에 대한 통지)</h5>
						<p>
							1. “회사”가 회원에 대한 통지를 하는 경우, 회원이 “회사”에 제출한 전자우편 주소로 할 수 있습니다. 회원이
							통지를 받을 전자우편 주소를 지정한 때에는 “회사”의 통지는 부가통신사업자 또는 수신인이 관리하는 메일서버 등에
							도착하여 회원이 검색할 수 있는 상태에 이르렀을 때 도달된 것으로 보며, 회원이 전자우편을 개봉하였는지 여부, 회원의
							PC에 전자우편이 전송되었는지 여부는 불문합니다.<br /> 2. “회사”는 불특정다수 회원에 대한 통지의 경우
							7일 이상 “사이트” 화면에 게시함으로서 개별 통지에 갈음할 수 있습니다.<br /> 다만, 회원 본인의 거래와
							관련하여 중대한 영향을 미치는 사항에 대하여는 개별통지를 합니다.<br />
						</p>

						<h5>제7조 ("회사"의 의무)</h5>
						<p>
							1. “회사”는 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라
							지속적이고, 안정적으로 재화.용역을 제공하는 데 최선을 다하여야 합니다.<br /> 2. “회사”는 이용자가
							안전하게 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을 갖추어 이용자의
							개인정보보호에 최선을 다하여야 합니다.<br /> 3. “회사”는 판매하는 상품이나 용역에 대하여
							&lt;표시.광고의공정화에관한법률&gt; 제3조의 규정에 위반하는 표시 및 광고행위를 함으로써 이용자가 손해를 입은
							때에는 이를 배상할 책임을 부담합니다.<br /> 4. “회사”는 수신거절의 의사를 명확히 표시한 이용자에 대해서는
							영리목적의 광고성 전자우편을 발송하지 않습니다.<br />
						</p>

						<h4>제2장 회원</h4>

						<h5>제8조 (정의 및 가입)</h5>
						<p>
							1. 회원이라 함은 본 약관에 동의하고 “회사”가 정한 양식에 따라 인성문고 및 인성문고 계열사에서 회원정보를 기입한
							후 “개인정보의 수집, 제공 및 활용 동의서”를 제출하여 당사로부터 회원 가입을 허락 받은 개인 및 법인을 말합니다.<br />
							2. 회원은 인터넷뿐만 아니라 제 통신수단 및 직접 방문하여 등록한 회원을 말합니다.<br /> 3. 회원은 반드시
							회원 본인의 식별이 가능한 인증정보 및 개인정보를 제공하여야만 서비스를 이용할 수 있습니다. 본인인증을 통해 등록되지
							않은 사용자는 서비스의 제한을 받을 수 있으며, 일체의 권리를 주장할 수 없습니다.<br /> 4. 회원가입은
							반드시 실명 또는 실명인증으로 해야 합니다. 실명으로 가입하지 않은 회원에 대해 회사는 실명확인 조치를 할 수
							있으며, 실명미인증 가입에 따른 서비스 제한에 대한 책임은 회원에게 있습니다.<br /> 5. 인성북클럽 가입 시
							이용자의 동의 하에 인성문고 및 인성문고 계열사의 영업장, 온라인 상의 인터넷 서비스 회원으로 동시에 가입되며,
							하나의 통합 ID로 편리하고 안전하게 이용하실 수 있습니다. <br /> 6. “회사”는 제1항과 같이 회원으로
							가입할 것을 신청한 이용자 중 다음 각호에 해당되지 않는 한 회원으로 등록합니다.<br /> ① 가입신청자가 본
							약관 제13조 제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제13조 제3항에 의한 회원자격 상실
							후 3년이 경과한 자로서 “회사”의 회원 재가입 승낙을 얻은 경우에는 예외로 한합니다.<br /> ② 등록 내용에
							허위, 기재누락, 오기가 있는 경우<br /> ③ 만 14세 미만의 자가 신청하였을 경우 (단, 법정대리인의 동의가
							있는 경우에는 회원가입이 가능)<br /> ④ 기타 회원으로 등록하는 것이 “회사”의 기술상 현저히 지장이 있다고
							판단되는 경우<br /> 7. 회원 가입계약의 성립시기는 오프라인 영업장의 경우 “회원가입신청서” 제출, 온라인의
							경우 가입 신청 후 “회사”의 승낙이 회원에게 도달한 시점으로 합니다.<br /> 8. 가입 신청자가 “회사”에
							회원으로 가입하더라도 로그인하지 않은 상태에서 주문하는 경우는 회원주문이 아니라 비회원주문으로 인정합니다.<br />
							9. 회원은 제1항에 의한 등록사항에 변경이 있는 경우, 상당한 기간 이내에 “회사”에 대하여 회원정보수정 등의
							방법으로 그 변경사항을 알려야 합니다. 이러한 변경사항의 미 통보로 인해 발생하는 손해는 회원에게 그 책임이
							있습니다.<br />
						<h5>제9조 (어린이 회원의 가입에 대한 특칙)</h5>
						<p>
							1. 만 14세 미만의 자의 개인정보의 수집절차는 “회사”의 개인정보처리방침 또는 회원 약관에 따릅니다.<br />
							2. 회사는 부모 등 법정대리인의 동의에 대한 확인 절차를 거치지 않은 만 14세 미만의 자에 대해서는 가입을 거절
							또는 취소할 수 있습니다.<br />
						</p>

						<h5>제10조 (회원의 ID 및 비밀번호에 대한 의무)</h5>
						<p>
							1. 제23조의 경우를 제외한 본인의 과실로 타인이 사용하게 되어 일어날 수 있는 금전적 손실 등 각종 손해에 대한
							관리책임은 회원 본인에게 있습니다.<br /> 2. “회원”은 자신의 ID 및 비밀번호, 회원번호, 회원카드는
							본인이 직접 사용하여야 하며 제3자에게 이용하게 해서는 안됩니다.<br /> 3. “회원”의 주소, 전화번호,
							E-Mail 등이 변경되었을 경우에는 사전에 통지하거나 변경해야 하며 변경하지 않아서 발생하는 사고에 대한 책임은
							회원 본인에게 있습니다.<br /> 4. “회원”이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을
							인지한 경우에는 바로 “회사”에 통보하고 “회사”의 안내가 있는 경우에는 그에 따라야 합니다.<br />
						</p>

						<h5>제11조 (이용자의 의무)</h5>
						<p>
							이용자는 다음 행위를 하여서는 안됩니다.<br /> ① 개인정보의 등록(변경의 경우 포함함)시 허위내용을 등록<br />
							② “회사”에 게시된 정보를 임의로 변경<br /> ③ “회사”가 허락하지 않은 정보(컴퓨터 프로그램 등)의 송신
							또는 게시<br /> ④ “회사” 기타 제3자의 저작권 등 지적재산권에 대한 침해<br /> ⑤ “회사” 기타
							제3자의 명예를 손상시키거나 업무를 방해하는 행위<br /> ⑥ 외설 또는 폭력적인 메시지 화상 음성 기타
							공서양속에 반하는 정보를 화면에 공개 또는 게시하는 행위<br /> ⑦ 불특정 다수의 자를 대상으로 “회사”의
							서비스를 이용하여 영리목적으로 활동하는 행위<br /> ⑧ 사실관계를 왜곡하는 정보제공 행위 기타 “회사”가
							부적절하다고 판단하는 행위<br /> ⑨ 타인의 정보 도용<br />
						</p>

						<h5>제12조 (회원카드)</h5>
						<p>
							1. 회원으로 등록하신 분께는 인성문고 북클럽 회원카드를 제공해 드립니다.<br /> 2. 인터넷 혹은 기타경로로
							가입한 회원은 회원카드를 따로 발급하지 않으며, 영업점 방문 후 북클럽 안내데스크에서 발급신청 및 수령하실 수
							있습니다.<br /> 3. 회원카드는 “회사” 영업점을 방문하여 도서 구매시 반드시 제시하며, 또는 통신으로 구매시
							반드시 회원번호를 통보하여 구매실적이 체크될 수 있도록 해야 합니다. 그렇지 않는 경우에는 회원실적으로 인정하지 아니
							합니다.<br /> 4. 회원카드을 분실하였을 경우에는 당사로 즉시 연락을 해야 하며, 신고를 하지 않아 발생하는
							불이익은 회원 본인에게 책임이 있습니다.<br /> 5. 회원카드 재발급 수수료는 “회사”가 정한 기준에 따르며,
							각 영업점의 북클럽 안내데스크에서 재발급해 드립니다.<br />
						</p>

						<h5>제13조 (회원탈퇴 및 자격 상실)</h5>
						<p>
							1. “회원”은 “회사”에 언제든지 탈퇴를 요청할 수 있으며 “회사”는 즉시 회원탈퇴에 필요한 조치를 취합니다.<br />
							2. “회원”은 “회사”가 제휴한 사이트에 회원정보를 제공하는 것을 원하지 않을 경우 언제라도 회원탈퇴를 요청할 수
							있습니다.<br /> 3. 회원이 다음의 각호에 해당되는 경우 “회사”는 “회원”에 대하여 일정한 서비스의 이용을
							제한하거나 일정기간 “회원”의 자격을 정지시킬 수 있습니다.<br /> ① 회원 가입 신청시에 허위 내용을 등록한
							경우.<br /> ② “회사”를 이용하여 구입한 재화.용역 등의 대금, 기타 “회사” 이용에 관련하여 회원이
							부담하는 채무를 기일에 지급하지 않는 경우<br /> ③ 타인의 ID와 비밀번호 또는 그 개인정보를 도용한 경우<br />
							④ “사이트”의 화면에서 타인의 명예를 손상시키거나 불이익을 주는 행위를 한 경우<br /> ⑤ “회사”를 이용하여
							법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우<br /> ⑥ 기타 다음과 같은 행위 등을
							반복하여 “회사”의 건전한 운영을 해하거나 “회사”의 업무서비스 운영을 고의로 방해하는 행위를 하는 경우<br />
							- “회사”의 운영에 관련하여 근거 없는 사실 또는 허위의 사실을 적시하거나 유포하여 “회사”의 명예를 실추시키거나
							“회사”의 신뢰성을 해하는 경우<br /> - “회사”의 운영과정에서 “회사”의 직원에게 폭언 또는 음란한 언행을
							하여 업무환경을 심각히 해하는 경우<br /> - “회사”의 운영과정에서 이유 없는 잦은 연락이나 소란 또는 협박,
							인과관계가 입증되지 않는 피해에 대한 보상 (적립금, 현금, 상품 등) 요구 등으로 업무를 방해하는 경우<br />
							- “회사”를 통해 구입한 재화 또는 용역에 특별한 하자가 없는데도 불구하고 일부 사용 후 상습적으로 전부 또는
							일부를 반품하는 등 업무를 방해하는 경우<br /> ⑦ 다른 사람의 “회사” 이용을 방해하거나 그 정보를 도용하는
							등 전자거래질서를 위협하는 경우<br /> ⑧ 회원이 부정적립, 부정사용 등 북클럽 마일리지,통합포인트 및 북클럽
							카드를 부정한 방법 또는 목적으로 이용한 경우<br /> - 부정적립 : 회원이 실제로 상품이나 서비스를 구매하지
							않았음에도 불구하고 당해 회원에게 통합포인트가 적립된 경우를 말합니다. 그러나 시스템의 오류 등 회원의 귀책사유에
							의하지 않고 통합 포인트가 적립된 경우나 상품이나 서비스를 실제로 구매한 당사자의 동의가 있어 구매 당사자 대신 다른
							회원에게 통합포인트를 적립하는 경우는 이에 제외됩니다.<br /> - 부정적립된 통합포인트는 회원 자격 상실 통보와
							함께 동시 소멸하고 이에 대하여 회원은 어떠한 권리도 주장할 수 없습니다. 또한 부정적립 포인트로 상품이나 서비스를
							구매하는 등의 부당이득이 발생한 경우 회원 당사자 또는 부정적립 동조자가 당사 또는 제휴사에 대한 민·형사상 책임을
							지며, 그로 인하여 회사에 발생한 모든 손해를 배상하여야 합니다.<br /> 4. “회사”가 회원 자격을 제한
							정지시킨 후, 제3항의 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 “회사”는
							회원자격을 상실시킬 수 있습니다.<br /> 5. “회사”가 회원자격을 상실시키는 경우에는 회원등록을 말소합니다.
							이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.<br />
						</p>


						<h4>제3장 주문</h4>


						<h5>제14조 (구매신청)</h5>
						<p>
							1. 이용자는 “회사”에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며, “회사”는 이용자가 구매신청을 함에
							있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다.<br /> ① 재화 또는 용역의 선택<br /> ② 받는
							사람의 성명, 주소, 전화번호(또는 이동전화번호), 전자우편주소 등의 입력<br /> ③ 약관내용, 청약철회권이
							제한되는 서비스, 배송료 등의 비용부담과 관련한 내용에 대한 확인<br /> ④ 이 약관에 동의하고 위 3항의
							사항을 확인하거나 거부하는 표시 (예, 마우스클릭)<br /> ⑤ 재화등의 구매신청 및 이에 관한 확인 또는
							“회사”의 확인에 대한 동의<br /> ⑥ 결제방법의 선택<br /> 2. “회사”가 제3자에게 구매자 개인정보를
							제공할 필요가 있는 경우 제공되는 개인정보 항목, 제공받는 자, 제공받는자의 개인정보 이용 목적 및
							보유&middot;이용 기간 등을 구매자에게 알리고 동의를 받아야 합니다.<br /> 3. “회사”가 제3자에게
							구매자 개인정보를 처리 할 수 있도록 업무를 위탁하는 경우에는 개인정보 처리 위탁을 받는 자, 개인정보 처리위탁을
							하는 업무의 내용을 구매자에게 알리고 동의를 받아야 합니다. 다만, 서비스 제공에 관한 계약이행을 위해 필요하고
							구매자의 편의 증진과 관련된 경우에는 개인정보 처리방침을 통해 알림으로써 고지절차와 동의절차를 거치지 않아도 됩니다.<br />
						</p>

						<h5>제15조 (미성년자 구매계약에 대한 특칙)</h5>
						<p>
							만 20세 미만의 미성년 회원이 유료서비스를 이용하거나, 구매계약을 체결할 경우 사전에 부모 등 법정대리인의 동의를
							얻거나, 사후에 추인을 얻어야 합니다. 다만, 관련 법령에서 달리 정함이 있는 사항은 그에 따릅니다.<br />
						</p>

						<h5>제16조 (계약의 성립)</h5>
						<p>
							1. “회사”는 제14조와 같은 구매신청에 대하여 다음 각호에 해당하면 승낙을 하지 않을 수 있습니다. 다만,
							미성년자와 계약을 체결하는 경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수
							있다는 내용을 고지하여야 합니다.<br /> ① 신청 내용에 허위, 기재누락, 오기가 있는 경우<br /> ②
							미성년자가 음란물 등 청소년 보호법에서 금지하는 재화 및 용역을 구매하는 경우<br /> ③ 상행위(재판매)를
							목적으로 구매하는 거래이거나, 거래 정황상 상행위(재판매)를 목적으로 한 구매로 판단되는 경우<br /> ④ 기타
							구매신청에 승낙하는 것이 “회사”의 기술상 현저히 지장이 있다고 판단하는 경우<br /> 2. “회사”의 승낙이
							제18조 제1항의 수신확인 통지형태로 이용자에게 도달한 시점에 구매계약이 성립한 것으로 봅니다.<br /> 3.
							“회사”의 승낙의 의사표시에는 이용자의 구매 신청에 대한 확인 및 판매가능 여부, 구매신청의 정정 취소 등에 관한
							정보 등을 포함하여야 합니다.<br />
						</p>

						<h5>제17조 (지급방법)</h5>
						<p>
							1. “회사”에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각 호의 방법 중 가용한 방법으로 할 수
							있습니다. 단, “회사”는 이용자의 지급방법에 대하여 재화 등의 대금에 어떠한 명목의 수수료도 추가하여 징수할 수
							없습니다.<br /> ① 폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의 각종 계좌이체<br /> ② 선불카드, 직불카드,
							신용카드 등의 각종 카드결제<br /> ③ 온라인무통장입금<br /> ④ 전자화폐에 의한 결재<br /> ⑤
							통합포인트 등 “회사”가 지급한 포인트에 의한 결제<br /> ⑥ “회사”와 계약을 맺었거나 “회사”가 인정한
							상품권에 의한 결제<br /> ⑦ 기타 전자적 지급 방법에 의한 대금 지급 등<br />
						</p>

						<h5>제18조 (수신확인통지·구매신청 변경 및 취소)</h5>
						<p>
							1. “회사”는 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다.<br /> 2. 수신확인통지를 받은
							이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고,
							“회사”는 배송 전 이용자의 구매신청 변경 및 취소 요청이 있는 때에는 지체없이 그 요청에 따라 처리하여야 합니다.
							다만, 이미 대금을 지불한 경우에는 제21조 청약철회 등에 관한 규정에 따릅니다.<br /> 3. “회사”는
							이용자의 구매(주문) 신청일로부터 7일 이내 상품대금에 대해 입금이 확인되지 않을 경우 별도 의사 확인 절차없이
							구매계약을 해제하는 것으로 처리할 수 있습니다.<br /> 4. 오프라인 주문예약의 경우 예약접수 7일 이후 까지
							미 수령 도서는 구매계약을 취소 처리할 수 있습니다.<br />
						</p>




						<h4>제4장 배송 · 취소 · 환불 및 교환</h4>


						<h5>제19조 (배송)</h5>
						<p>
							1. “회사”는 이용자와 재화등의 공급시기에 관하여 별도의 약정이 없는 이상, 이용자가 청약을 한 날부터 7일 이내에
							재화 등을 배송할 수 있도록 주문제작, 포장 등 기타의 필요한 조치를 취합니다. 다만, “회사”가 이미 재화 등의
							대금의 전부 또는 일부를 받은 경우에는 대금의 전부 또는 일부를 받은 날부터 3영업일 이내에 조치를 취합니다. 이때,
							“회사”는 이용자가 재화등의 공급 절차 및 진행 사항을 확인할 수 있도록 적절한 조치를 합니다.<br /> 2.
							“회사”는 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다. 만약
							“회사”가 약정 배송기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상하여야 합니다. 다만, “회사”가
							고의.과실이 없음을 입증한 경우에는 그러하지 아니합니다.<br /> 3. 공휴일 및 기타 휴무일 또는 천재지변 등의
							불가항력적 사유가 발생하는 경우 그 해당기간은 배송소요기간에서 제외합니다.<br />
						</p>

						<h5>제20조 (환급, 반품 및 교환)</h5>
						<p>
							1. "회사"는 이용자가 구매신청한 재화 등이 품절 등의 사유로 재화의 인도 또는 용역의 제공을 할 수 없거나
							곤란함을 알았을 때에는 지체없이 그 사유를 이용자에게 통지하고, 사전에 재화 또는 용역의 대금을 받은 경우에는 대금을
							받은 날부터 3영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다. 단, "회사"가 재화 등의 준비에 대한
							소요일을 이용자가 구매신청 전 인지 할 수 있도록 미리 표시한 경우에는 그 사유 발생일로부터 3영업일 이내에
							환급하거나 환급에 필요한 조치를 취합니다.<br /> 2. “회사” 오픈마켓을 통해서 구입하신 상품은 구매확정절차
							후 “회사”를 통한 환급, 교환, 반품의 요청이 제한되며 판매자와 구매자가 직접 협의해서 처리해야 합니다.<br />
							3. “회사”는 합리적인 기간이 경과한 후에도 구매자가 구매확정절차를 이행치 않는 경우 해당 전자상거래의 계약이행이
							정상적으로 종료된 것으로 간주하여 자동구매확정절차를 이행할 수 있으며 판매자에게 정상적으로 판매대금을 지급하는 등
							통신판매 중개자의 역할을 수행할 수 있습니다. 단, 자동구매확정까지의 합리적인 기간은 개별약관으로 정합니다.<br />
							4. 구매자는 제반 법령에 따라 결제대금예치업무(에스크로)의 보호를 “회사”에 요청할 수 있습니다.<br /> 5.
							반품 또는 교환에 필요한 왕복배송비용 기타 필요한 비용은 귀책사유 있는 쪽에서 부담하며, 배송상의 문제로 구매자가
							입은 손해에 대한 배상책임은 귀책사유 있는 배송업체를 지정한 판매자에게 있습니다.<br /> 6. 해외에서 국내로
							상품을 배송하는 해외구매대행서비스의 경우 전자상거래 등에서의소비자보호에관한법률 제17조 2항 5호 및 동법시행령
							제21조에 의하여 반품 및 교환이 제한될 수 있습니다.<br /> <br /> [해외주문도서에 대한 특칙]<br />
							① 해외주문도서는 이용자의 요청에 의한 개인주문상품이므로 이용자의 단순한 변심/착오로 인한 취소, 반품, 교환 발생
							시 “인성문고”는 "해외주문 반품/취소수수료”를 공제한 대금을 이용자에게 환급합니다. "해외주문 반품/취소 수수료"는
							양서의 경우 판매정가의 12%, 일서의 경우 판매정가의 7%를 적용합니다.<br /> ② 제1항의 규정은 본
							20조의 다른 규정에 우선하여 적용됩니다.<br /> 7. 다음 각 호의 경우에는 “회사”는 배송된 재화일지라도
							재화를 반품 받은 다음 이용자의 요구에 따라 즉시 환급, 반품 및 교환 조치를 합니다.<br /> ① 배송된 재화가
							주문내용과 상이하거나 “회사”가 제공한 정보와 상이할 경우<br /> ② 배송된 재화가 파손, 손상되었거나
							오염되었을 경우 또는 객관적인 기준에 의한 파본인 경우<br /> ③ 재화가 광고에 표시된 배송기간보다 늦게 배송된
							경우<br /> 8. 본 조 제7항 각호에 해당하지 않는 사유로 배송된 재화를 반환하는 경우 반품 및 반품과 관련된
							부대비용 일체를 이용자가 부담해야 합니다.<br /> 9. 음반, 만화, 잡지, 영상화보집 등과 같이 포장의 해체
							후 단시간 내에 열람 및 청취가능 한 매체의 청약철회는 본 조 제7항에 해당하지 않는 경우 반품 및 환불이
							불가합니다.<br /> 10. 디지털콘텐츠의 청약(결제) 이후 1회 이상의 다운로드, 실시간 스트리밍 등 서비스
							제공이 개시된 경우 또는 청약일로부터 7일이 지난 이후에는 본 조 제7항에 해당하지 않는 사유로 반품 및 환불이
							불가합니다.<br />
						</p>

						<h5>제21조 (청약철회 등)</h5>
						<p>
							1. “회사”와 재화 등의 구매에 관한 계약을 체결한 이용자는 전자상거래등에서의소비자보호에관한법률 제13조 제2항에
							따른 계약내용에 관한 서면을 받은날(그 서면을 받은 때보다 재화등의 공급이 늦게 이루어진 경우에는 재화등을 공급받거나
							재화 등의 공급이 시작된 날을 말합니다)부터 7일 이내에는 청약의 철회를 할 수 있습니다. 다만, 청약철회에 관하여
							전자상거래등에서의소비자보호에관한법률에 달리정함이 있는 경우에는 동 법 규정에 따릅니다.<br /> 또한 디지털
							콘텐츠의 경우, 콘텐츠의 구매,결제 완료 후 다운로드 대기중 상태에서 다운로드 또는 스트리밍으로 이용하지 않은
							콘텐츠에 대해서는 청약(결제완료)일로부터 7일 이내에 청약철회가 가능합니다.<br /> 2. 이용자는 재화 또는
							용역을 배송 및 서비스 받은 경우 다음 각호의 1에 해당하는 경우에는 청약철회, 반품, 교환, 환불을 요구할 수
							없습니다.<br /> ① 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을
							확인하기 위하여 단순 외부포장 등을 훼손한 경우에는 청약철회가 가능)<br /> ② 이용자의 사용 또는 일부 소비에
							의하여 재화 등의 가치가 현저히 감소한 경우<br /> ③ 시간의 경과에 의하여 재판매가 곤란할 정도로 재화 등의
							가치가 현저히 감소한 경우<br /> ④ 같은 성능을 지닌 재화 등으로 복제가 가능한 경우 그 원본인 재화 등의
							포장을 훼손한 경우<br /> ⑤ 이용자의 개인 주문에 의하여 주문 확인 후 개별적으로 해외구입처로 구매 진행하는
							상품으로 이용자가 청약철회 제한 상품임에 동의하신 경우<br /> ⑥ 디지털 콘텐츠의 경우 청약(결제)이후 1회
							이상의 다운로드 또는 실시간 스트리밍 등 서비스 제공이 개시된 경우(단, 가분적 디지털콘텐츠일 경우 제공이 개시되지
							않은 부분은 제외)<br /> ⑦ 그 외 전자상거래등에서의 소비자보호에 관한 법률이 정하는 청약철회 제한에 해당하는
							경우<br /> 3. 제2항 제②호 내지 제④호 경우에 “회사”가 사전에 청약철회 등이 제한되는 사실을 이용자가
							쉽게 알 수 있는 곳에 명기하거나 시용상품을 제공하는 등의 조치를 하지 않았다면 이용자의 청약철회 등이 제한되지
							않습니다.<br /> 4. 이용자는 제1항 및 제2항의 규정에 불구하고 재화 등의 내용이 표시.광고 내용과 다르거나
							계약내용과 다르게 이행된 때에는 당해 재화 등을 공급 받은 날부터 3일 이내, 그 사실을 안 날 또는 알 수 있었던
							날부터 30일 이내(단, 상품수령일로부터 3개월 이내)에 청약철회 등을 할 수 있습니다.<br /> 5. 이용자와
							연락이 되지 않을 경우 모든 환불금액은 본인 확인의 안전성을 위하여 구매대금 중 통합포인트 등의 사용분을 제외한 실제
							결제액을 본 약관 제 34조의 ‘고객 예치금’으로 환불하는 것을 원칙으로 합니다.<br /> 6. 제2항 제②호에
							해당되지 않는 사유로 반품하여 주문을 취소하고 해당 주문으로 발생한 통합포인트 등의 금액을 이미 사용하였을 경우,
							사용한 통합포인트 등의 금액을 차감한 후 환불함을 원칙으로 합니다.<br />
						</p>

						<h5>제22조 (청약철회 등의 효과)</h5>
						<p>
							1. “회사”는 이용자로부터 재화 등을 반환 받은 경우 3영업일 이내에 이미 지급받은 재화 등의 대금을 환급합니다.
							이 경우 “회사”가 이용자에게 재화 등의 환급을 지연한 때에는 그 지연기간에 대하여
							전자상거래등에서의소비자보호에관한법률시행령 제21조의2에서 정하는 지연이자율을 곱하여 산정한 지연이자를 지급합니다.<br />
							2. “회사”는 위 대금을 환급함에 있어서 이용자가 신용카드 또는 전자금융거래법 등이 정하는 결제수단으로 재화 등의
							대금을 지급한 때에는 지체없이 당해 결제수단을 제공한 사업자로 하여금 재화 등의 대금의 청구를 정지 또는 취소하도록
							요청합니다.<br /> 3. “청약철회 등”의 경우 공급 받은 재화 등의 반환에 필요한 비용은 이용자가 부담합니다.
							“회사”는 이용자에게 청약철회 등을 이유로 위약금 또는 손해배상을 청구하지 않습니다. 다만 재화 등의 내용이
							표시.광고 내용과 다르거나 계약내용과 다르게 이행되어 “청약철회 등”을 하는 경우 재화 등의 반환에 필요한 비용은
							“회사”가 부담합니다.<br /> 4. 이용자가 재화 등을 제공받을 때 발송비를 부담한 경우에 “회사”는 청약철회
							시 그 비용을 누가 부담하는지를 이용자가 알기 쉽도록 명확하게 표시합니다.<br />
						</p>

						<h4>제5장 정보의 처리</h4>


						<h5>제23조 (개인정보보호 및 이용)</h5>
						<p>
							"회사"는 "정보통신망이용촉진및정보보호에관한법률" 등 관계 법령이 정하는 바에 따라 "회원"의 개인정보를 보호하기
							위해 노력합니다. 개인정보의 보호 및 활용에 대해서는 관련법 및 "회사"의 개인정보처리방침이 적용됩니다. 다만,
							"회사"의 공식 사이트 이외의 링크된 사이트에서는 "회사"의 개인정보처리방침이 적용되지 않습니다. 또한 “회사”는
							회원의 귀책사유로 인해 노출된 정보에 대해서 일체의 책임을 지지 않습니다.<br />
						</p>

						<h4>제6장 기타</h4>


						<h5>제24조 (저작권의 귀속 및 이용제한)</h5>
						<p>
							1. “회사”가 작성한 저작물에 대한 저작권 기타 지적재산권은 “회사”에 귀속합니다.<br /> 2. 이용자는
							“회사”를 이용함으로써 얻은 정보 중 “회사”에게 지적재산권이 귀속된 정보를 “회사”의 사전 승낙없이 복제, 판매,
							출판, 송신, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.<br />
							3. 회원이 창작하여 “회사”에 게재 또는 등록한 게시물에 대한 저작권은 회원 본인에게 있으며 해당 게시물이 타인의
							지적 재산권을 침해하여 발생되는 모든 책임은 회원 본인에게 해당됩니다.<br /> 4. 회원은 자신이 창작.등록한
							게시물을 “회사”의 서비스를 운영, 전송 배포 또는 홍보를 위해 사용료 없는 사용권을 “인성문고”에 부여 합니다.
							사용권은 “회사”가 서비스를 운영하는 동안 유효하며 회원의 탈퇴 후에도 유효합니다.<br /> ① “회사”가
							제공하는 관련 서비스 내에서 회원들의 게시물에 대한 복제.전시.배포.편집.저작물 작성<br /> ② “회사” 제휴
							파트너에게 회원의 게시물 내용을 제공, 단, 회원의 아이디 외의 개인정보는 제공하지 않는다.<br /> ③ 상기
							사용권 외에 회원의 게시물을 상업적으로 이용하고자 할 경우 회원의 사전 동의를 얻어야 한다. “회사”가 회원의
							게시물을 상업적으로 이용할 경우 별도의 보상제도를 운영할 수 있다.<br /> 5. 회원의 게시물에 대해
							제3자로부터 저작권 및 기타 권리의 침해로 이의가 제기된 경우 “회사”는 해당 게시물을 임의로 삭제할 수 있으며 해당
							게시물에 대한 법적 문제가 종결된 후 이를 근거로 “회사”에 신청이 있는 경우에만 상기 임시 삭제된 게시물을 다시
							게재할 수 있습니다.<br />
						</p>

						<h5>제25조 (연결 "몰"과 피연결 "몰" 간의 관계)</h5>
						<p>
							1. 상위 “몰”과 하위”몰”이 하이퍼 링크(예: 하이퍼 링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식
							등으로 연결된 경우, 전자를 연결 몰”(웹사이트)이라고 하고 후자를 피연결 “몰”(웹사이트)이라고 합니다.<br />
							2. 연결 “몰”은 피연결 “몰”이 독자적으로 제공하는 재화등에 의하여 이용자와 행하는 거래에 대해서 보증책임을 지지
							않는다는 뜻을 연결몰의 초기화면 또는 연결 시점의 팝업화면으로 명시한 경우에는 그 거래에 대한 보증책임을 지지
							않습니다.<br />
						</p>

						<h5>제26조 (규약 위반시 책임)</h5>
						<p>
							1. “회사”와 회원이 이 규약을 위반함으로써 발생한 모든 책임은 위반한 자가 부담하며, 이로 인해 상대방에게 손해를
							입힌 경우에는 손해를 입힌 자가 배상하여야 합니다.<br /> 2. 이 규약에 따른 거래에 관한 소송은 회원의
							소재지에 있는 관할 법원과 당사가 위치한 관할 법원으로 합니다.<br />
						</p>

						<h5>제27조 (면책)</h5>
						<p>
							1. “회사”는 천재지변, 불가항력 기타 “회사”의 합리적인 통제범위를 벗어난 사유로 인하여 “서비스를 제공할 수
							없는 경우에는 그에 대한 책임을 부담하지 않습니다.<br /> 2. “회사”는 이용자의 귀책사유로 인하여
							“서비스”를 제공할 수 없는 경우에는 그에 대한 책임을 부담하지 않습니다.<br /> 3. “회사”는 이용자가
							“서비스”를 이용함으로써 기대되는 수익을 얻지 못하거나 “서비스”를 통해 얻은 자료를 이용하여 발생한 손해에 대해서는
							책임을 부담하지 않습니다.<br /> 4. 이용자가 화면에 게재한 정보, 자료, 사실 등의 내용에 관한 신뢰도 또는
							정확성에 대하여는 해당 이용자가 책임을 부담하며, “회사”는 내용의 부정확 또는 허위로 인해 이용자 또는 제3자에게
							발생한 손해에 대하여는 아무런 책임을 부담하지 않습니다.<br /> 5. “회사”는 서비스” 이용과 관련하여
							이용자의 고의 또는 과실로 인하여 이용자 또는 제3자에게 발생한 손해에 대하여는 아무런 책임을 부담하지 않습니다.<br />
						</p>

						<h5>제28조 (광고게재 등)</h5>
						<p>
							1. “회사”는 이용자에게 최상의 서비스를 원활하게 제공하기 위한 재정기반을 마련하기 위하여 상업용 광고를 화면에
							게재하거나 이메일 또는 MMS, DM(서신) 등을 이용하여 개별 이용자에게 보낼 수 있습니다.<br /> 단,
							수신거절의 의사를 명백히 표시한 이용자에 대해서는 더 이상 이메일 또는 MMS, DM(서신) 등을 발송하지 않습니다.<br />
							2. “회사”는 본 서비스를 통한 광고주의 판촉활동에 회원이 직접 참여함으로써 발생하는 손해에 대하여는 아무런 책임을
							부담하지 않습니다.<br />
						</p>

						<h5>제29조 (분쟁해결)</h5>
						<p>
							1. “회사”는 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를
							설치 운영합니다.<br /> 2. “회사”는 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을
							처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.<br />
							3. “회사”와 이용자간에 발생한 전자상거래 분쟁과 관련하여 이용자의 피해구제신청이 있는 경우에는 공정거래위원회 또는
							시.도지사가 의뢰하는 분쟁조정기관의 조정에 따를 수 있습니다.<br />
						</p>

						<h5>제30조 (재판권 및 준거법)</h5>
						<p>
							1. “회사”와 이용자간에 발생한 전자거래 분쟁에 관한 소송은 제소 상시의 이용자의 주소에 의하고, 주소가 없는
							경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나
							외국 거주자의 경우에는 민사소송법상의 관할법원에 제기합니다.<br /> 2. “회사”와 이용자간에 제기된 전자거래
							소송에는 한국법을 적용합니다.<br />
						</p>

						<h5>제31조 (법령 및 준용)</h5>
						<p>
							본 약관에 명시하지 않은 사항은 전자거래 기본법, 전자서명법, 방문판매법 및 기타 관련 법령(이하 ‘관계법규’)에
							따르며 관계법규에서도 정해지지 않은 사항은 상관례에 따릅니다.<br />
						</p>



						<h4>제7장 특별규정</h4>


						<h5>제32조 (마일리지 및 통합포인트의 사용 계약)</h5>
						<p>
							마일리지 및 통합 포인트 사용 계약은 본 약관에 사용 신청자가 동의한다는 의사표시를 함으로써 성립합니다.<br />
						<h5>제33조 (마일리지 및 통합포인트의 취득 및 소멸)</h5>
						<p>
							1. 마일리지란 인성문고의 영업장, 온라인 웹사이트 및 인성문고 계열사 웹사이트에서 상품 구매시 적립 가능한
							금권입니다.<br /> 2. 통합포인트란 인성문고 및 인성문고 계열사에서 상품 구매시 적립 및 사용 가능한 통합
							금권입니다.<br /> 3. “회사”의 회원이 인성문고 및 인성문고 계열사의 상품을 구매할 경우 각 상품별로 해당
							적립율에 따른 일정금액을 통합포인트로 적립해 드립니다.<br /> 4. 마일리지 및 통합포인트는 상품 구매시 사용
							가능하며 현금으로 환불되지 않습니다.<br /> 5. 온라인 구매시 통합포인트는 구매하신 상품의 발송이 완료된
							시점에 자동 적립됩니다.<br /> 6. 마일리지 및 통합포인트는 인성문고 및 인성문고 계열사에서 온라인과 오프라인
							구매시 통합 관리됩니다.<br /> 7. 회원 탈퇴 시 잔액 여부와 상관없이 회원의 마일리지 및 통합포인트는
							소멸됩니다.<br /> 8. 마일리지 및 통합포인트는 타인에게 양도할 수 없습니다.<br /> 9. 2012년
							11월 1일부터 적립된 통합포인트는 1년간 유효하며, 1년이 경과된 통합포인트는 순차적으로 소멸됩니다.<br />
							10. 마일리지는 3년간 유효하며, 3년이 경과된 마일리지는 순차적으로 소멸되고, 특별한 사유로 인해 유지된
							마일리지는 2015년 11월 1일자에 통합포인트로 일괄 이관됩니다.<br /> 11. 마일리지 및 통합포인트
							결제분에 대해서는 마일리지 및 통합포인트가 적립되지 않습니다.<br /> 12. “회사의 운영정책”에 따라 상품별
							마일리지 및 통합포인트 부여 그리고 마일리지 및 통합포인트 사용가능시점 및 분할사용가능 여부가 다를 수 있습니다.<br />
							13. 회원이 마일리지 및 통합포인트를 부당하게 취득한 증거가 있을 때에는 “회사”는 사전통지 없이 회원의 마일리지
							및 통합포인트를 삭제할 수 있으며 이와 관련하여 회원 자격을 제한할 수 있습니다.<br />
						</p>

						<h5>제34조 (고객예치금)</h5>
						<p>
							1. 고객 예치금이란 회원(이용자)이 “회사” 이용시 환불사유(개인적 사유, 품절.절판 등으로 인하여 취소 또는 반품
							등)로 발생 하는 금액을 말합니다. 이는 고객님의 개인정보보호를 위하여 고객님께서 직접 환불 접수해 주실 때 까지
							해당 금액을 임시로 보관하는 것 입니다.<br /> 2. 고객 예치금은 다음 번 구매 시 현금처럼 사용하실 수도
							있고 회원(본인)의 요청에 따라 잔액의 전부 또는 일부를 고객계좌(은행계좌)로 자유롭게 현금입출금 할 수 있으며
							소멸시점은 부여하지 않습니다. 단, 결제수단에 따라 승인취소가 가능한 결제수단은 승인취소가 우선적으로 처리됩니다.<br />
							3. 1회 환불 가능 금액은 전자금융거래법에 의해 최대 200만원입니다.<br /> 4. 핸드폰이나 신용카드 등을
							이용한 결제의 경우에는 입금 확인에 일정 기간이 소요되기 때문에 환불 처리가 다소 지연될 수도 있습니다.<br />
						</p>

						<h5>제35조 (휴면계정)</h5>
						<p>
							1. “회사”가 정한 일정기간 동안 회원이 “회사”를 이용하지 않았을 경우 원활한 회원관리를 위하여 ‘휴면계정’으로
							처리하여 회원자격으로의 활동과 해당 계정으로 지급된 일체의 적립금의 사용을 제한할 수 있습니다. 다만, 회원이
							“회사”가 정한 절차에 따라 휴면계정 철회를 요청할 경우 “회사”는 종전의 회원자격과 적립금을 다시 활성화해
							드립니다.<br /> 2. ‘휴면계정’으로 처리된 후 일정기간이 지나면 “회사”는 제 6조에 정한 방법으로 통지 후
							해당 회원의 적립금을 소멸할 수 있습니다.<br />
						</p>

						<h5>제36조 (온라인교육 서비스)</h5>
						<p>
							1. 서비스 이용계약은 서비스 이용신청자(또는 회사)의 이용신청에 대하여 수강승인을 함으로써 성립합니다.<br />
							2. 본 ‘온라인교육 서비스’는 무료서비스와 유료서비스로 구분되며, 유료서비스는 구매 후 승인된 회원 ID로만 사용이
							가능하고 타인에게 사용권한을 양도하실 수 없습니다.<br /> 3. 유료서비스 신청회원은 수강신청 취소기간 내에
							수강취소/환불 신청을 하실 수 있습니다.<br /> 수강신청 취소기간이 경과한 후 수강취소 및 환불신청이
							불가능합니다. 수강취소 및 환불신청은 반드시 “회사”의 교육사이트 홈페이지에서 등록하여야 처리가능 합니다.<br />
							단, “회사”는 다음 각 호에 해당하는 경우 취소신청을 승낙하지 아니할 수 있습니다.<br /> ① 이용자의 실수로
							해당 서비스를 이용하지 못한 경우<br /> ② 학습 개강일이 되어 학습이 진행된 경우<br /> ③ 이용자가
							“회사”의 회원탈퇴 후, 환불을 요구하는 경우<br /> ④ 기타 승낙하지 아니함에 정당한 사유가 있는 경우<br />
							4. “회사”는 부득이한 사정으로 유료서비스를 지속할 수 없을 경우 즉시 공지하고 ‘온라인교육 서비스’상품 환불
							규정에 따라 잔여 이용요금을 환불합니다.<br />
						</p>

						<h5>제37조 (개별 약관)</h5>
						<p>
							1. 이 약관은 “회사”와 회원간에 성립되는 서비스이용계약의 기본 약정입니다. “회사”는 필요한 경우 특정 서비스에
							관하여 적용될 사항(이하 “개별약관”이라고 합니다)을 정하여 미리 공지할 수 있습니다. 회원이 이러한 개별약관에
							동의하고 특정 서비스를 이용하는 경우에는 개별약관이 우선적으로 적용되고, 이 약관은 보충적인 효력을 갖습니다.<br />
							2. “회사”는 필요한 경우 서비스 이용과 관련된 세부적인 개별내용(이용정책 등)을 정하여 사이트 등을 통하여 공지할
							수 있습니다.<br />
						</p>


						<p>
							부칙<br /> 본 이용약관은 2016년 07월 22일부터 시행하며 종전의 약관내용은 본 약관으로 대체합니다.<br />
					</div>

				</div>

			</div>
			<br>
			<hr>
			<br>
		</div>

	</article>
	<!-- 바닥글 -->
	<div class="container">
		<footer>
			<div class="row">
				<ul class="footerul">
					<li class="footerli"><a href="insungInfo.html">회사소개</a></li>
					<li class="footerli"><a href="adInfo.html">광고안내</a></li>
					<li class="footerli"><a href="customerCenter.html">고객센터</a></li>
					<li class="footerli"><a href="agreementUtilization.html">이용약관</a></li>
					<li class="footerli"><a href="individualInfo.html">개인정보처리</a></li>
					<li class="footerli"><a href="pictureInfo.html">영상정보관리방침</a></li>
					<li class="footerli"><a href="emailCollectBan.html">이메일무단복제금지</a></li>
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