<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="minsu.bms.purchase.domain.Purchase"%>
<%@ page import="minsu.bms.bookmanagement.domain.Book"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>환불하기</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<style>
.img-responsive1 {
	width: 50px;
	height: 80px;
}

th, td {
	text-align: center;
}
li{
	display: inline-block; /*한줄로 보기*/
}
</style>
</head>
<body>
	<jsp:include page="../../header.jsp"/>
	<article>
	<form>
	<% Book book = (Book)request.getAttribute("book");
	
	%>
<div class="container">

		<h2>환불하기</h2>
		<hr>
		<table class="table table-hover" >
			<thead>
				<tr>
					<th style="float:center;"><input type="checkbox" name="pre" value="grammer">선택</th>
					<th style="float:center;">상품정보</th>
					<th style="text-area : center; float:center;">수량</th>
					<th style="float:center;">합계</th>
				</tr>
			</thead>
			<tbody>
			<%		if(request.getAttribute("purchases")!=null){
				List<Purchase> purchases=(List<Purchase>)request.getAttribute("purchases");
				for(Purchase purchase : purchases){
 %>
				<tr>
					<td><input type="checkbox" name="pre" value="grammer" style="margin:35px;"></td>
					<td><a href="../../shop/search/productInfo.jsp"> <img src="../../img/nobody.jpg"
							class="img-responsive1" > [<%=book.getKind()%>]<%=book.getBookName() %>
					</a></td>
					<td style="padding:35px;" ><%=purchase.getOrderCount() %></td>
					<td style="padding:35px;"><%=purchase.getPayAmount() %>원</td>

				</tr>
				<input type="hidden" name="orderNum" value="<%=purchase.getOrderNum() %>">
				<input type="hidden" name="bookName" value="<%=book.getBookName() %>"/>
				<input type="hidden" name="payAmount" value="<%=purchase.getPayAmount() %>"/>
				<%} }%>
</tbody>
</table>
</div>
			
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<br>
					<div>
						<fieldset>
							<legend> 환불사유 </legend>
							<div id="radio">
								<ul>
									<li><label><input type="radio" name="reason" value="배송지연">배송지연</label></li>
									<li><label><input type="radio" name="reason" value="책손상">책손상</label></li>
									<li><label><input type="radio" name="reason" value="고객변심">고객변심</label></li>
									<li><label><input type="radio" name="reason" value="개인사유">개인사유</label></li>
									<li><label><input type="radio" name="reason" value="기타">기타</label></li>
								</ul>
							</div>
						</fieldset>
						<fieldset>
							<legend> 환불방법 </legend>
							<div id="radio">
								<ul>
									<li><label><input type="radio" name="cancelType" value="카드">카드</label></li>
									<li><label><input type="radio" name="cancelType" value="핸드폰">핸드폰</label></li>
									<li><label><input type="radio" name="cancelType" value="계좌이체">계좌이체</label></li>
								</ul>
							</div>
						</fieldset>
						
						<nav style="float:right;">
						
						
						<button class="btn btn-md" type="submit" formaction="../../guest/mypage/refundDetailProc.jsp">환불하기</button>
						<button class="btn btn-md" type="submit" formaction="../mypage/purchaseList.jsp">취소하기</button>
						</nav>
					</div>
				</div>
			</div>
		</div>
		<br> <br>
		</form>
	</article>
	<br><br><br>
<jsp:include page="../../footer.html"/>
</body>
</html>