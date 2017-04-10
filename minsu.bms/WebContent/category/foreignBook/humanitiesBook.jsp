<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>해외도서-인문</title>
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
					<li class="active"><a href="humanitiesBook.jsp">인문</a></li>
					<li><a href="referenceBook.jsp">참고서</a></li>
					<li><a href="besidesBook.jsp">기타</a></li>
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
						src="../../img/wI/kI1.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Rip It Up</a></b></div>
							<div class="author"><p>Wiseman, Richard</p></div>
							<div class="price"><p>23,400원</p></div>
						</div>
				</div>

				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wI/kI2.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Word Smart</a></b></div>
							<div class="author"><p>Princeton Review</p></div>
							<div class="price"><p>16,110원</p></div>
						</div>
				</div>

				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wI/kI3.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Lego Ideas Book</a></b></div>
							<div class="author"><p>DK Publishing</p></div>
							<div class="price"><p>26,910원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wI/kI4.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">That Used to Be Us</a></b></div>
							<div class="author"><p>토머스 L. 프리드먼</p></div>
							<div class="price"><p>17,190원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wI/kI5.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Q</a></b></div>
							<div class="author"><p>Earle-carlin</p></div>
							<div class="price"><p>19,800원</p></div>
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
						src="../../img/wI/kI6.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">The Korean War</a></b></div>
							<div class="author"><p>Cumings, Bruce</p></div>
							<div class="price"><p>17,190원</p></div>
						</div>
				</div>

				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wI/kI7.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Decision Points</a></b></div>
							<div class="author"><p>조시 W. 부시</p></div>
							<div class="price"><p>21,500원</p></div>
						</div>
				</div>

				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wI/kI8.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Barron's Gre</a></b></div>
							<div class="author"><p>Green, Sharon Weiner</p></div>
							<div class="price"><p>29,700원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wI/kI9.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">On China</a></b></div>
							<div class="author"><p>Henry Kissinger</p></div>
							<div class="price"><p>43,920원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wI/kI10.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Howto Be a Man</a></b></div>
							<div class="author"><p>Delhomme</p></div>
							<div class="price"><p>30,440원</p></div>
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
						src="../../img/wI/kI11.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">The Prodigal God</a></b></div>
							<div class="author"><p>Keller, Timothy</p></div>
							<div class="price"><p>16,110원</p></div>
						</div>
				</div>

				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wI/kI12.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">The Good Society</a></b></div>
							<div class="author"><p>Draper, Alan</p></div>
							<div class="price"><p>24,750원</p></div>
						</div>
				</div>

				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wI/kI13.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Known Unknowns</a></b></div>
							<div class="author"><p>Rumsfeld, Donald</p></div>
							<div class="price"><p>42,120원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wI/kI14.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">The Next Deacde</a></b></div>
							<div class="author"><p>Friedman, George</p></div>
							<div class="price"><p>36,400원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wI/kI15.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Connected</a></b></div>
							<div class="author"><p>Christakis, Nicholas A.</p></div>
							<div class="price"><p>21,690원</p></div>
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
						src="../../img/wI/kI16.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Easy First Words</a></b></div>
							<div class="author"><p>Harpster, Steve</p></div>
							<div class="price"><p>5,310원</p></div>
						</div>
				</div>

				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wI/kI17.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">59 Seconds</a></b></div>
							<div class="author"><p>Wiseman, Richard</p></div>
							<div class="price"><p>17,190원</p></div>
						</div>
				</div>

				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wI/kI18.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Vienna</a></b></div>
							<div class="author"><p>Haywood, Anthony</p></div>
							<div class="price"><p>22,680원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wI/kI19.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Central America</a></b></div>
							<div class="author"><p>McCarthy, Carolyn</p></div>
							<div class="price"><p>32,760원</p></div>
						</div>
				</div>
				<div class="col-md-2">
					<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
						src="../../img/wI/kI20.jpg" style="width: 150px; height: 150px">
					</a>
					<div class="text">
							<div class="classification"><p>[인문]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Game Change</a></b></div>
							<div class="author"><p>Heilemann, John</p></div>
							<div class="price"><p>20,720원</p></div>
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