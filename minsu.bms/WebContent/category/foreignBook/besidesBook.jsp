<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>해외도서-기타</title>
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
					<li><a href="../domesticBook/literatureBook.jsp">문학</a></li>
					<li><a href="../domesticBook/humanitiesBook.jsp">인문</a></li>
					<li><a href="../domesticBook/referenceBook.jsp">참고서</a></li>
					<li><a href="../domesticBook/besidesBook.jsp">기타</a></li>
					<li class="nav-divider"></li>
					<li class="nav-header"><strong> 해외도서</strong></li>
					<li><a href="literatureBook.jsp">문학</a></li>
					<li><a href="humanitiesBook.jsp">인문</a></li>
					<li><a href="referenceBook.jsp">참고서</a></li>
					<li class="active"><a href="besidesBook.jsp">기타</a></li>
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
						src="../../img/wG/kG1.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">PRADE, HC</a></b></div>
							<div class="author"><p>Miuccia Prade</p></div>
							<div class="price"><p>15,500원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wG/kG2.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Kinfolk Volume 12</a></b></div>
							<div class="author"><p>Nathan Williams</p></div>
							<div class="price"><p>21,060원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wG/kG3.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Let' Go WorkBook</a></b></div>
							<div class="author"><p>이퍼블릭코리아</p></div>
							<div class="price"><p>13,000원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wG/kG4.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">The One Thing</a></b></div>
							<div class="author"><p>Philippin, Frank</p></div>
							<div class="price"><p>25.200원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wG/kG5.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Me Before You</a></b></div>
							<div class="author"><p>조조 모예스</p></div>
							<div class="price"><p>14,400원</p></div>
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
						src="../../img/wG/kG6.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Holes</a></b></div>
							<div class="author"><p>루이스 새커</p></div>
							<div class="price"><p>8,100원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wG/kG7.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Charlotte's Web</a></b></div>
							<div class="author"><p>E.B 화이트</p></div>
							<div class="price"><p>8,550원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wG/kG8.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Who Moved My Cheese?</a></b></div>
							<div class="author"><p>스펜서 존슨</p></div>
							<div class="price"><p>10,800원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wG/kG9.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Inferno</a></b></div>
							<div class="author"><p>Brown, Dan</p></div>
							<div class="price"><p>37,500원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wG/kG10.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">The Great Gatsby</a></b></div>
							<div class="author"><p>F. 스콧 피츠제럴드</p></div>
							<div class="price"><p>8,100원</p></div>
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
						src="../../img/wG/kG11.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Life of Pi</a></b></div>
							<div class="author"><p>얀 마텔</p></div>
							<div class="price"><p>8,550원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wG/kG12.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">World War Z</a></b></div>
							<div class="author"><p>맥스 브룩스</p></div>
							<div class="price"><p>8,550원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wG/kG13.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Ventures 4</a></b></div>
							<div class="author"><p>Bitterlin, Gretchen</p></div>
							<div class="price"><p>18,000원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wG/kG14.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Wicked</a></b></div>
							<div class="author"><p>그레고리 매과이어</p></div>
							<div class="price"><p>8,550원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wG/kG15.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Fifty Shades of Grey</a></b></div>
							<div class="author"><p>James E.I</p></div>
							<div class="price"><p>15,500원</p></div>
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
						src="../../img/wG/kG16.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Justice</a></b></div>
							<div class="author"><p>Sandel, Michael J.</p></div>
							<div class="price"><p>17,900원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wG/kG17.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">What the Dog Saw</a></b></div>
							<div class="author"><p>말콤 글래드웰</p></div>
							<div class="price"><p>9,600원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wG/kG18.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Aesop's Fables</a></b></div>
							<div class="author"><p>Aesop</p></div>
							<div class="price"><p>8,000원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wG/kG19.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Side by Side (3/E)</a></b></div>
							<div class="author"><p>Bill Bliss</p></div>
							<div class="price"><p>16,200원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wG/kG20.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[기타]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Heaven Is for Real</a></b></div>
							<div class="author"><p>Todd Burpo</p></div>
							<div class="price"><p>20,400원</p></div>
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