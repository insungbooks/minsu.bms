<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>상세주문내역</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
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

</style>
</head>
<body>
<jsp:include page="../../header.jsp"/>
<article>
		<div class="container">
		<h2 style="font-weight: bold;">상세 주문내역</h2>
				<hr>
			<div class="row">
				<table class="table table-hover">
					<caption>주문정보</caption>
					<thead>
						<tr>
							<th>주문번호</th>
							<th>주문상품</th>
							<th>결제금액</th>
							<th style="text-area: center;">수량</th>
							<th>배송조회</th>
							<th>교환/환불</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="padding: 35px;">245704</td>
							<td><a href="#"> <img src="../../img/nobody.jpg"
									class="img-responsive1"> [도서]아무도아닌
							</a></td>
							<td style="padding: 35px;">10,800원</td>
							<td style="padding: 35px;">1</td>
							<td><a href="shipment.jsp"><button type="button"
										class="btn btn-default btn-block">배송조회</button></a></td>
							<td><a href="../purchase/purchasingCancel.jsp"><button
										type="button" class="btn btn-default btn-block">환불</button></a></td>

						</tr>
						<tr>
							<td style="padding: 35px;">245705</td>
							<td><a href="#"> <img src="../../img/oneDictionary.jpg"
									class="img-responsive1"> [도서]1분상식사전
							</a></td>
							<td style="padding: 35px;">11,700원</td>
							<td style="padding: 35px;">1</td>
							<td><a href="shipment.jsp"><button type="button"
										class="btn btn-default btn-block">배송조회</button></a></td>
							<td><a href="../purchase/purchasingCancel.jsp"><button
										type="button" class="btn btn-default btn-block">환불</button></a></td>
						</tr>
					</tbody>
				</table>
				</div>
				<div class="row">
				<table class="table table-hover">
					<caption>결제정보</caption>
					<thead>
						<tr>
							<th>결제방식</th>
							<th>구매일시</th>
							<th>적립금</th>
							<th>할인금액</th>
							<th>배송비</th>
							<th>결제금액</th>

						</tr>
					</thead>
					<tbody>
						<tr>
							<td>무통장입금</td>
							<td>2016.04.05</td>
							<td>2000원</td>
							<td>5000원</td>
							<th>3000원</th>
							<td>25000원</td>
						</tr>
					</tbody>
				</table>
				</div>
				<div class="row">
				<form action="#">
				<table class="table table-hover">
				
					<caption>배송정보</caption>
					<tr>
						<th style="float:center;">수취인</th>
						<td><input type="text" value="이소연" style="width:200px float:left;"/></td>
					</tr>
					<tr>
						<th>연락처</th>
						
						<td>
						<input type="tel" value="010" style="width:50px;"> -<input type="tel" value="1234" style="width:50px;"/>-<input type="tel" value="5678" style="width:50px"/></td>
					</tr>
					<tr>
						<th>배송지</th>
						<td><input type="text" value="경기도 안산시 상록구 상록길 46-45" style="width:600px"/></td>
					</tr>
					<tr>
						<td colspan = "2">
						<button type="submit" style="float:right;">배송정보수정</button>
						<br>
						</td>
					</tr>
				</table>
				</form>
				</div>
				<div class="row">
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
	</article>
<jsp:include page="../../footer.html"/>


</body>
</html>