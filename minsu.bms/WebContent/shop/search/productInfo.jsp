<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>상품정보</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>

/*구매창*/
.productInfo{
	float: right;
}

</style>
</head>
<body>
	<jsp:include page="../../header.jsp"/>

<article>

<div class="container">
	<div class="row">
	<br><br>
		<div class="col-sm-5">
			<a href="../../img/1.jpg" class="thumbnail"><img src="../../img/1.jpg" style="width:200px; height:300px"></a>
		</div>
		<div class="col-sm-7">
		<h3 style="font-weight: bold;">대통령 복도 지지리 없는 나라</h3>
		<hr>
		<div>
		<em>오홍근 </em><span class="bar">|</span><em>산해 </em><span class="bar">|</span>2017.02.28
		</div>
		<hr>
		<p><em>정가</em> 14,000원</p>
		<p><em>판매가</em> 12,600원</p>
		<br>
		<hr>
		<p>배송료 : 2500원</p>
		<br>
		<hr>
		<em>주문수량</em><input type="number"value="1" min="0" >
		</div>

	</div>

</div>
<div class="container">
	<hr>
	<nav class="productInfo">
			<a href="../../guest/basket/Basket.jsp"><button type="submit" class="btn btn-default">장바구니넣기</button></a>
			<a href="../../guest/purchase/payment.jsp"><button type="button" class="btn btn-default">바로구매하기</button></a>
		</nav>
		<br>
	<hr>
	
	<div class="container">
			<div class="row">
				<h3>신간 Top5</h3>
				<hr>
				<div class="col-sm-1"></div>
				<div class="col-sm-2">
					<a href="productInfo.jsp" class="thumbnail"> <img src="../../img/1.jpg"
						style="width: 150px; height: 150px">
					</a>
				</div>

				<div class="col-sm-2">
					<a href="productInfo.jsp" class="thumbnail"> <img src="../../img/2.jpg"
						style="width: 150px; height: 150px">
					</a>
				</div>

				<div class="col-sm-2">
					<a href="productInfo.jsp" class="thumbnail"> <img src="../../img/3.jpg"
						style="width: 150px; height: 150px">
					</a>
				</div>
				<div class="col-sm-2">
					<a href="productInfo.jsp" class="thumbnail"> <img src="../../img/4.jpg"
						style="width: 150px; height: 150px">
					</a>
				</div>
				<div class="col-sm-2">
					<a href="../../img/5.jpg" class="thumbnail"> <img src="../../img/5.jpg"
						style="width: 150px; height: 150px">
					</a>
				</div>
				<div class="col-sm-1"></div>
			</div>
		</div>
	<hr>
	<div class="container">
	<ul class="nav nav-tabs">
  <li class="active"><a data-toggle="tab" href="#productInfo">상품정보</a></li>
  <li><a data-toggle="tab" href="#review">상품리뷰</a></li>
  <li><a data-toggle="tab" href="#swapRefund ">교환/환불</a></li>
</ul>

<div class="tab-content">
  <div id="productInfo" class="tab-pane fade in active">
    <h3>책소개</h3>
    <div class="text" style="border: 1px solid black;">
    	대통령 말이면 안 되는 일이 없는 이 나라에서 대통령이 올바른 판단력을 지니고 있지 못하다면 그 뒷감당은 누가 해야 하는가. 결국 우리는 지금 비싼 대가를 치르고 있다. 이 상처를 치유하는 데 오랜 세월이 필요할 것이다. 저자는 이제 유권자들도 정신 차려야 한다고 일갈한다.
    </div>
    <hr>
    <h3>저자소개</h3>
    <div class="text" style="border: 1px solid black;">
    	<em>오홍근</em>1950년생으로 경희대 의대를 졸업하고 동 대학원에서 박사학위를 받았으며, 캐나다 클락정신의학연구소 수석연구원, 캐나다 토론토의대 및 캐나다 자연치료의과대학 교수를 역임했다. 한국 최초의 자연치료의학 박사이기도 한 그는 꾸준한 연구와 임상 실험 등을 통해 국내는 물론 전 세계에 향기요법을 과학화, 대중화하는 데 앞장서고 있다. 2007년 자연의학과 보완대체의학 분야의 국제적 학술 활동, 정신의학과 심신의학 분야, 스트레스 관련 질환에 대한 연구 업적을 인정받아 세계인명사전 후즈 후Marquis Who's Who in the World 2007 에 등재된 바 있다.
    </div>
    <h3>목차</h3>
    <div class="text" style="border: 1px solid black;">
    	<p>책머리에</p> 
		<p>대통령 복도 지지리 없는 나라</p> 
		<p>당나귀 귀의 비극</p> 
		<p>낙수효과의 비극 </p>
		<p>국민은 주인인가 개돼지인가</p> 
		<p>이 나라가 느그꺼냐 </p>
		<p>한국형 분서갱유 </p>
		<p>대통령이 대통령다워야지</p> 
		<p>이른바 언론 </p>
		<p>그까짓 ‘7시간’이 뭐길래</p> 
		<p>이승만 국부 하자고? </p>
		<p>견제 싫어하는 권력은 망한다</p> 
		<p>외교도 최순실 손 탔나 </p>
		<p>그 무덤에 침을 뱉어라 </p>
		<p>5·18 폭동과 홍어·좌빨의 비극</p> 
		<p>반공권 독점·악용, 이젠 내려놓을 때 </p>   </div>
		<hr>
		<h3>출판사 서평</h3>
    <div class="text" style="border: 1px solid black;">
    	『민주주의의 원칙에 따라 대통령을 뽑았더니 박근혜 정부 꼴이라면 민주주의를 폐기해야 마땅하지 않을까. 대통령 말이면 안 되는 일이 없는 이 나라에서 대통령이 올바른 판단력을 지니고 있지 못하다면 그 뒷감당은 누가 해야 하는가. 결국 우리는 지금 비싼 대가를 치르고 있다. 이 상처를 치유하는 데 오랜 세월이 필요할 것이다. 저자는 이제 유권자들도 정신 차려야 한다고 일갈한다. 주인 노릇을 제대로 하라는 말이다. 그러나 희망의 끈을 놓지 않을 수 있는 이유는 지금의 이 과정이 결국 새로운 기회로 우리를 이끌어갈 것이기 때문이다. 독재자를 평화적인 방법으로 쫓아낼 수 있는 국민이라면 무슨 일이든 못하겠는가. 어떤 어려움이든 극복하지 못하겠는가.』
   	</div>
   	<hr>
		<h3>이 책이 속한 분야</h3>
    <div class="text" style="border: 1px solid black;">
		<P>사회 > 정치/외교 > 정치일반</P> 
		<p>사회 > 정치/외교 > 각국정치</p> 
    </div>
    <br>
    <br>
    </div>
  <div id="review" class="tab-pane fade">
  <h3>리뷰작성</h3><br>
		<form>
			<strong>아이디:</strong> <input type="text" style = "width:100px" />
			<strong>평점:</strong> <input type="number" min="1" max= "5" placeholder = "1~5" style = "width:50px"/>점<br><br>
			<textarea name="comments"cols="100" rows="3" placeholder = "리뷰내용을 작성하시오."></textarea>
				<input type="submit" value="입력"/>
		</form>
		<hr>
			<strong>아이디:</strong> <input type="text" style = "width:100px" readonly value ="깍현골"/>
			<strong>평점:</strong> <input type="number" min="1" max= "5" readonly value = "3" style = "width:30px"/>점<br><br>
			<textarea name="comments" readonly cols="100" rows="3">오랜만에 볼만한 책이였습니다.</textarea>
		<hr>
			<strong>아이디:</strong> <input type="text" style = "width:100px" readonly value ="될놈"/>
			<strong>평점:</strong> <input type="number" min="1" max= "5" readonly value = "5" style = "width:30px"/>점<br><br>
			<textarea name="comments" readonly cols="100" rows="3">최고의 작품입니다 꼭 보세요</textarea>	  
		<br><br>
   
  </div>
  <div id="swapRefund" class="tab-pane fade">
    <h3>교환/환불안내</h3>
    <hr>
    <p>※ 상품 설명에 반품/교환 관련한 안내가 있는 경우 그 내용을 우선으로 합니다. (업체 사정에 따라 달라질 수 있습니다.)</p>
    <table border = "1">
    	<tr>
    		<th>반품 교환방법</th>
    		<td>마이룸 > 주문관리 > 주문/배송내역 > 주문조회 > 반품/교환신청 ,[1:1상담>반품/교환/환불] 또는 고객센터 (1544-1900)</td>    		
    	</tr>
    	<tr>
    		<th>반품/교환가능 기간</th>
    		<td>변심반품의 경우 수령 후 7일 이내,	상품의 결함 및 계약내용과 다를 경우 문제점 발견 후 30일 이내</td>
    	</tr>
    	<tr>
    		<th>반품/교환비용</th>
    		<td>변심 혹은 구매착오로 인한 반품/교환은 반송료 고객 부담</td>
    	</tr>
    	<tr>
    		<th>반품/교환 불가 사유</th>
    		<td><p>소비자의 책임 있는 사유로 상품 등이 손실 또는 훼손된 경우(단지 확인을 위한 포장 훼손은 제외)</p>
				<p>소비자의 사용, 포장 개봉에 의해 상품 등의 가치가 현저히 감소한 경우 예) 화장품, 식품, 가전제품(악세서리 포함) 등</p>
    		</td>
    	</tr>
    	<tr>
    		<th>상품 품절</th>
    		<td>공급사(출판사) 재고 사정에 의해 품절/지연될 수 있으며, 품절 시 관련 사항에 대해서는
 이메일과 문자로 안내드리겠습니다.</td>
    	</tr>
    </table>
    <br>
    <br>
  </div>
</div>	
</div>
</div>
</article>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br>

<!-- //구매화면 -->
	<jsp:include page="../../footer.html"/>
</body>
</html>