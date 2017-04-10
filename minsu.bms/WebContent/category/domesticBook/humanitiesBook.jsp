
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>국내도서-인문</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
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

.nav-header{
	color : #909090;
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
					<li><a href="literatureBook.html">문학</a></li>
					<li class="active"><a href="humanitiesBook.html">인문</a></li>
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

		<div class="col-md-10">
			<!-- 베스트셀러 -->
			<div class="row">
				<h3>▶ 베스트셀러</h3>
				<div class="col-md-1"></div>
				<div class="col-md-2">

					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kI/kI1.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">냉철한 그리고 분노하는</a></b></div>
							<div class="author"><p>김유정</p></div>
							<div class="price"><p>12,000원</p></div>
						</div>
					
				</div>

				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kI/kI2.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">앞으로의 책방</a></b></div>
							<div class="author"><p>문희언</p></div>
							<div class="price"><p>12,000원</p></div>
						</div>
				</div>

				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kI/kI3.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">살아있는 것도 나눔이다</a></b></div>
							<div class="author"><p>전성실</p></div>
							<div class="price"><p>15,000원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kI/kI4.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">악의 시대를 건너는 힘</a></b></div>
							<div class="author"><p>강상중</p></div>
							<div class="price"><p>11,500원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kI/kI5.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">생각이 바뀌는 의자</a></b></div>
							<div class="author"><p>맹명관</p></div>
							<div class="price"><p>14,000원</p></div>
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
						src="../../img/kI/kI6.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">열린사고와 표현</a></b></div>
							<div class="author"><p>김종기</p></div>
							<div class="price"><p>25,000원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kI/kI7.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">인문학과 아완</a></b></div>
							<div class="author"><p>임기중</p></div>
							<div class="price"><p>38,000원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kI/kI8.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">아픔에 대하여</a></b></div>
							<div class="author"><p>김희상</p></div>
							<div class="price"><p>16,000원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kI/kI9.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">시민의 확장</a></b></div>
							<div class="author"><p>김효연</p></div>
							<div class="price"><p>12,000원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kI/kI10.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">지식과 책</a></b></div>
							<div class="author"><p>이창우</p></div>
							<div class="price"><p>52,000원</p></div>
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
						src="../../img/kI/kI11.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">훼밍웨이의 말</a></b></div>
							<div class="author"><p>권진아</p></div>
							<div class="price"><p>13,500원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kI/kI12.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">여자들의 사회</a></b></div>
							<div class="author"><p>노지양</p></div>
							<div class="price"><p>16,000원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kI/kI13.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">울림의 공백</a></b></div>
							<div class="author"><p>박이문</p></div>
							<div class="price"><p>8,800원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kI/kI14.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">인식과 실존</a></b></div>
							<div class="author"><p>박이문</p></div>
							<div class="price"><p>8,800원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kI/kI15.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">노년 예술 수업</a></b></div>
							<div class="author"><p>고영직</p></div>
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
						src="../../img/kI/kI16.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">놀이하는 인간</a></b></div>
							<div class="author"><p>윤종석</p></div>
							<div class="price"><p>13,500원</p></div>
						</div>
				</div>

				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kI/kI17.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">원더랜드</a></b></div>
							<div class="author"><p>홍지수</p></div>
							<div class="price"><p>14,400원</p></div>
						</div>
				</div>

				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kI/kI18.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">미각의 비밀</a></b></div>
							<div class="author"><p>이충호</p></div>
							<div class="price"><p>14,400원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kI/kI19.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">몸여인</a></b></div>
							<div class="author"><p>오미경</p></div>
							<div class="price"><p>13,320원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kI/kI20.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">기억다루기</a></b></div>
							<div class="author"><p>신헌</p></div>
							<div class="price"><p>15,000원</p></div>
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