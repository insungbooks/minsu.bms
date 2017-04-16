<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="minsu.bms.purchase.domain.Purchase"%>
<%@ page import="minsu.bms.bookmanagement.domain.Book"%>
<%@ page import="minsu.bms.login.domain.User"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>결제</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
/* 카드할인 혜택 css코드 */
.nav-tabs {
	border-bottom: 2px solid #DDD;
}

.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover
	{
	border-width: 0;
}

.nav-tabs>li>a {
	border: none;
	color: #666;
}

.nav-tabs>li.active>a, .nav-tabs>li>a:hover {
	border: none;
	color: #4285F4 !important;
	background: transparent;
}

.nav-tabs>li>a::after {
	content: "";
	background: #4285F4;
	height: 2px;
	position: absolute;
	width: 100%;
	left: 0px;
	bottom: -1px;
	transition: all 250ms ease 0s;
	transform: scale(0);
}

.nav-tabs>li.active>a::after, .nav-tabs>li:hover>a::after {
	transform: scale(1);
}

.tab-nav>li>a::after {
	background: #21527d none repeat scroll 0% 0%;
	color: #fff;
}

.tab-pane {
	padding: 15px 0;
}

.tab-content {
	padding: 20px
}

.payType {
	background: #FFF none repeat scroll 0% 0%;
	box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.3);
	margin-bottom: 30px;
}
/* /카드할인 코드 */

/* 결제확인 버튼 */
.paymentBtn {
	text-align: center;
}

.btn-pay {
	letter-spacing: 1px;
	text-decoration: none;
	background: none;
	border: 1px solid transparent;
	border-radius: 0px;
	cursor: pointer;
	display: inline-block;
	vertical-align: middle;
	font-size: 14px;
	line-height: 20px;
	font-weight: 700;
	text-transform: uppercase;
	border: 3px solid;
	padding: 8px 20px;
}

.btn-outlined {
	transition: all 0.3s;
}

.btn-outlined.btn-pay {
	background: none;
	color: blue;
	border-color: blue;
}

.btn-outlined.btn-pay:hover, .btn-outlined.btn-pay:active {
	color: #FFF;
	background: blue;
	border-color: blue;
}

.btn-lg {
	font-size: 18px;
	line-height: 22px;
	border: 4px solid;
	padding: 13px 40px;
}

/* /결제확인 버튼 */

/* 카드할인 설명 배경색 */
.payTypeDc {
	backgound-color: red;
}
/* /카드할인 설명 배경색 */
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

.col1, .col2 {
	width: 150px;
}

.col3 {
	width: 540px;
}

.col4 {
	width: 300px;
}

.payTable tr th {
	width: 150px;
}

.payTable tr td {
	float: left;
}
th{
float: center;
}
/*
</style>
</head>
<body>
	<jsp:include page="../../header.jsp" />
		<% String bookNum1;
				if(request.getAttribute("bookInfo")!=null){
					
					Book book= (Book)request.getAttribute("bookInfo");
					bookNum1= (String)request.getAttribute("bookNum");
					int bookNum= Integer.parseInt(bookNum1);
					if(request.getAttribute("user")!=null){
						User user=(User)request.getAttribute("user");
					
					//for
				%>
<form action="paymentResult.jsp">
<input type="hidden" name="bookCode" value="<%=book.getBookCode() %>"/>
	<article>
		<div class="container">
			<!-- 주문상품목록 -->
			<h2 style="font-weight: bold;">01.주문상품목록</h2>
			<hr class="star-primary">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>상품정보</th>
						<th>판매가</th>
						<th>수량</th>
						<th>합계</th>
						<th>도착예정일</th>
					</tr>
				</thead>
				<tbody>
				
					<tr>
						<td><a href="../../shop/search/productInfo.jsp"> <img
								src="../../img/nobody.jpg" class="img-responsive1">
								[<%=book.getKind()%>]<%=book.getBookName() %>
						</a></td>
						<td style="padding: 35px;"><%= book.getBookPrice() %>원</td>
						<td style="padding: 35px;"><input type="number" min="0" value="<%=bookNum %>" name="bookNum"
							style="display: block; width: 50px; float: center; margin: 0px 60px;" />
						</td>
						<td style="padding: 35px;"><%= book.getBookPrice() %>원</td>
						<td style="padding: 35px;">2017년3월19일 도착예정</td><!-- 배송에서받아오기 -->
					</tr>
				</tbody>
			</table>
			<hr class="star-primary">
		</div>

		<div class="container">
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th>총 상품금액</th>
							<th>배송비</th>
							<th>결제 예정금액</th>
							<th>적립예정</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><%=book.getBookPrice() %>원</td>
							<td>2500원</td>
							<td><%=book.getBookPrice()+2500 %>원</td><input type="hidden" name="bookPrice" value="<%=book.getBookPrice()+2500 %>"/>
							<td><%= (book.getBookPrice()+2500)/10 %>원</td>
						</tr>
					</tbody>
				</table>
			</div>
			<hr>
		</div>


		<div class="container">
			<!-- 배송지 정보 -->
			<h2 style="font-weight: bold;">02.배송지</h2>
			<hr class="star-primary">
			<table class="table table-bordered deliveryTable">
				
				<!-- 배송지 정보 -->
				<tr>
					<th class="col1" rowspan="2">배송지 정보</th>
					<td class="col2">받으시는 분</td>
					<td class="col3" style="float: left;"><input type="text"
						style="width: 100px; float: left;"name="sender"> <span
						class="sub_text margin_left10"></span></td>
					<th>주문자 정보</th>
				</tr>
				<tr>
					<td class="col2">연락처</td>
					<td class="col3" style="float: left;"><span
						style="float: left;"> <select
							style="height: 26px; width: 50px;" name="number1">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
						</select> - <input type="text" maxlength="4" style="width: 50px;" name="number2">
							- <input type="text" maxlength="4" style="width: 50px;" name="number3">
					</span></td>
					<td class="col4" rowspan="8"><span style="float: left;">보내는
							분</span> <input style="float: right;" type="text" name="recipient" value="<%=user.getName() %>"
						style="width:200px;" readonly> <span class="sub_text margin_left10"></span>
						<br>
					<br> <span style="float: left;"> 연락처 </span> <span
						style="float: right;"> <input type="text" value="<%=user.getPhoneNum() %>"
							 style="width: 200px;" readonly>
					</span> <br>
					<br> <span style="float: left;"> e-mail </span> <span
						style="float: right;"> <input type="email"
							value="<%=user.getEmail() %>" style="width: 200px;" readonly>
					</span></td>
				</tr>
				<tr>
					<th rowspan="4">배송 주소</th>
					<td rowspan="3">주소</td>
					<td class="col3">
						<div>
						<input type="text" id="sample4_postcode" name="postal" placeholder="우편번호" style="float: left;" readonly>
						<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" style="float: left;"><br>
						</div>
					</td>
				</tr>
				<tr>
					<td class="col3" style="float: left;">
						<div>
							<input type="text" id="sample4_roadAddress" size=50 placeholder="도로명주소" style="float: left;" readonly>
						</div>
					</td>
				</tr>
				<tr>
					<td class="col3" style="float: left;">
						<div>
							<input type="text" style="float: left; width: 400px;"
								placeholder="나머지 주소를 입력하세요." name="address">
						</div>
					</td>
				</tr>
				
				<tr>
					<td>택배기사 메세지</td>
					<td class="col3" style="float: left;">
						<div>
							<input type="text"
								style="float: left; height: 60px; width: 400px;" name="message">
						</div>
					</td>
				</tr>
			</table>
		</div>

		<!-- 결제수단 -->
		<div class="container">
			<h2 style="font-weight: bold;">03.결제수단</h2>
			<hr class="star-primary">
			<div class="col-md-9">
				<!-- 결제수단선택 -->
				<div class="row">
					<!-- Nav tabs -->
					<div class="payType">
					<!-- 	<input type="radio" value="payType" name="card" id="card1"/>
								<label for="card1">
								카드결제</label>
								<input type="radio" name="payType" value="accountTransfer" id="accountTransfer1"/>
									<label for="accountTransfer1">계좌이체</label>
									<input type="radio" name="payType" value="mobilePayment" id="mobilePayment1"/>
									<label for="mobilePayment1">핸드폰결제</label>
					-->
					
						<ul class="nav nav-tabs" role="tablist">
						
							<li role="presentation" class="active">
								<a href="#card" aria-controls="home" role="tab" data-toggle="tab">
								카드결제
								</a>
							</li>
							<li role="presentation">
								<a href="#accountTransfer" aria-controls="profile" role="tab" data-toggle="tab">
									계좌이체
								</a>
							</li>
							<li role="presentation">
								<a href="#mobilePayment" aria-controls="messages" role="tab" data-toggle="tab">
									핸드폰결제
								</a>
							</li>
							
						</ul>

						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="card">
							<input type="radio" value="카드결제" name="payType" id="card1"/>
								<table>
						<tbody>
							<tr>
								<th>카드선택</th>
								<td><select style="height: 26px; width: 250px;">
										<option value="none">결제하실 카드를 선택해주세요</option>
										<option value="kb">국민KB카드</option>
										<option value="shinhan">신한카드</option>
										<option value="nonghyup">농협카드</option>
										<option value="woori">우리카드</option>
										<option value="hana">하나카드</option>
										<option value="bc">비씨카드</option>
										<option value="hyundai">현대카드</option>
								</select></td>
							</tr>
							<tr>
								<th>카드번호</th>
								<td><input type="text" maxlength="4" style="width: 50px;">
									- <input type="text" maxlength="4" style="width: 50px;">
									- <input type="text" maxlength="4" style="width: 50px;">
									- <input type="text" maxlength="4" style="width: 50px;">
								</td>
							</tr>
						</tbody>
						
					</table>
					<br><br>
					<hr>
					<!-- 카드사 별 할인 정보-->
				<div class="row">
					<div class="card">
						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#kbCard"
								aria-controls="home" role="tab" data-toggle="tab"><img
									src="../../img/imgKbCard.jpg"
									style="height: 40px; width: 80px;"></a></li>
							<li role="presentation"><a href="#shinhanCard"
								aria-controls="profile" role="tab" data-toggle="tab"><img
									src="../../img/imgShinhanCard.jpg"
									style="height: 40px; width: 80px;"></a></li>
							<li role="presentation"><a href="#lotteCard"
								aria-controls="messages" role="tab" data-toggle="tab"><img
									src="../../img/imgLotteCard.jpg"
									style="height: 40px; width: 80px;"></a></li>
							<li role="presentation"><a href="#bcCard"
								aria-controls="settings" role="tab" data-toggle="tab"><img
									src="../../img/imgBcCard.jpg"
									style="height: 40px; width: 80px;"></a></li>
						</ul>

						
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="kbCard">
								<p>
									KB국민 노리체크카드<br> - 인성문고 5% 환급 할인(건당 2만원이상 결제시 5만원까지 할인)<br>
									KB국민 락스타체크카드<br> - 인성문고 5% 환급 할인(건당 2만원이상 결제시 5만원까지 할인)<br>
									KB국민 스타체크카드<br> - 인성문고 3% 환급 할인(건당 3만원이상 결제시 5만원까지 할인)<br>
									KB국민 비트윈체크카드<br> - 인성문고 3% 환급 할인(건당 3만원이상 결제시 5만원까지 할인)<br>
									KB국민 주니어라이프체크카드<br> - 인성문고 3% 환급 할인(건당 2만원이상 결제시 5만원까지 할인)
								</p>
							</div>
							<div role="tabpanel" class="tab-pane" id="shinhanCard">
								<p>
									인성문고 sam 신한카드<br> - 전월 실적에 따라 sam 서비스 최대 30% 청구할인<br>
									- 오프라인 2천원 청구할인(5만원이상 구매시, 월 1회)<br> - 인성북클럽 멤버십 혜택 적용
								</p>
							</div>
							<div role="tabpanel" class="tab-pane" id="lotteCard">
								<p>
									인성문고 핫트랙스 롯데카드<br> - 전월 실적에 따라 최대 25% 청구할인<br> -
									인성북클럽 멤버십 혜택 적용
								</p>
							</div>
							<div role="tabpanel" class="tab-pane" id="bcCard">
								<p>
									문화융성카드<br> - 전월 실적에 따라 sam 서비스 15% 청구할인<br> - 전월 실적에
									따라 15% 청구할인(구매건당 5천원, 월 최대 2회, 오프라인에 한함)<br> - 오프라인 영업점에
									한함(핫트랙스 포함)
								</p>
							</div>
						</div>
					</div>
				</div>
							</div>
							<div role="tabpanel" class="tab-pane" id="accountTransfer">
							<input type="radio" name="payType" value="계좌이체" id="accountTransfer1"/>
								<table>
						<tbody>
							<tr>
								<th>계좌이체</th>
								<td><input type="text" maxlength="6" style="width: 100px;">
									- <input type="text" maxlength="7" style="width: 120px;">
								</td>
							</tr>

							
						</tbody>
					</table>
							</div>
							<div role="tabpanel" class="tab-pane" id="mobilePayment">
							<input type="radio" name="payType" value="핸드폰결제" id="mobilePayment1"/>
								<table>
						<tbody>

							<tr>
								<th>휴대폰 번호</th>
								<td><select style="height: 26px; width: 50px;">
										<option value="010">010</option>
										<option value="011">011</option>
										<option value="016">016</option>
										<option value="017">017</option>
										<option value="018">018</option>
										<option value="019">019</option>
								</select> - <input type="text" maxlength="4" style="width: 50px;">
									- <input type="text" maxlength="4" style="width: 50px;">
								</td>
							</tr>
						</tbody>
					</table>
							</div>
							
						</div>
					</div>
				</div>
				<!--//카드사 별 할인 정보// -->
				
			</div>

			<div class="col-md-3">
				<div>
					<table class="table divForPay">
						<tbody>
							<tr>
								<td>상품수</td>
								<td>1종 2개</td>
							</tr>
							<tr>
								<td>상품금액</td>
								<td>27000</td>
							</tr>
							<tr>
								<td>배송비</td>
								<td>3000</td>
							</tr>
							<tr>
								<td>최종결제금액</td>
								<td>300000</td>
							</tr>
						</tbody>
					</table>
					<div>
						<div class="row">
							<div class="paymentBtn">
								<p>
									<button type="submit"
										class="btn btn-outlined btn-pay btn-lg" data-wow-delay="0.7s">결제하기</button>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</article>
</form>
	<%}} %>
	<jsp:include page="../../footer.html" />
</body>
</html>