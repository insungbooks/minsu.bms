
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>국내도서-기타</title>
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
					<li><a href="humanitiesBook.html">인문</a></li>
					<li><a href="referenceBook.html">참고서</a></li>
					<li class="active"><a href="besidesBook.html">기타</a></li>
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
			<!--베스트셀러-->
			<div class="row">
				<h3>▶ 베스트셀러</h3>
				<div class="col-md-1"></div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kG/kG1.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">5년 후 나에게</a></b></div>
							<div class="author"><p>정지현</p></div>
							<div class="price"><p>14,800원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kG/kG2.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">혜민스님의 따뜻한응원</a></b></div>
							<div class="author"><p>혜민</p></div>
							<div class="price"><p>14,000원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kG/kG3.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">보리 국어사전</a></b></div>
							<div class="author"><p>윤구병</p></div>
							<div class="price"><p>60,000원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kG/kG4.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">30일간의 글씨연습</a></b></div>
							<div class="author"><p>이해수</p></div>
							<div class="price"><p>12,000원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kG/kG5.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">부릉부릉 자동차가좋아</a></b></div>
							<div class="author"><p>황윤영</p></div>
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
						src="../../img/kG/kG6.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">블로노트</a></b></div>
							<div class="author"><p>타블로</p></div>
							<div class="price"><p>13,000원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kG/kG7.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">롱맨 영영한사전</a></b></div>
							<div class="author"><p>금성출판사</p></div>
							<div class="price"><p>35,000원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kG/kG8.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">동아 현대활용옥편</a></b></div>
							<div class="author"><p>동아출판</p></div>
							<div class="price"><p>21,000원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kG/kG9.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">10미터만 더 뛰어봐!</a></b></div>
							<div class="author"><p>김영식</p></div>
							<div class="price"><p>12,000원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kG/kG10.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">어린이 첫 그림 속담사전</a></b></div>
							<div class="author"><p>글송이</p></div>
							<div class="price"><p>10,000원</p></div>
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
						src="../../img/kG/kG11.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">날마다 미니멀 라이프</a></b></div>
							<div class="author"><p>박미현</p></div>
							<div class="price"><p>13,800원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kG/kG12.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">천연발효빵 만들기</a></b></div>
							<div class="author"><p>최화영</p></div>
							<div class="price"><p>18,000원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kG/kG13.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">동화로 만나는 프랑수자수</a></b></div>
							<div class="author"><p>박성희</p></div>
							<div class="price"><p>15,800원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kG/kG14.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">한입에 캐릭터 도시락</a></b></div>
							<div class="author"><p>박선희</p></div>
							<div class="price"><p>8,800원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kG/kG15.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">DIY 천연화장품</a></b></div>
							<div class="author"><p>이혜리</p></div>
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
						src="../../img/kG/kG16.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">무한도전 컬러링북</a></b></div>
							<div class="author"><p>무한도전</p></div>
							<div class="price"><p>12,600원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kG/kG17.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">스티커 아트북:네이처</a></b></div>
							<div class="author"><p>싸이프레스</p></div>
							<div class="price"><p>13,860원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kG/kG18.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">윅트</a></b></div>
							<div class="author"><p>권현정</p></div>
							<div class="price"><p>11,700원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kG/kG19.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">내 아이 키 10cm 더 키우기</a></b></div>
							<div class="author"><p>김부용</p></div>
							<div class="price"><p>13,500원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.html" class="thumbnail"> <img
						src="../../img/kG/kG20.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.html">면역이 암을 이긴다</a></b></div>
							<div class="author"><p>이시형</p></div>
							<div class="price"><p>13,500원</p></div>
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