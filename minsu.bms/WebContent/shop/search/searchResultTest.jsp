<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="minsu.bms.search.domain.SearchResult"%>
<%@ page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>검색결과</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
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
	<jsp:include page="../../header.jsp" />
	<article> 
<%
	List<SearchResult> searchResults = (List<SearchResult>)request.getAttribute("searchResults");
	
	String pageNum=request.getParameter("pageNum");
	int currentNum=0;
	int startNum=0;
	int endNum=0;
	int dataNum=0;
	int totalPageNum=0;
	int startDataNum=0;
	int endDataNum=0;
	
%>
	<div class="container">
		<div class="col-md-2"></div>
		<div class="col-md-10">
			<p>
				총 <%= searchResults.size() %>개의 상품이 검색되었습니다.
			</p>
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
			<%
				if(searchResults == null || searchResults.size()==0){
			%>
			<p>검색 결과가 없습니다.</p>
			<%
				}else{
					if(pageNum == null || pageNum.equals("")){
						currentNum=1;
					}else{
						currentNum=Integer.parseInt(pageNum);
					}
					dataNum=searchResults.size();
					totalPageNum=(dataNum-1)/10+1;
					startNum=(currentNum/10)*10+1;
					if(startNum/10 == totalPageNum/10){
						endNum=totalPageNum;
					}else{
						endNum=startNum+9;
					}
					startDataNum=(currentNum-1)*10+1;
					if(currentNum==totalPageNum){
						endDataNum=dataNum;
					}else{
						endDataNum=startNum*10;
					}
					for(int i=startDataNum; i<=endDataNum; i++){
						SearchResult searchResult = searchResults.get(i-1);
			%>
			<div class="row">
				<div class="col-md-2">
					<div>
						<a href="productInfo.jsp" class="thumbnail"> <img
							src="../../img/7.jpg">
						</a>
					</div>
				</div>
				<div class="col-md-7">
					<a href="productInfo.jsp">[<%= searchResult.getKind() %>]
					</a> <br> <br>
					<p>
						[<%= searchResult.getCountry() %>도서]<a href="productInfo.jsp"><%= searchResult.getBookName() %></a><br>
						<a href="productInfo.jsp"><%= searchResult.getWriter() %></a>(지은이)|<a
							href="productInfo.jsp"><%= searchResult.getCompany() %></a>|<%= searchResult.getPubliDate() %><br>
						<%= searchResult.getBookPrice() %>원 →<%= searchResult.getBookPrice()*9/10 %>원(10%
						할인), 마일리지 1,650점(5% 적립)<br> <br> 출고예상일 : 지금 주문하면 <b>3월
							10일 출고</b>예상 (출고후 1~2일 이내 수령)
					</p>
				</div>
				<div class="col-md-3">
					<input id="line checkbox" type="checkbox" />
					<p id="line">수량</p>
					<input id="line" type="number" size="3" min="0" /> <a
						href="../../guest/basket/Basket.jsp"><button id="block"
							type="button" class="btn btn-default btn-md">장바구니</button></a> <a
						href="../../guest/purchase/payment.jsp"><button id="block"
							type="button" class="btn btn-default btn-md">바로구매</button></a>
				</div>
			</div>
			<%
					}
				}
			%>
			<div class="row">
				<div class="col-sm-3"></div>
				<div class="col-sm-6">
					<div class="text-center" id="searchPageNum">
						<ul class="pagination pagination-sm" id="pageNum">
							<li><a href="searchResult.jsp" rel="prev">«</a></li>
							<%
								for(int j=startNum; j<=endNum; j++){
									if(j==currentNum){
							%>
										<li class="active"><a href="searchResultTest.jsp?pageNum=<%= j %>"><%= j %></a></li>
							<%
									}else{
							%>
										<li><a href="searchResultTest.jsp?pageNum=<%= j %>"><%= j %></a></li>
							<%	
									}	
								}
							%>
							<li><a href="#" rel="next">»</a></li>
							
						2	<%= currentNum %>
						1	<%= startNum %>
						2	<%= endNum %>
						18	<%= dataNum %>
						2	<%= totalPageNum %>
						1	<%= startDataNum %>
						18	<%= endDataNum %>

						</ul>
					</div>
					<div class="col-sm-3"></div>
				</div>
			</div>
		</div>
	</div>
	</article>
	<jsp:include page="../../footer.html" />
</body>
</html>
