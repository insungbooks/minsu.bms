<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<style>
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
	background-color:#FFFFFF; /*배경색 흰색*/
	border: 1px solid black; /*테두리선*/
	height: 180px; /*높이*/
}

.headlogo {
	width: 110px;
	height: 110px;
	margin: none;
}

a {
	text-1decoration: none; /* 밑줄 없앰 */
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
</style>
</head>
<body>
<div class="container">
		<!-- 위에 고정바 -->
		<nav class="btnRight navbar-fixed-top">
			<div class="container">
				<ul class="topul">
<%
	//session.setAttribute("back", request.getRequestURL());
	String id = ""; 
	if(session.getAttribute("login")!=null) {		//세션값이 비어있지 않다라면
		id = (String)session.getAttribute("login"); //세션값 추출하고 저장
	}
%>
					<% if(id.equals("insung")) { %>
					<!-- 세센값의 아이디가 관리자 아이디와 같다면 밑에 코드 출력  -->
					<li class="topli"><a
						href="../../shop/login/logoutProc.jsp">로그아웃</a></li>
					<li class="topli"><a
						href="../../order/member/memberList.jsp">관리자페이지</a></li>
					<% }else if(!id.equals("")) { %>
					<!-- 로그인이 성공했다라면 id값에 데이터가 들어가있으므로 실행 -->
					<li class="topli"><a href="../../shop/login/logoutProc.jsp">로그아웃</a></li>
					<li class="topli"><a>적립금 : 650점</a></li>
					<li class="topli"><a href="../../guest/basket/Basket.jsp">장바구니</a></li>
					<li class="topli"><a href="../../guest/mypage/orderList.jsp">마이페이지</a></li>
					<% }else { %>
					<!-- 세션값이 없다라면 실행 (로그인 안된상태) -->
					<li class="topli"><a
						href="../../shop/login/login.jsp">로그인</a></li>
					<li class="topli"><a
						href="../../guest/signUp/signUp.jsp">회원가입</a></li>
					<li class="topli"><a href="../../guest/basket/Basket.jsp">장바구니</a></li>
					<li class="topli"><a href="../../guest/mypage/orderList.jsp">마이페이지</a></li>
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
						<a href="../../main.jsp"><img src="../../img/logo.png" class="headlogo"></a>
					</div>
					<div class="col-md-7">
						<form action="../../shop/search/searchResultProc.jsp">
							<div class="input-group" class="searchBar" style="margin: 80px;">
								<div class="input-group-btn search-panel">
									<button type="button" class="btn btn-default ">
										<SELECT name=searchOption style="border: none;">
											<OPTION value=bookTitle>도서명</OPTION>
											<OPTION value=writer>저자</OPTION>
											<OPTION value=company>출판사</OPTION>
										</SELECT>
									</button>
								</div>
								<input type="text" class="form-control" name="searchText"
									placeholder="입력하세요"> <span class="input-group-btn">
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
								<a href="../../category/categoryBook/bestBook.jsp"><button class="dropbtn">베스트셀러</button></a>
							</div>
							<div class="dropdown">
								<a href="../../category/categoryBook/newBook.jsp"><button class="dropbtn">신간도서</button></a>
							</div>
							<div class="dropdown">
								<a href="../../category/categoryBook/saleBook.jsp"><button class="dropbtn">할인도서</button></a>
							</div>
							<div class="dropdown">
								<button class="dropbtn">
									국내도서 <span class="glyphicon glyphicon-chevron-down"></span>
								</button>
								<div class="dropdown-content">
									<a href="../../category/domesticBook/literatureBook.jsp">문학</a> 
									<a href="../../category/domesticBook/humanitiesBook.jsp">인문</a> 
									<a href="../../category/domesticBook/referenceBook.jsp">참고서</a>
									<a href="../../category/domesticBook/besidesBook.jsp">기타</a>
								</div>
							</div>
							<div class="dropdown">
								<button class="dropbtn">
									해외도서 <span class="glyphicon glyphicon-chevron-down"></span>
								</button>
								<div class="dropdown-content">
									<a href="../../category/foreignBook/literatureBook.jsp">문학</a> 
									<a href="../../category/foreignBook/humanitiesBook.jsp">인문</a> 
									<a href="../../category/foreignBook/referenceBook.jsp">참고서</a>
									<a href="../../category/domesticBook/besidesBook.jsp">기타</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</nav>
		</div>
	</div>
	
	<!-- //메뉴바 -->

	<!-- //상단 -->
</body>
</html>