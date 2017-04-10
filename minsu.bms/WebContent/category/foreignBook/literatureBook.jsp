<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
<title>해외도서-문학</title>
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
						<li class="active"><a href="literatureBook.jsp">문학</a></li>
						<li><a href="humanitiesBook.jsp">인문</a></li>
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
							src="../../img/wM/kM1.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">A Man Called Ove</a></b></div>
							<div class="author"><p>프레드릭 배크만</p></div>
							<div class="price"><p>19,100원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/wM/kM2.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Nicholas Nickleby</a></b></div>
							<div class="author"><p>찰스 디킨스</p></div>
							<div class="price"><p>18,500원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/wM/kM3.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">TheUnchartedPath</a></b></div>
							<div class="author"><p>이명박</p></div>
							<div class="price"><p>36,500원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/wM/kM4.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">I Am NumberFour</a></b></div>
							<div class="author"><p>피타커스 로어</p></div>
							<div class="price"><p>9,500원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/wM/kM5.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Solar</a></b></div>
							<div class="author"><p>이언 매큐언</p></div>
							<div class="price"><p>12,000원</p></div>
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
							src="../../img/wM/kM6.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">SuperSad TrueLoveStory</a></b></div>
							<div class="author"><p>Shteyngart, Gray</p></div>
							<div class="price"><p>19,500원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/wM/kM7.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Dead Reckoning</a></b></div>
							<div class="author"><p>Charlaine Harris</p></div>
							<div class="price"><p>23,400원</p></div>
						</div>
					</div>
	
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/wM/kM8.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">TheConfession</a></b></div>
							<div class="author"><p>존 그리샴</p></div>
							<div class="price"><p>8,550원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/wM/kM9.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">TheNecromancer</a></b></div>
							<div class="author"><p>Scott, Michael</p></div>
							<div class="price"><p>11,790원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/wM/kM10.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">MiniShopholic</a></b></div>
							<div class="author"><p>소피 킨셀라</p></div>
							<div class="price"><p>8,550원</p></div>
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
							src="../../img/wM/kM11.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">AndThen There Were None</a></b></div>
							<div class="author"><p>애거서 크리스티</p></div>
							<div class="price"><p>10,400원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/wM/kM12.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Something Borrowed</a></b></div>
							<div class="author"><p>Giffin, Emily</p></div>
							<div class="price"><p>9,749원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/wM/kM13.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">DeadintheFamily</a></b></div>
							<div class="author"><p>Harris, Charlaine</p></div>
							<div class="price"><p>8,550원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/wM/kM14.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Mildred Pierce</a></b></div>
							<div class="author"><p>Cain, James M</p></div>
							<div class="price"><p>16,110원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/wM/kM15.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Scorpoa Rising</a></b></div>
							<div class="author"><p>Horowitz, Anthony</p></div>
							<div class="price"><p>21,060원</p></div>
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
							src="../../img/wM/kM16.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Red Riding Hood</a></b></div>
							<div class="author"><p>Blakley-cartwright, Sarah</p></div>
							<div class="price"><p>10,800원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/wM/kM17.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Heart of the Matter</a></b></div>
							<div class="author"><p>Giffin, Emily</p></div>
							<div class="price"><p>20,720원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/wM/kM18.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Private</a></b></div>
							<div class="author"><p>제임스 패터슨</p></div>
							<div class="price"><p>10,400원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/wM/kM19.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Beastly</a></b></div>
							<div class="author"><p>Flinn, Alex</p></div>
							<div class="price"><p>10,530원</p></div>
						</div>
					</div>
					<div class="col-md-2">
						<a href="../../shop/search/productInfo.jsp" class="thumbnail"> <img
							src="../../img/wM/kM20.jpg" style="width: 150px; height: 150px">
						</a>
						<div class="text">
							<div class="classification"><p>[문학]</p></div>
							<div class="aTag"><b><a href="../../shop/search/productInfo.jsp">Mansfield Park</a></b></div>
							<div class="author"><p>제인 오스틴</p></div>
							<div class="price"><p>4,610원</p></div>
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