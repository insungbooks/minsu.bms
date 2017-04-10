<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>장바구니</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
.buynav {
	float: right;
	padding: 15px 15px;
}

.img-responsive1 {
	width: 50px;
	height: 80px;
}

th, td {
	text-align: center;
}
/*//장바구니스타일*/
/*사이드바*/

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

/*//사이드바*/

</style>
</head>
<body>
	<jsp:include page="../../header.jsp"/>
	<!-- 장바구니 -->
	<article>
		<div class="container">
			<div class="row">
				<div class="col-md-2">
				<nav class="nav-sidebar">
        <ul class="nav">
        	<li class="nav-header"><strong> 주문관리</strong></li>
            <li ><a href="../mypage/orderList.jsp"> 주문조회</a></li>
            <li class="active"><a href="Basket.jsp"> 장바구니</a></li>
            <li><a href="../mypage/purchaseList.jsp">구매내역</a></li>
            <li><a href="../mypage/refundDetail.jsp">취소/교환내역</a></li>
            <li class="nav-divider"></li>
     		<li class="nav-header"><strong> 나의 정보</strong></li>
            <li><a href="../../shop/system/idCheck.jsp"> 회원정보 수정</a></li>
            <li><a href="../../shop/system/idCheck1.jsp"> 회원 탈퇴</a></li>
            <li class="nav-divider"></li>
            <li class="nav-header"><strong> 나의 상담</strong></li>
            <li><a href="../mypage/customCenter2.jsp"> 나의 상담 내역</a></li>
        </ul>
    </nav>
				</div>
				<div class="col-md-10">
					
						<h2 style="font-weight: bold;">장바구니</h2>
						<p>주문하실 상품을 선택하세요</p>
						<p>
						<hr class="star-primary">
						<table class="table table-hover">
							<thead>
								<tr>
									<th><input type="checkbox" name="pre" value="grammer">전체선택</th>
									<th>상품정보</th>
									<th>판매가</th>
									<th>수량</th>
									<th>합계</th>
									<th>도착예정일</th>
									<th>선택</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input type="checkbox" name="pre" value="grammer"
										style="margin: 35px;"></td>
									<td><a href="#"> <img src="../../img/nobody.jpg"
											class="img-responsive1"> [도서]아무도아닌
									</a></td>
									<td style="padding: 35px 15px;">10,800원</td>
									<td><input type="number" min="0"
										style="display: block; width: 50px; float: center; margin: 0px 60px;" />
										<button type="button" class="btn btn-default btn-block"
											style="display: block; width: 50px; float: center; margin: 0px 60px;">변경</button>
									</td>
									<td style="padding: 35px 15px;">10,800원</td>
									<td style="padding: 35px 15px;">2017년3월19일 도착예정</td>
									<td class="a">
										<a href="../purchase/payment.jsp"><button type="button" class="btn btn-default btn-block">바로구매</button></a>
										<a href="Basket1.jsp"><button type="button" class="btn btn-default btn-block">삭제</button></a>
									</td>

								</tr>
								
							</tbody>
						</table>
						<hr class="star-primary">
						<nav class="buynav">
							<a href="../../main.jsp"><button type="button" class="btn btn-default ">쇼핑계속하기</button></a>
							<a href="../purchase/payment.jsp"><button type="button" class="btn btn-default ">회원 구매</button></a>
						</nav>
				<br><br>
				
					<div class="table">
						<table class="table">
							<thead>
								<tr>
									<th>상품금액</th>
									<th>배송비</th>
									<th>결제 예정금액</th>
									<th>적립예정</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>22,500원</td>
									<td>2500원</td>
									<td>25,000원</td>
									<td>2500원</td>
								</tr>
							</tbody>
						</table>
					</div>
					<hr>
					<div style="padding-bottom: 16px;">
						<button type="button" class="btn" data-toggle="collapse"
							data-target="#notice">배송 유의사항 및 이용 혜택 안내</button>
						<div id="notice" class="collapse">
							<p>[국내도서/외국도서(교보배송)]</p>
							<p>도서만 1만원 이상 구매시 무료배송</p>
							<p>도서+음반/DVD/잡지/만화를 함께 1만원 이상 구매시 무료배송</p>
							<p>※ 1만원 미만시 2,000원 배송비 부과</p>
							<p>[음반/DVD/잡지/만화(교보배송)]</p>
							<p>각각 구매하거나 함께 2만원 이상 구매시 무료배송</p>
							<p>※ 2만원 미만시 2,000원 배송비 부과</p>
							<p>[양서해외주문도서/일서해외주문도서 (교보배송)]</p>
							<p>각각 구매하거나 함께 1만원 이상 구매시 무료배송</p>
							<p>※ 1만원 미만시 2,000원 배송비 부과</p>
							<p>[업체배송 상품(전집,GIFT 등)/중고장터 상품]</p>
							<p>해당 상품 상세페이지 “배송비” 참고</p>
							<p>(업체별/판매자별 무료배송 기준 다름)</p>
							<p>[그외 무료배송 기준]</p>
							<p>바로드림, eBook 상품을 주문한 경우</p>
							<p>프라임/플래티넘회원 무료배송쿠폰 이용하여 주문한 경우</p>
							<p>※ 유의 사항</p>
							<p>도서/음반/DVD 와 해외주문도서를 함께 구매시 분리배송으로 배송비가 각각 부과됨(장바구니 기준)</p>
							<p>예) 국내도서 7,000원 + 해외주문도서 7,000원을 함께 구매할 경우 배송비는 2,000원 +
								2,000원 = 4,000원 부과 (단, 주문/결제에서 합배송 신청시 배송비정책에 따라 무료배송 됨)</p>
						</div>
					</div>
				</div>
			</div>
		</div>

	</article>
	<!-- //장바구니 -->
<jsp:include page="../../footer.html"/>
</body>
</html>