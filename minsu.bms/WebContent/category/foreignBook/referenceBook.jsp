<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>해외도서-참고서</title>
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
						<li><a href="../domesticBook/literatureBook.html">문학</a></li>
						<li><a href="../domesticBook/humanitiesBook.html">인문</a></li>
						<li><a href="../domesticBook/referenceBook.html">참고서</a></li>
						<li><a href="../domesticBook/besidesBook.html">기타</a></li>
						<li class="nav-divider"></li>
						<li class="nav-header"><strong> 해외도서</strong></li>
						<li><a href="literatureBook.html">문학</a></li>
						<li><a href="humanitiesBook.html">인문</a></li>
						<li class="active"><a href="referenceBook.html">참고서</a></li>
						<li><a href="besidesBook.html">기타</a></li>
					</ul>
				</nav>
			</div>

			<div class="col-md-10">
				<!--베스트셀러-->
				<div class="row">
					<h3>▶ 베스트셀러</h3>
					<div class="col-md-1"></div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/wC/wC1.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">Wonder</a></b></div>
							<div class="author"><p>R.J 팔라시오</p></div>
							<div class="price"><p>11,100원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/wC/wC2.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">The Witches</a></b></div>
							<div class="author"><p>로알드 달</p></div>
							<div class="price"><p>9,000원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/wC/wC3.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">Smart Phonics 2</a></b></div>
							<div class="author"><p>이퓨쳐 편집부</p></div>
							<div class="price"><p>6,000원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/wC/wC4.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">Dog</a></b></div>
							<div class="author"><p>에밀리 </p></div>
							<div class="price"><p>10,800원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/wC/wC5.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">Hatchet</a></b></div>
							<div class="author"><p>게리 폴슨</p></div>
							<div class="price"><p>9,500원</p></div>
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
							src="../../img/wC/wC6.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">Number the Stars</a></b></div>
							<div class="author"><p>로이스 로리</p></div>
							<div class="price"><p>9,500원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/wC/wC7.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">Maniac Magee</a></b></div>
							<div class="author"><p>제리 스피넬리</p></div>
							<div class="price"><p>9,500원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/wC/wC8.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">Happy Pig Day!</a></b></div>
							<div class="author"><p>Mo Willems</p></div>
							<div class="price"><p>11,900원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/wC/wC9.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">Gangsta Granny</a></b></div>
							<div class="author"><p>David Walliams</p></div>
							<div class="price"><p>13,300원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/wC/wC10.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">The Outsiders</a></b></div>
							<div class="author"><p>S. E. 힌튼</p></div>
							<div class="price"><p>11,900원</p></div>
						</div>
					</div>
					<div class="col-md-1"></div>
				</div>

				<!--신간-->
				<div class="row">
					<h3>▶ N E W</h3>
					<div class="col-md-1"></div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/wC/wC11.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">Matilda</a></b></div>
							<div class="author"><p>로알드 달</p></div>
							<div class="price"><p>8,500원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/wC/wC12.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">River Boy</a></b></div>
							<div class="author"><p>팀 보울러</p></div>
							<div class="price"><p>9,500원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/wC/wC13.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">Homo Deus</a></b></div>
							<div class="author"><p>Yuval Noah Harari</p></div>
							<div class="price"><p>26,000원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/wC/wC14.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">From Head to Toe</a></b></div>
							<div class="author"><p>에릭 칼</p></div>
							<div class="price"><p>9,500원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/wC/wC15.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">No, David</a></b></div>
							<div class="author"><p>데이빗 섀논</p></div>
							<div class="price"><p>7,200원</p></div>
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
							src="../../img/wC/wC16.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">Bud, Not Buddy</a></b></div>
							<div class="author"><p>크리스토퍼 <br>폴 커티스</p></div>
							<div class="price"><p>8,000원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/wC/wC17.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">My Dad</a></b></div>
							<div class="author"><p>앤서니 브라운</p></div>
							<div class="price"><p>11,900원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/wC/wC18.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">Will You Be There?</a></b></div>
							<div class="author"><p>기욤 뮈소</p></div>
							<div class="price"><p>16,200원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/wC/wC19.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">The History Boys</a></b></div>
							<div class="author"><p>Alan Bennett</p></div>
							<div class="price"><p>16,900원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
							src="../../img/wC/wC20.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">Nicholas</a></b></div>
							<div class="author"><p>Rene Goscinny</p></div>
							<div class="price"><p>13,370원</p></div>
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