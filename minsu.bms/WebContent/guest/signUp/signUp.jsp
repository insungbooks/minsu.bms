<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="minsu.bms.login.domain.User"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>회원가입</title>
<!-- 회원가입 -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<style>

h2, h4 { /*그룹을 쉼표로 지음*/
	font-family: "돋음";
}

.sign {
	float: right;
	padding-bottom: 16px;
}

.clauseIn {
	border: 1px solid black;
	width: 500px;
	height: 100px;
	overflow: scroll;
}

.signInfo {
	border: 1px solid black;
	width: 1100px;
	height: 100px;
	overflow: scroll;
}
/*여기까지*/

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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
                document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
    }
</script>
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
<% if(id.equals("insung")) { %>		<!-- 세센값의 아이디가 관리자 아이디와 같다면 밑에 코드 출력  -->
					<li class="topli"><a href="shop/system/login/logoutProc.jsp">로그아웃</a></li>
					<li class="topli"><a href="order/member/memberList.html">관리자페이지</a></li>
<% }else if(!id.equals("")) { %>    <!-- 로그인이 성공했다라면 id값에 데이터가 들어가있으므로 실행 -->
					<li class="topli"><a href="shop/system/login/logoutProc.jsp">로그아웃</a></li>
					<li class="topli"><a>적립금 : 650점</a></li>
					<li class="topli"><a href="guest/basket/Basket.html">장바구니</a></li>
					<li class="topli"><a href="guest/mypage/orderList.html">마이페이지</a></li>
<% }else { %> <!-- 세션값이 없다라면 실행 (로그인 안된상태) -->
					<li class="topli"><a href="shop/system/login/login.jsp">로그인</a></li>
					<li class="topli"><a href="guest/signUp/signUp.html">회원가입</a></li>
					<li class="topli"><a href="guest/basket/Basket.html">장바구니</a></li>
					<li class="topli"><a href="guest/mypage/orderList.html">마이페이지</a></li>
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
						<a href="../../main.html"><img src="../../img/logo.png" class="headlogo"></a>
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
			<h2>회원가입을 환영합니다.</h2>
			<hr>
			<section>
				<div class="text" style="border: 1px solid black;">
					<!-- 가입안내 -->
					<p>동의를 거부하시고자 하는 경우 회원정보변경을 통해 직접 탈퇴 진행 또는 고객센터로 요청할 수 있습니다.</p>
					<p>단, 동의거부에 따른 서비스사용에 제한이 있을 수 있습니다.</p>
					<p>- 고객센터 전화 : 1234-5678</p>
					<p>- 개인정보 이메일 : dlstjd@dlstjd.co.kr</p>
				</div>
			</section>

			<p>
<form action="signUpProc.jsp">
				<!-- 이용약관 -->
			<div class="container">
			
				<hr>
				<h4 style="padding-top: 16px;">약관동의</h4>
				<div class="row">
					<div class="col-sm-6">
						<ul>
							<li>이용약관 안내</li>
						</ul>
						<section class="clauseIn">

							<h4>총칙(목적)</h4>
							<p>본 약관은 인성문고㈜(이하 “회사”라 한다)와 인성문고 계열사가 제공하는 오프라인 영업장 및 온라인 상의
								인터넷 서비스(이하 “서비스”라 하며, 접속 가능한 유.무선 단말기의 종류와는 상관없이 이용 가능한 “회사”가
								제공하는 모든 “서비스”를 의미합니다)를 이용함에 있어서 “회사”와 이용자의 권리 의무 및 책임 사항을 규정함을
								목적으로 합니다. ※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을
								준용합니다」</p>

						</section>
						<input type="checkbox"> 동의합니다.
					</div>
					<div class="col-sm-6">
						<ul>
							<li>개인정보 동의 안내</li>
						</ul>
						<section class="clauseIn">
							<h4>회사 내부 방침에 의한 정보보유 사유</h4>
							<p>- 보존 항목 : 이름, 생년월일, 성별, 아이디(ID), 자택 전화번호, 자택 주소, 휴대전화번호,
								본인 확인기관을 통해 받은 식별정보</p>
							<p>- 보존 근거 : 서비스 이용의 혼선 방지, 불법적 사용자에 대한 관련 기관 수사 협조</P>
							<p>- 보존 기간 : 1년</p>

						</section>
						<input type="checkbox"> 동의합니다.
					</div>
				</div>
				<hr>
			</div>
			<div class="container">
				<h4 style="padding-top: 16px;">정보입력</h4>
				<section class="infoInput">
					<table class="table table-bordered">
						<tbody>
							<tr>
								<th>이 름</th>
								<td><input type="text" name="name"></td>
							</tr>
							<tr>
								<th>아이디</th>
								<td><input type="text" name="id"></td>
							</tr>
							<tr>
								<th>비 밀 번 호</th>
								<td><input type="password" placeholder="password"/></td>
							</tr>
							<tr>
								<th>비 밀 번 호 확 인</th>
								<td><input type="password" placeholder="password" name="password"/></td>
							</tr>
							<tr>
								<th>주민등록번호</th>
								<td><input type="number"  name="myNum1"/>-<input type="number"  name="myNum2"/></td>
							</tr>
							<tr>
								<th>나 이</th>
								<td><input type="number"  name="age"/></td>
							</tr>
							<tr>
								<th>성 별</th>
								<td><input type="radio" name="sex" value="여"/>여 <input type="radio"
									name="sex" value="남"/>남</td>
							</tr>
							<tr>
								<th>핸드폰 번호</th>
								<td><input type="tel" list="mobileNum" name="phoneNum1"> <datalist
										id="mobileNum">
										<option value="010"></option>
										<option value="019"></option>
										<option value="017"></option>
										<option value="016"></option>
									</datalist>-<input type="tel" name="phoneNum2"/>-<input type="tel" name="phoneNum3"/>
								 
							</tr>
							<tr>
								<th>E-Mail</th>
								<td><input type="text" name="email1">@<input type="text"
									list="emailList" name="email2"> <datalist id="emailList">
										<option value="naver.com"></option>
										<option value="daum.net"></option>
										<option value="hanmail.net"></option>
										<option value="gmail.net"></option>
									</datalist></td>
							</tr>
							
							<tr>
								<th>주 소</th>
								<td><input type="text" id="sample4_postcode" name="postal" placeholder="우편번호">
								<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
								<input type="text" id="sample4_roadAddress" name="address" size=50 placeholder="도로명주소">
								</td>
							</tr>
						</tbody>
					</table>
				</section>
			</div>
			<nav class="sign">
				<input type="submit" value="가입하기" /> <a href="../../main.jsp" style="text-color:black;"><input type="button"
					value="취소하기" /></a>
			</nav>
			</form>
		</div>
		
	</article>
	<!-- 바닥글 -->
	<div class="container">
		<footer>
			<div class="row">
				<ul class="footerul">
					<li class="footerli"><a href="../../footer/insungInfo.html">회사소개</a></li>
					<li class="footerli"><a href="../../footer/adInfo.html">광고안내</a></li>
					<li class="footerli"><a href="../../customerCenter/frequent10.html">고객센터</a></li>
					<li class="footerli"><a href="../../footer/agreementUtilization.html">이용약관</a></li>
					<li class="footerli"><a href="../../footer/individualInfo.html">개인정보처리</a></li>
					<li class="footerli"><a href="../../footer/pictureInfo.html">영상정보관리방침</a></li>
					<li class="footerli"><a href="../../footer/emailCollectBan.html">이메일무단복제금지</a></li>
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