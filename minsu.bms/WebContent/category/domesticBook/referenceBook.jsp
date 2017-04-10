
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>국내도서-참고서</title>
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
						<li><a href="literatureBook.jsp">문학</a></li>
						<li ><a href="humanitiesBook.jsp">인문</a></li>
						<li class="active"><a href="referenceBook.jsp">참고서</a></li>
						<li><a href="besidesBook.jsp">기타</a></li>
						<li class="nav-divider"></li>
						<li class="nav-header"><strong> 해외도서</strong></li>
						<li><a href="../foreignBook/literatureBook.jsp">문학</a></li>
						<li><a href="../foreignBook/humanitiesBook.jsp">인문</a></li>
						<li><a href="../foreignBook/referenceBook.jsp">참고서</a></li>
						<li><a href="../foreignBook/besidesBook.jsp">기타</a></li>
					</ul>
				</nav>
			</div>

			<div class="col-md-10">
				<!--베스트셀러-->
				<div class="row">
					<h3>▶ 베스트셀러</h3>
					<div class="col-md-1"></div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/kC/kC1.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">공부의기술</a></b></div>
							<div class="author"><p>박기원</p></div>
							<div class="price"><p>15,000원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/kC/kC2.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">공부 잘되는 상상</a></b></div>
							<div class="author"><p>김성규</p></div>
							<div class="price"><p>14,000원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/kC/kC3.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">고1 생활백서</a></b></div>
							<div class="author"><p>송수연</p></div>
							<div class="price"><p>10,000원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/kC/kC4.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">공부속독법</a></b></div>
							<div class="author"><p>박인수</p></div>
							<div class="price"><p>15,000원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/kC/kC5.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">강성태 66일 공부법</a></b></div>
							<div class="author"><p>강성태</p></div>
							<div class="price"><p>13,800원</p></div>
						</div>
					</div>
					<div class="col-md-1"></div>
				</div>

				<!--MD추천작-->
				<div class="row">
					<h3>▶ MD추천작</h3>
					<div class="col-md-1"></div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/kC/kC6.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">컴퓨터 그대로따라하기</a></b></div>
							<div class="author"><p>혜지원</p></div>
							<div class="price"><p>18,000원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/kC/kC7.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">신경망 첫걸음</a></b></div>
							<div class="author"><p>송교석</p></div>
							<div class="price"><p>25,000원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/kC/kC8.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">콘솔 워즈</a></b></div>
							<div class="author"><p>이미령</p></div>
							<div class="price"><p>28,000원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/kC/kC9.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">러닝 PHP</a></b></div>
							<div class="author"><p>정병열/p></div>
							<div class="price"><p>32,000원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/kC/kC10.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Go 웹프로그래밍</a></b></div>
							<div class="author"><p>정진욱</p></div>
							<div class="price"><p>25,000원</p></div>
						</div>
					</div>
					<div class="col-md-1"></div>
				</div>

				<!--신간-->
				<div class="row">
					<h3>▶ N E W</h3>
					<div class="col-md-1"></div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/kC/kC11.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">처음만나는 파이썬</a></b></div>
							<div class="author"><p>이동규</p></div>
							<div class="price"><p>22,000원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/kC/kC12.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">스케일링 린</a></b></div>
							<div class="author"><p>최원식</p></div>
							<div class="price"><p>27,000원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/kC/kC13.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">세무사 회사법전</a></b></div>
							<div class="author"><p>정태덕</p></div>
							<div class="price"><p>18,000원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/kC/kC14.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">공무원 화학</a></b></div>
							<div class="author"><p>안창호</p></div>
							<div class="price"><p>30,000원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/kC/kC15.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">정통 형법각론</a></b></div>
							<div class="author"><p>정통</p></div>
							<div class="price"><p>20,000원</p></div>
						</div>
					</div>
					<div class="col-md-1"></div>
				</div>

				<!--오늘의도서-->
				<div class="row">
					<h3>▶ 오늘의 도서</h3>
					<div class="col-md-1"></div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/kC/kC16.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">비서 한권으로 끝내기</a></b></div>
							<div class="author"><p>비서교육연구소</p></div>
							<div class="price"><p>29,700원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/kC/kC17.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">떠먹는 국어문학</a></b></div>
							<div class="author"><p>페다고지</p></div>
							<div class="price"><p>14,850원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/kC/kC18.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">자동차정비기능사</a></b></div>
							<div class="author"><p>전환영</p></div>
							<div class="price"><p>22,500원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/kC/kC19.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">LG그룹 인적성검사</a></b></div>
							<div class="author"><p>한국고시회</p></div>
							<div class="price"><p>17,550원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/kC/kC20.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[참고서]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">기본강의 헌법</a></b></div>
							<div class="author"><p>김유향</p></div>
							<div class="price"><p>38,000원</p></div>
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