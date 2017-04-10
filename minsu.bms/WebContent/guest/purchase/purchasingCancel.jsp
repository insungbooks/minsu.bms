<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>환불하기</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<style>

</style>
</head>
<body>
	<jsp:include page="../../header.jsp"/>
<div class="container">

		<h2>환불하기</h2>
		<hr>
		<table class="table table-hover" >
			<thead>
				<tr>
					<th><input type="checkbox" name="pre" value="grammer">선택</th>
					<th>상품정보</th>
					<th>판매가</th>
					<th style="text-area : center;">수량</th>
					<th>합계</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="checkbox" name="pre" value="grammer" style="margin:35px;"></td>
					<td><a href="../../shop/search/productInfo.jsp"> <img src="../../img/nobody.jpg"
							class="img-responsive1" style="width:150px; height:150px;"> [도서]아무도아닌
					</a></td>
					<td style="padding:35px;">10,800원</td>
					<td style="padding:35px;" >1</td>
					<td style="padding:35px;">10,800원</td>

				</tr>
</tbody>
</table>
</div>
<article>
			<div class="container">
				<h4 style="padding-top: 16px;">정보입력</h4>
				<section class="infoInput">
					<table class="table table-bordered">
						<tbody>
							<tr>
								<th>이 름</th>
								<td><input type="text"></td>
							</tr>
							<tr>
								<th>아이디</th>
								<td><input type="text"></td>
							</tr>
							<tr>
								<th>핸드폰 번호</th>
								<td><input type="tel" list="mobileNum"> <datalist
										id="mobileNum">
										<option value="010"></option>
										<option value="019"></option>
										<option value="017"></option>
										<option value="016"></option>
									</datalist>-<input type="tel" />-<input type="tel" /> <input
									type="radio" name="mobile" />SKT <input type="radio"
									name="mobile" />KT<input type="radio" name="mobile" />LGT</td>
							</tr>
							<tr>
								<th>E-Mail</th>
								<td><input type="email">@<input type="text"
									list="emailList"> <datalist id="emailList">
										<option value="naver.com"></option>
										<option value="duam.net"></option>
										<option value="hanmail.net"></option>
										<option value="gmail.net"></option>
									</datalist></td>
							</tr>
							<tr>
								<th>주 소</th>
								<td><input type="text" /></td>
							</tr>
						</tbody>
					</table>
				</section>
			</div>
		</div>
	</article>
<article>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<br>
					<div>
						<fieldset class="" id="radio" style="border: 1px solid black;">
							<legend> 환불사유 </legend>
							<div id="radio">
								<ul>
									<li><label><input type="radio" name="spk">배송지연</label></li>
									<li><label><input type="radio" name="spk">책손상</label></li>
									<li><label><input type="radio" name="spk">고객변심</label></li>
									<li><label><input type="radio" name="spk">개인사유</label></li>
								</ul>
							</div>
						</fieldset>
						<br>
						<textarea class="form-control" rows="8" style="resize: none">기타 환불 사유</textarea>
						<br>
						<nav style="float:right;"><a href="../../guest/mypage/refundDetail.jsp"><input type="button" value="환불하기"></a> <a href="../mypage/purchaseList.jsp"><input type="button" value="취소하기"></a></nav>
					</div>
				</div>
			</div>
		</div>
		<br> <br>
	</article>
	<br><br><br>
<jsp:include page="../../footer.html"/>
</body>
</html>