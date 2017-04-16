<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="minsu.bms.purchase.domain.Purchase"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>주문조회</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
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
<article>
	<div class="container">
	<div class="row">
		<div class="col-md-2">
		<nav class="nav-sidebar">
        <ul class="nav">
        	<li class="nav-header"><strong> 주문관리</strong></li>
            <li class="active"><a href="orderList.jsp"> 주문조회</a></li>
            <li><a href="../basket/Basket.jsp"> 장바구니</a></li>
            <li><a href="refundDetail.jsp">취소/교환내역</a></li>
            <li class="nav-divider"></li>
     		<li class="nav-header"><strong> 나의 정보</strong></li>
           	<li><a href="../../shop/system/idCheck.jsp"> 회원정보 수정</a></li>
            <li><a href="../../shop/system/idCheck1.jsp"> 회원 탈퇴</a></li>
            <li class="nav-divider"></li>
            <li class="nav-header"><strong> 나의 상담</strong></li>
            <li ><a href="../customerCenter/queryListProc.jsp"> 나의 상담 내역</a></li>
        </ul>
    </nav></div>
    
		<div class="col-md-10">
			<h3 style="font-weight: bold;">주문조회</h3>
			<hr>
			<form class="form" action="#" method="post">
				<table class="table table-bordered">
					<tr>
						<td>기간조회</td>
						<td>
							<div class="btn-group btn-group-sm">
								<button type="button" class="btn btn-default">1주일</button>
								<button type="button" class="btn btn-default">1개월</button>
								<button type="button" class="btn btn-default">3개월</button>
								<button type="button" class="btn btn-default">1년</button>
								<button type="button" class="btn btn-default">3년</button>
							</div>
						</td>
						<td>
							<div class="form-group registration-date">
						    	<div class="input-group registration-date-time">
						    		<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span></span>
						    		<input class="form-control" name="registration_date" id="registration-date" type="date">
						    		<span class="input-group-addon" id="basic-addon1">~</span>
						    		<input class="form-control" name="registration_date" id="registration-date" type="date">
						    		
						    	</div>
						    </div>
						</td>
						<td rowspan="2">
							<span class="input-group-btn">
				    	    	<button class="btn btn-default" type="submit">조회</button>
				            </span>
						</td>
					</tr>
					<tr>
						<td>상품조회</td>
<!-- 뭘,왜 입력? -->		<td colspan="2">상품명을 입력하세요 </td>
					</tr>
				</table>
			</form>
			
			
			<p><small>yyyy-mm-dd ~ yyyy-mm-dd 까지의 주문 총 1건</small></p>
			<table class="table table-bordered" id="orderList">
				<thead>
					<tr>
						<th>주문번호</th>
						<th>주문금액</th>
						<th>상품정보</th>
						<th>수량</th>
						<th>주문상태</th>
						<th>상세보기</th>
					</tr>
				</thead>
				<tbody>
				<% if(request.getAttribute("purchase")!=null){
					List<Purchase> purchases = (List<Purchase>)request.getAttribute("purchase");
				for (Purchase purchase : purchases) {
    	%>
					<tr>
						<td><%=purchase.getOrderNum() %></td>
						<td><%=purchase.getPayAmount() %>원</td>
						<td><%=purchase.getBookCode() %></td>
						<td><%=purchase.getOrderCount() %></td>
						<td><%=purchase.getDeliveryNum() %></td>
						<th>
						<form action="../mypage/detailListProc.jsp">
						<input type="hidden" value="<%=purchase.getBookCode() %>" name="bookCode">
						<input type="hidden" value="<%=purchase.getOrderNum() %>" name="orderNum">
						<input type="hidden" value="<%=purchase.getDeliveryNum() %>" name="deliveryNum">
						<button type="submit" class="btn btn-md" >상세보기</button>
						</form>
						</th>
					</tr>
						<%}
				}
				%>
				</tbody>
			</table>
		</div>

	
	</div>
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-10">
			<h3>이용약관</h3>
			<hr>
			<div class="panel panel-default">
				<div class="panel-body">
					<ol>
						<li>주문번호를 클릭하시면 주문/배송 상세내역을 확인하실 수 있습니다.</li>
						<li>주문취소/배송주소변경, 교환/반품 신청은 주문/배송내역 상세페이지에서 가능합니다.</li>
						<li>택배사로 상품 전달 후(발송완료하여, 택배사이동 완료 후) 배송조회가 되며, 발송 완료 된 후 보통 1~2일 내 배송이 완료됩니다.</li>
						<li>ebook은 구매 후 내서재를 통해 즉시 이용 가능합니다.</li>
						<li>주문하신 상품이 품절/절판될 경우 해당 도서는 자동 주문취소되며, 취소된 금액은 승인 취소 또는 예치금으로 반환됩니다.<br>
							반환된 예치금은 나의통장>예치금에서 환불신청시, 고객님의 계좌로 환불해드립니다.</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
</div>
</article>
<jsp:include page="../../footer.html"/>
</body>
</html>