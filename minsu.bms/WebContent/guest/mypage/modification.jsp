<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="minsu.bms.login.service.SignUp" %>
<%@ page import="minsu.bms.login.service.SignUpImpl" %>
<%@ page import="minsu.bms.config.Configuration"%>
<%@ page import="minsu.bms.login.dao.LoginDao"%>
<%@ page import="minsu.bms.login.dao.LoginDaoImpl"%>
<%@ page import="minsu.bms.login.dao.mapper.LoginMapper"%>
<%@ page import="minsu.bms.login.domain.User"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>회원정보수정</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<style>
/*사이드바*/
. 
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
					<li class="topli"><a
						href="shop/login/logoutProc.jsp">로그아웃</a></li>
					<li class="topli"><a
						href="order/member/memberList.jsp">관리자페이지</a></li>
					<% }else if(!id.equals("")) { %>
					<!-- 로그인이 성공했다라면 id값에 데이터가 들어가있으므로 실행 -->
					<li class="topli"><a href="shop/login/logoutProc.jsp">로그아웃</a></li>
					<li class="topli"><a>적립금 : 650점</a></li>
					<li class="topli"><a href="guest/basket/Basket.jsp">장바구니</a></li>
					<li class="topli"><a href="guest/mypage/orderList.jsp">마이페이지</a></li>
					<% }else { %>
					<!-- 세션값이 없다라면 실행 (로그인 안된상태) -->
					<li class="topli"><a
						href="shop/login/login.jsp">로그인</a></li>
					<li class="topli"><a
						href="guest/signUp/signUp.jsp">회원가입</a></li>
					<li class="topli"><a href="guest/basket/Basket.jsp">장바구니</a></li>
					<li class="topli"><a href="guest/mypage/orderList.jsp">마이페이지</a></li>
					<% } %>
<%
		LoginMapper loginMapper = Configuration.getMapper(LoginMapper.class);
		LoginDao loginDao = new LoginDaoImpl(loginMapper);
		SignUp signUp = new SignUpImpl(loginDao);
		User user=signUp.findUser(id);
%>					
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
<div class="container">
<div class="row">
				<div class="col-md-2">
				<nav class="nav-sidebar">
        <ul class="nav">
        	<li class="nav-header"><strong> 주문관리</strong></li>
            <li ><a href="orderList.html"> 주문조회</a></li>
            <li><a href="../basket/Basket.html"> 장바구니</a></li>
            <li><a href="purchaseList.html">구매내역</a></li>
            <li><a href="refundDetail.html">취소/교환내역</a></li>
            <li class="nav-divider"></li>
     		<li class="nav-header"><strong> 나의 정보</strong></li>
            <li class="active"><a href="../../shop/system/idCheck.html"> 회원정보 수정</a></li>
            <li><a href="../../shop/system/idCheck1.html"> 회원 탈퇴</a></li>
            <li class="nav-divider"></li>
            <li class="nav-header"><strong> 나의 상담</strong></li>

            <li ><a href="customCenter2.html"> 나의 상담 내역</a></li>

            <li ><a href="../customerCenter/queryListProc.jsp"> 나의 상담 내역</a></li>

            <li ><a href="../customerCenter/queryListProc.jsp"> 나의 상담 내역</a></li>

        </ul>
    </nav>
				</div>
				<div class="col-md-10">
				<form action="../../shop/system/updateSuccessProc.jsp">
				<h4 style="padding-top: 16px;">회원정보 수정</h4>
				<section class="infoInput">
					<table class="table table-bordered">
						<tbody>
							<tr>
								<th>이 름</th>
								<td><input type="text" readOnly="readOnly" value="<%=user.getName()%>" name="name"></td>
							</tr>
							<tr>
								<th>아이디</th>
								<td><input type="text" readOnly="readOnly" value="<%=user.getUserId()%>" name="id"></td>
							</tr>
							<tr>
								<th>비 밀 번 호</th>
								<td><input type="password" placeholder="password" />대,소문자,특수기호, 숫자 사용가능</td>
							</tr>
							<tr>
								<th>비 밀 번 호 확 인</th>
								<td><input type="password" placeholder="password" name="password" /></td>
							</tr>
							<tr>
								<th>주민등록번호</th>
								<td><input type="text" readOnly="readOnly" value="<%=user.getMyNum() %>" name="myNum">
							</tr>
							<tr>
								<th>나이</th>
								<td><input type="number" readOnly="readOnly" value="<%=user.getAge() %>" name="age">
							</tr>
				
							<%
							String gender = user.getGender();
							if(gender.equals("여")){%>
							<tr>
								<th>성 별</th>
								<td><input type="radio" name="sex" checked="checked"/>여 <input type="radio"
									name="sex" disabled/>남</td>
							</tr>
							<%}else{ %>
							<tr>
								<th>성 별</th>
								<td><input type="radio" name="sex" disabled/>여 <input type="radio"
									name="sex" checked="checked"/>남</td>
							</tr>
							<%} %>
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
			
			<nav  style="float:right;">
				<input type="submit" value="수정하기" /> <a href="../../main.html" style="text-color:black;"><input type="button"
					value="취소하기" /></a>
			</nav>
			</form>
			</div>
		</div>
		</div>
		<br>
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
