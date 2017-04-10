<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>환불목록조회</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
/*환불목록*/
.table {
	text-align: center;
}

/*//환불목록*/

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

.nav-header {
	color: #909090;
}

/*//사이드바*/

</style>
</head>
<body>
	<jsp:include page="../../header.jsp"/>

	<!-- 환불조회화면 -->
	<article>
		<div class="container">
			<div class="row">
				<div class="col-md-2">
					<nav class="nav-sidebar">
						<ul class="nav">
							<li class="nav-header"><strong> 주문관리</strong></li>
							<li><a href="orderList.jsp"> 주문조회</a></li>
							<li><a href="../basket/Basket.jsp"> 장바구니</a></li>
							<li class="active"><a href="refundDetail.jsp">취소/교환내역</a></li>
							<li class="nav-divider"></li>
							<li class="nav-header"><strong> 나의 정보</strong></li>
							<li><a href="../../shop/system/idCheck.jsp"> 회원정보 수정</a></li>
           					<li><a href="../../shop/system/idCheck1.jsp"> 회원 탈퇴</a></li>
							<li class="nav-divider"></li>
							<li class="nav-header"><strong> 나의 상담</strong></li>
							<li><a href="customCenter2.jsp"> 나의 상담
									내역</a></li>
						</ul>
					</nav>
				</div>
				<div class="col-md-10">
				<h3 style="font-weight: bold;">취소/교환 내역보기</h3>
				<hr>
					<table class="table">
						<thead>
							<tr>
								<td><input type="checkbox"></td>
								<td><strong>번호</strong></td>
								<td><strong>주문상품</strong></td>
								<td><strong>주문일시</strong></td>
								<td><strong>결제금액</strong></td>
								<td><strong>결제방법</strong></td>
								<td><strong>상태</strong></td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="checkbox"></td>
								<td>1</td>
								<td>너의 이름은</td>
								<td>08/31 14:30</td>
								<td>21,000</td>
								<td>카드</td>
								<td>취소완료</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>2</td>
								<td>센서티브</td>
								<td>10/02 15:13</td>
								<td>18,000</td>
								<td>계좌이체</td>
								<td>교환완료</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>3</td>
								<td>한국사 모험</td>
								<td>05/21 11:34</td>
								<td>15,000</td>
								<td>핸드폰</td>
								<td>취소완료</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>4</td>
								<td>열한 계단</td>
								<td>08/08 07:51</td>
								<td>12,500</td>
								<td>카드</td>
								<td>교환완료</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>5</td>
								<td>스페셜 솔져</td>
								<td>04/03 20:08</td>
								<td>25,000</td>
								<td>핸드폰</td>
								<td>취소완료</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>6</td>
								<td>원피스</td>
								<td>06/08 05:55</td>
								<td>4,500</td>
								<td>카드</td>
								<td>교환완료</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</article>
	<!-- 환불조회화면 -->
	<jsp:include page="../../footer.html"/>
</body>
</html>