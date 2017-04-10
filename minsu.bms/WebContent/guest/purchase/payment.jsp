<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover {
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

.card {
	background: #FFF none repeat scroll 0% 0%;
	box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.3);
	margin-bottom: 30px;
}
/* /카드할인 코드 */

/* 결제확인 버튼 */
.paymentBtn{
	text-align : center;
}

.btn-pay {
	letter-spacing: 1px;
	text-decoration: none;
	background: none;
    border: 1px solid transparent;
    border-radius : 0px;
    cursor: pointer;
    display: inline-block;
    vertical-align: middle;
	font-size:14px;
	line-height:20px;
	font-weight:700;
	text-transform:uppercase;
	border: 3px solid;
	padding:8px 20px;
}

.btn-outlined {
    transition: all 0.3s;
}

.btn-outlined.btn-pay {
    background: none;
    color: blue;
	border-color: blue;
}

.btn-outlined.btn-pay:hover,
.btn-outlined.btn-pay:active {
    color: #FFF;
    background: blue;
    border-color: blue;
}

.btn-lg{
	font-size:18px;
	line-height:22px;
	border: 4px solid;
	padding:13px 40px;
}

/* /결제확인 버튼 */

/* 카드할인 설명 배경색 */
.cardDc{
	backgound-color : red;
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
.col3{
	width: 540px;
}
.col4{
	width: 300px;
}

.payTable tr th {
	width: 150px;
}

.payTable tr td {
	float: left;
}
/*//장바구니스타일*/

</style>
</head>
<body>
	<jsp:include page="../../header.jsp"/>
	<article>
		<div class="container">
			<!-- 주문상품목록 -->
			<h2 style="font-weight: bold;">01.주문상품목록</h2>
			<hr class="star-primary">
			<table class="table table-hover">
				<thead>
					<tr>
						<th><input type="checkbox" name="pre" value="grammer">전체선택</th>
						<th>상품정보</th>
						<th>판매가</th>
						<th style="width: 20px;">수량</th>
						<th>합계</th>
						<th>도착예정일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="checkbox" name="pre" value="grammer"
							style="margin: 35px;"></td>
						<td><a href="../../shop/search/productInfo.jsp"> <img src="../../img/nobody.jpg"
								class="img-responsive1"> [도서]아무도아닌
						</a></td>
						<td style="padding: 35px;">10,800원</td>
						<td><input type="number" min="0" />
							<button type="button" class="btn btn-default btn-block">변경</button>
						</td>
						<td style="padding: 35px;">10,800원</td>
						<td style="padding: 35px;">2017년3월19일 도착예정</td>
						

					</tr>
					<tr>
						<td><input type="checkbox" name="pre" value="grammer"
							style="margin: 35px;"></td>
						<td><a href="../../shop/search/productInfo.jsp"> <img src="../../img/oneDictionary.jpg"
								class="img-responsive1"> [도서]1분상식사전
						</a></td>
						<td style="padding: 35px;">11,700원</td>
						<td><input type="number" min="0" />
							<button type="button" class="btn btn-default btn-block">변경</button>
						</td>
						<td style="padding: 35px;">11,700원</td>
						<td style="padding: 35px;">2017년3월19일 도착예정</td>
						
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
							<td>22,500원</td>
							<td>2500원</td>
							<td>25,000원</td>
							<td>2500원</td>
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
				<!-- 주문자 정보 -->
				<tr>
					
					
				</tr>
				<tr>
					
				</tr>
				<tr>
					
				</tr>
				
				<!-- 배송방법 -->
					<tr>
						<th class="col1">배송방법</th>
						<td></td>
						<td class="col3" colspan="3" style="float:left;">
							<div>
								<span style="float:left;"><input type="radio" name="delivery" value="normal" checked>[국내]일반 택배</span>
								<span style="float:left;"><input type="radio" name="delivery" value="convenientStore">편의점 배송</span>
								<span style="float:left;"><input type="radio" name="delivery" value="overseas">해외 배송</span>
							</div>
						</td>
						<th>주문자 정보</th>
					</tr>
				
				<!-- 배송지 정보 -->
				<tr>
					<th class="col1" rowspan="3">배송지 정보</th>
					<td class="col2">받으시는 분</td>
					<td class="col3" style="float : left;">
						<input type="text" style="width:100px; float:left;">
						<span class="sub_text margin_left10"></span>
					</td>
					<td class="col4" rowspan="8">
						<span  style="float : left;">보내는 분</span>
						<input  style="float : right;" type="text" value="이인석" style="width:110px;">
						<span class="sub_text margin_left10"></span>
						<br><br>
						<span style="float : left;">
							연락처
						</span>
						<span  style="float : right;">
							<select  style="height:26px; width:50px;">
									<option value="010" selected>010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
							</select>
							-
							<input type="text" value="0000" maxlength="4" style="width:50px;">
							-
							<input type="text" value="0000" maxlength="4" style="width:50px;">
						</span>
						<br><br>
						<span style="float : left;">
							e-mail
						</span>
						<span  style="float : right;">
							<input type="email" value="loveJY@naver.com" style="width:175px;">
						</span>
					</td>
				</tr>
				<tr>
					<td class="col2">연락처</td>
					<td class="col3" style="float : left;">
						<span style="float : left;">
							<select style="height:26px; width:50px;">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
							</select>
							-
							<input type="text" maxlength="4" style="width:50px;">
							-
							<input type="text" maxlength="4" style="width:50px;">
						</span>
					</td>
				</tr>
				<tr>
					<td class="col2">전화번호</td>
					<td class="col3" style="float : left;">
						<span style="float : left;">
							<select style="height:26px; width:50px;">
								<option value="02">02</option>
								<option value="031">031</option>
								<option value="032">032</option>
								<option value="033">033</option>
								<option value="041">041</option>
								<option value="042">042</option>
								<option value="043">043</option>
								<option value="044">044</option>
								<option value="051">051</option>
								<option value="052">052</option>
								<option value="053">053</option>
								<option value="054">054</option>
								<option value="055">055</option>
								<option value="061">061</option>
								<option value="062">062</option>
								<option value="063">063</option>
								<option value="064">064</option>
								<option value="0502">0502</option>
								<option value="0503">0503</option>
								<option value="0505">0505</option>
								<option value="0506">0506</option>
								<option value="0507">0507</option>
								<option value="0508">0508</option>
								<option value="070">070</option>
							</select>
							-
							<input type="text" maxlength="4" style="width:50px;">
							-
							<input type="text" maxlength="4" style="width:50px;">
						</span>
					</td>
				</tr>
				<tr>
					<th rowspan="5">배송 주소</th>
					<td rowspan="3">주소</td>
					<td class="col3" style="float:left;">
						<div>
							<input type="text" style="float:left; width:100px;" readonly="readonly">
							<button style="float : left;">우편번호</button>
						</div>
					</td>
				</tr>
				<tr>
					<td class="col3" style="float:left;">
						<div>
							<input type="text" style="float:left; width:400px;" value="" readonly="readonly">
						</div>
					</td>
				</tr>
				<tr>
					<td class="col3" style="float:left;">
						<div>
							<input type="text" style="float:left; width:400px;" value="" placeholder="나머지 주소를 입력하세요.">
						</div>
					</td>
				</tr>
				<tr>
					<td>전달메세지</td>
					<td class="col3" style="float:left;">
						<div>
							<input type="text" style="float:left; height:60px; width:400px;" value="">
						</div>
					</td>
				</tr>
				<tr>
					<td>택배기사 메세지</td>
					<td class="col3" style="float:left;">
						<div>
							<input type="text" style="float:left; height:60px; width:400px;" value="">
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
				<table class="table payTable">
					<!-- 결제수단 선택 -->
					<tbody>
						<tr>
							<th>신용카드</th>
							<td><input type="radio" name="payType" value="card" checked>신용카드</td>
						</tr>
						<tr>
							<th>현금결제</th>
							<td><input type="radio" name="payType"
								value="accountTransfer">계좌이체</td>
							<td><input type="radio" name="payType"
								value="withoutBankbook">무통장 입금</td>
						</tr>
						<tr>
							<th>기타결제</th>
							<td><input type="radio" name="payType" value="payPhone">휴대폰
								결제</td>
						</tr>
					</tbody>

					<!-- 카드 선택 시 나와야 할 화면 -->
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
							<th>카드구분</th>
							<td><input type="radio" name="payType2"
								value="personnalCard">개인카드</td>
							<td><input type="radio" name="payType2" value="businessCard">법인카드</td>
						</tr>
					</tbody>

					<!-- 계좌이체 시 나와야 할 화면 -->
					<tbody>
						<tr>
							<th>계좌이체</th>
						</tr>
						<tr>
							<th rowspan="2">결제안내</th>
							<td>*주문과 동시에 결제됩니다.</td>
						</tr>
						<tr>
							<td>*공인인증서가 필요합니다.</td>
						</tr>
						<tr>
							<th rowspan="4">현금영수증</th>
							<td><input type="radio" name="cashReceipt" value="forPerson">개인소득공제용</td>
							<td><input type="radio" name="cashReceipt"
								value="forBusiness">사업자 증빙용</td>
							<td><input type="radio" name="cashReceipt" value="none">미신청</td>
						</tr>

						<!-- 현금영수증 개인소득 중 휴대폰일 경우 나와야 할 입력 란 -->
						<tr>
							<td><select style="height: 26px; width: 100px;">
									<option value="">휴대폰</option>
									<option value="">카드 번호</option>
							</select> <select style="height: 26px; width: 50px;">
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

						<!-- 현금영수증 개인소득 중 카드선택일 경우 나와야 할 입력 란 -->
						<tr>
							<td><select style="height: 26px; width: 100px;">
									<option value="">카드 번호</option>
									<option value="">휴대폰</option>
							</select> <input type="text" maxlength="4" style="width: 50px;"> -
								<input type="text" maxlength="4" style="width: 50px;"> -
								<input type="text" maxlength="4" style="width: 50px;"> -
								<input type="text" maxlength="4" style="width: 50px;"></td>
						</tr>

						<!-- 현금영수증 사업자증빙일 경우 나와야 할 입력 란 -->
						<tr>
							<td><select style="height: 26px; width: 100px;">
									<option value="">사업자 등록 번호</option>
							</select> <input type="text" maxlength="3" style="width: 40px;"> -
								<input type="text" maxlength="2" style="width: 30px;"> -
								<input type="text" maxlength="5" style="width: 70px;"></td>
						</tr>
					</tbody>

					<!-- 무통장 입금 선택 시 나와야 할 화면 -->
					<tbody>
						<tr>
							<th>입금은행</th>
							<td><select style="height: 26px; width: 250px;">
									<option value="none">은행선택</option>
									<option value="kbBank">국민KB은행</option>
									<option value="shinhanBank">신한은행</option>
									<option value="nonghyupBank">농협은행</option>
									<option value="wooriBank">우리은행</option>
									<option value="hanaBank">하나은행</option>
							</select></td>
							<td><p>예금주 : (주)인성문고</p></td>
						</tr>
						<tr>
							<th>입금자명</th>
							<td><input type="text" maxlength="10" style="width: 70px;">
							</td>
						</tr>
						<tr>
							<th rowspan="4">현금영수증</th>
							<td><input type="radio" name="cashReceipt" value="forPerson">개인소득공제용</td>
							<td><input type="radio" name="cashReceipt"
								value="forBusiness">사업자 증빙용</td>
							<td><input type="radio" name="cashReceipt" value="none">미신청</td>
						</tr>

						<!-- 현금영수증 개인소득 중 휴대폰일 경우 나와야 할 입력 란 -->
						<tr>
							<td><select style="height: 26px; width: 100px;">
									<option value="">휴대폰</option>
									<option value="">카드 번호</option>
							</select> <select style="height: 26px; width: 50px;">
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

						<!-- 현금영수증 개인소득 중 카드선택일 경우 나와야 할 입력 란 -->
						<tr>
							<td><select style="height: 26px; width: 100px;">
									<option value="">카드 번호</option>
									<option value="">휴대폰</option>
							</select> <input type="text" maxlength="4" style="width: 50px;"> -
								<input type="text" maxlength="4" style="width: 50px;"> -
								<input type="text" maxlength="4" style="width: 50px;"> -
								<input type="text" maxlength="4" style="width: 50px;"></td>
						</tr>

						<!-- 현금영수증 사업자증빙일 경우 나와야 할 입력 란 -->
						<tr>
							<td><select style="height: 26px; width: 100px;">
									<option value="">사업자 등록 번호</option>
							</select> <input type="text" maxlength="3" style="width: 40px;"> -
								<input type="text" maxlength="2" style="width: 30px;"> -
								<input type="text" maxlength="5" style="width: 70px;"></td>
						</tr>
					</tbody>

					<!-- 휴대폰 결제시 나와야 할 화면 -->
					<tbody>
						<tr>
							<th>성명</th>
							<td><input type="text" maxlength="10" style="width: 70px;">
							</td>
						</tr>
						<tr>
							<th>주민등록번호</th>
							<td><input type="text" maxlength="6" style="width: 100px;">
								- <input type="text" maxlength="7" style="width: 120px;">
							</td>
						</tr>
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

				<!-- 카드사 별 할인 정보 -->
				<div class="row">
					<!-- Nav tabs -->
					<div class="card">
						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#kbCard"
								aria-controls="home" role="tab" data-toggle="tab"><img src="../../img/imgKbCard.jpg" style="height:40px; width:80px;"></a></li>
							<li role="presentation"><a href="#shinhanCard"
								aria-controls="profile" role="tab" data-toggle="tab"><img src="../../img/imgShinhanCard.jpg" style="height:40px; width:80px;"></a></li>
							<li role="presentation"><a href="#lotteCard"
								aria-controls="messages" role="tab" data-toggle="tab"><img src="../../img/imgLotteCard.jpg" style="height:40px; width:80px;"></a></li>
							<li role="presentation"><a href="#bcCard"
								aria-controls="settings" role="tab" data-toggle="tab"><img src="../../img/imgBcCard.jpg" style="height:40px; width:80px;"></a></li>
						</ul>

						<!-- Tab panes -->
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="kbCard">
								<p>
									KB국민 노리체크카드<br>
									- 인성문고 5% 환급 할인(건당 2만원이상 결제시 5만원까지 할인)<br>
									KB국민 락스타체크카드<br>
									- 인성문고 5% 환급 할인(건당 2만원이상 결제시 5만원까지 할인)<br>
									KB국민 스타체크카드<br>
									- 인성문고 3% 환급 할인(건당 3만원이상 결제시 5만원까지 할인)<br>
									KB국민 비트윈체크카드<br>
									- 인성문고 3% 환급 할인(건당 3만원이상 결제시 5만원까지 할인)<br>
									KB국민 주니어라이프체크카드<br>
									- 인성문고 3% 환급 할인(건당 2만원이상 결제시 5만원까지 할인)
								</p>
							</div>
							<div role="tabpanel" class="tab-pane" id="shinhanCard">
								<p>
									인성문고 sam 신한카드<br>
									- 전월 실적에 따라 sam 서비스 최대 30% 청구할인<br>
									- 오프라인 2천원 청구할인(5만원이상 구매시, 월 1회)<br>
									- 인성북클럽 멤버십 혜택 적용
								</p>
							</div>
							<div role="tabpanel" class="tab-pane" id="lotteCard">
								<p>
									인성문고 핫트랙스 롯데카드<br>
									- 전월 실적에 따라 최대 25% 청구할인<br>
									- 인성북클럽 멤버십 혜택 적용
								</p>
							</div>
							<div role="tabpanel" class="tab-pane" id="bcCard">
								<p>
									문화융성카드<br>
									- 전월 실적에 따라 sam 서비스 15% 청구할인<br>
									- 전월 실적에 따라 15% 청구할인(구매건당 5천원, 월 최대 2회, 오프라인에 한함)<br>
									- 오프라인 영업점에 한함(핫트랙스 포함)
								</p>
							</div>
						</div>
					</div>
				</div>
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
		                            <a href="../mypage/purchaseList.jsp" class="btn btn-outlined btn-pay btn-lg" data-wow-delay="0.7s">결제하기</a>
		                        </p>
		                    </div>
		                </div>
					</div>
				</div>
			</div>
		</div>
	</article>
	<jsp:include page="../../footer.html"/>
</body>
</html>