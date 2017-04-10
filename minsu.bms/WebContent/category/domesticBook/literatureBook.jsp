<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>국내도서-문학</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<style>
/* 간단한 책 소개 */
.text{
	text-align : center;
}
.classification{
	color:blue;
}

/* a tag가... 색이 안변한다?? */
/* .aTag:link {
	text-decoration:none; color:black;
} */

.author{
	color:gray;
}
.price{
	color:red;
}
/* 여기까지 */



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


</style>
</head>
<body>
	<jsp:include page="../../header.jsp"/>
	<article>
		<div class="container">
			<!-- 사이드 네비 바 -->
			<div class="col-md-2">
				<nav class="nav-sidebar">
					<ul class="nav">
						<li class="nav-header"><strong> 국내도서</strong></li>
						<li class="active"><a href="literatureBook.html">문학</a></li>
						<li><a href="humanitiesBook.html">인문</a></li>
						<li><a href="referenceBook.html">참고서</a></li>
						<li><a href="besidesBook.html">기타</a></li>
						<li class="nav-divider"></li>
						<li class="nav-header"><strong> 해외도서</strong></li>
						<li><a href="../foreignBook/literatureBook.html">문학</a></li>
						<li><a href="../foreignBook/humanitiesBook.html">인문</a></li>
						<li><a href="../foreignBook/referenceBook.html">참고서</a></li>
						<li><a href="../foreignBook/besidesBook.html">기타</a></li>
					</ul>
				</nav>
			</div>
			
			<!--베스트셀러-->
			<div class="col-md-10">
				<div class="row">
					<h3>▶ 베스트셀러</h3>
					<div class="col-md-1"></div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/kM/kM1.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">한국 문화유산</a></b></div>
							<div class="author"><p>김영택</p></div>
							<div class="price"><p>18,000원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/kM/kM2.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">살아남지못한자들의책읽기</a></b></div>
							<div class="author"><p>박숙자</p></div>
							<div class="price"><p>14,900원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/kM/kM3.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">발트3국의언어와 근대문학</a></b></div>
							<div class="author"><p>서진석</p></div>
							<div class="price"><p>30,000원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/kM/kM4.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">귀신과 괴물</a></b></div>
							<div class="author"><p>강상순</p></div>
							<div class="price"><p>23,000원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/kM/kM5.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">운산역사기행</a></b></div>
							<div class="author"><p>박순진</p></div>
							<div class="price"><p>15,000원</p></div>
						</div>
					</div>
					<div class="col-md-1"></div>
				</div>
				
				<!--MD추천작-->
				<div class="row">
					<h3>▶ MD추천작</h3>
					<div class="col-md-1"></div>
					<div class="col-md-2">

						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/kM/kM6.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">감의 빛깔들</a></b></div>
							<div class="author"><p>정홍섭</p></div>
							<div class="price"><p>13,000원</p></div>
						</div>
					</div>

					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/kM/kM7.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">한국대중문화예술사</a></b></div>
							<div class="author"><p>김정섭</p></div>
							<div class="price"><p>30,000원</p></div>
						</div>
					</div>

					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/kM/kM8.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">한국문헌해제</a></b></div>
							<div class="author"><p>허권수</p></div>
							<div class="price"><p>40,000원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/kM/kM9.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">일본문화의 이해</a></b></div>
							<div class="author"><p>이영숙</p></div>
							<div class="price"><p>12,000원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/kM/kM10.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">문화는정치다</a></b></div>
							<div class="author"><p>김진해</p></div>
							<div class="price"><p>12,000원</p></div>
						</div>
					</div>
					<div class="col-md-1"></div>
				</div>
				
				<!--신작-->
				<div class="row">
					<h3>▶ N E W</h3>
					<div class="col-md-1"></div>
					<div class="col-md-2">

						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/kM/kM11.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">무형문화재를 만나다</a></b></div>
							<div class="author"><p>나지혜</p></div>
							<div class="price"><p>20,000원</p></div>
						</div>
					</div>

					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/kM/kM12.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">중국문학의 탄생</a></b></div>
							<div class="author"><p>권용호</p></div>
							<div class="price"><p>23,000원</p></div>
						</div>
					</div>

					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/kM/kM13.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">세계식문화사</a></b></div>
							<div class="author"><p>공혜진</p></div>
							<div class="price"><p>20,000원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/kM/kM14.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">졸혼 시대</a></b></div>
							<div class="author"><p>장은주</p></div>
							<div class="price"><p>15,000원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/kM/kM15.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">독일문화산책</a></b></div>
							<div class="author"><p>김선형</p></div>
							<div class="price"><p>15,000원</p></div>
						</div>
					</div>
					<div class="col-md-1"></div>
				</div>
				
				<!--오늘의도서-->
				<div class="row">
					<h3>▶ 오늘의 도서</h3>
					<div class="col-md-1"></div>
					<div class="col-md-2">

						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/kM/kM16.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">컬처 DNA</a></b></div>
							<div class="author"><p>이미소</p></div>
							<div class="price"><p>16,200원</p></div>
						</div>
					</div>

					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/kM/kM17.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">안목</a></b></div>
							<div class="author"><p>유홍준</p></div>
							<div class="price"><p>18,000원</p></div>
						</div>
					</div>

					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/kM/kM18.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">조선족 재발견</a></b></div>
							<div class="author"><p>한주</p></div>
							<div class="price"><p>11,700원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/kM/kM19.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">축제에서 일주일을</a></b></div>
							<div class="author"><p>김성일</p></div>
							<div class="price"><p>11,520원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/kM/kM20.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">음식패설</a></b></div>
							<div class="author"><p>김정희</p></div>
							<div class="price"><p>11,700원</p></div>
						</div>
					</div>
					<div class="col-md-1"></div>
				</div>
			</div>
		</div>
	</article>
<jsp:include page="../../footer.html"/>
</body>
</html>