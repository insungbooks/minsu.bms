<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="minsu.bms.search.domain.SearchResult"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>검색결과</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
.nav {
	border-top: 1px solid black;
	border-bottom: 1px solid black;
}

/* Style The Dropdown Button */
.dropbtn1 {
	background-color: #ffffff;
	padding: 16px;
	font-size: 13px;
	border: none;
	cursor: pointer;
	float: center;
	display: inline-block;
}

/* The container <div> - needed to position the dropdown content */
.dropdown1 {
	position: relative;
	display: inline-block;
	padding-right: 30px;
	padding-left: 50px;
}

/* 드롭다운 아래
.dropdown-content {
	display: none;
	position: absolute;
	background-color: #ffffff;
	min-width: 100px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}*/

/* 드롭다운 아래 링크
.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
} */

/* Change color of dropdown links on hover 
.dropdown-content a:hover {
	background-color: #ffffff;
}*/

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
	display: block;
}

#searchPageNum {
	float: left;
}

#optBtn {
	float: right;
}

#line {
	display: inline;
	width: 50px;
}

#block {
	display: block;
	margin-top: 10px;
	width: 150px;
}
/*search end*/

article { /*본문*/
	background-color: white;
	height: 400px;
}

</style>
</head>
<body>
<article>

<%
	if(request.getAttribute("books") != null) {
		List<SearchResult> searchResults = (List<SearchResult>)request.getAttribute("searchResults");
			for(SearchResult searchResult : searchResults) {
%>
				<%=searchResult.getBookCode() %>
				<td><%= searchResult.getBookCode() %>
				<td><%= searchResult.getKind() %>
				<td><%= searchResult.getBookName() %>
				<td><%= searchResult.getWriter() %>
				<td><%= searchResult.getCompany() %>
				<td><%= searchResult.getPubliDate() %>
				<td><%= searchResult.getBookPrice() %>
<%
			}
	}
%>


	<div class="container">
		<div class="col-md-2"></div>
		<div class="col-md-10">
			<p>총 n개의 상품이 검색되었습니다.</p>
			<div class="navbar">
				<nav class="navbar">
					<div class="row">
						<div class="nav">
							<div class="dropdown1">
								<button class="dropbtn1">판매량순</button>
								<button class="dropbtn1">상품평순</button>
								<button class="dropbtn1">평점순</button>
								<button class="dropbtn1">리뷰순</button>
								<button class="dropbtn1">출간일순</button>
								<button class="dropbtn1">저가격순</button>
								<!-- 옵션선택/품절포함 박스는 왜 길게 나오지?? 고치려는데 잘 안되네 -->
								<button class="dropbtn1">
									옵션선택 <span class="glyphicon glyphicon glyphicon-chevron-down"></span>
								</button>
								<!-- 
								 <div class="dropdown-content">
									<a href="#">옵션1</a>
									<a href="#">옵션2</a>
									<a href="#">옵션3</a>
									<a href="#">옵션4</a>
								</div>
								-->
								<button class="dropbtn1">
									품절포함 <span class="glyphicon glyphicon glyphicon-chevron-down"></span>
								</button>
								<!-- 
								 <div class="dropdown-content">
									<a href="#">포함</a>
									<a href="#">미포함</a>
								</div>
								-->
							</div>
						</div>
					</div>
				</nav>
			</div>

			<div class="row">

				<div id="optBtn">
					<a href="#" class="btn btn-default btn-sm">전체선택</a> <a href="#"
						class="btn btn-default btn-sm">장바구니 담기</a>
				</div>
			</div>
			<br>

			<div class="row">
				<div class="col-md-2">
					<div>
						<a href="productInfo.html" class="thumbnail"> <img
							src="../../img/7.jpg">
						</a>
					</div>
				</div>
				<div class="col-md-7">
					<a href="productInfo.html">[대학교재수험서.외어.컴퓨터.-자수 에코백/파우치 외 사은품
						10종]</a> <br> <br>
					<p>
						[국내도서]<a href="productInfo.html">어서와 JAVA는 처음이지!</a><br> 
						<a href="productInfo.html">전인국</a>(지은이)|<a href="productInfo.html">인피니티북스</a>|2015년11월<br>
						33,000원 →<b>29,700</b>(10% 할인), 마일리지 1,650점(5% 적립)<br> <br>
						출고예상일 : 지금 주문하면 <b>3월 10일 출고</b>예상 (출고후 1~2일 이내 수령)
					</p>
				</div>
				<div class="col-md-3">
					<input id="line checkbox" type="checkbox" />
					<p id="line">수량</p>
					<input id="line" type="number" size="3" min="0" /> <a
						href="../../guest/basket/Basket.html"><button id="block"
							type="button" class="btn btn-default btn-md">장바구니</button></a> <a
						href="../../guest/purchase/payment.html"><button id="block"
							type="button" class="btn btn-default btn-md">바로구매</button></a>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-3"></div>
				<div class="col-sm-6">
					<div class="text-center" id="searchPageNum">
						<!-- 페이지숫자 테두리 없는게 더 깔끔하겠지? 내일 고칠게/  그리고 이게 검색된책들 아래가 아니고, 위에 오는게 맞아? -->
						<ul class="pagination pagination-sm" id="pageNum">
							<li><a href="searchResult.html" rel="prev">«</a></li>
							<li><a href="searchResult.html">1</a></li>
							<li class="active"><a href="searchResult1.html">2</a></li>
							<!--  <li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">6</a></li>
							<li><a href="#">7</a></li>
							<li><a href="#">8</a></li>
							<li><a href="#">9</a></li>
							<li><a href="#">10</a></li>-->
							<li><a href="#" rel="next">»</a></li>
						</ul>
					</div>
					<div class="col-sm-3"></div>

				</div>
			</div>
		</div>
	</div>
</article>
</body>
</html>