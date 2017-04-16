<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="minsu.bms.delivery.domain.Delivery"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>배송조회</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<style>



</style>
</head>
<body>
	<jsp:include page="../../header.jsp"/>
<div class="container">
<div class="row">

<div class="col-md-12">
	<h3 style="font-weight: bold;">배송조회</h3>
	<table class="table table-bordered">
	<thead>
		<tr>
			<th>배송번호</th>
			<th>배송상태</th>
			<th>보내는사람</th>
			<th>받는사람</th>
			<th>연락처</th>
			<th>배송지</th>
			<th>메세지</th>
		</tr>
	</thead>
	<tbody>
	<%if(request.getAttribute("delivery")!=null){
		Delivery delivery = (Delivery)request.getAttribute("delivery");
	
	
	%>
		<td><%=delivery.getDeliveryNum() %></td>
		<td><%=delivery.getDeliveryNow() %></td>
		<td><%=delivery.getRecipient() %></td>
		<td><%=delivery.getSender() %></td>
		<td><%=delivery.getPhoneNum() %></td>
		<td><%=delivery.getAddress() %></td>
		<td><%=delivery.getMessage() %></td>
		<%} %>
	</tbody>
	</table>
	</div>
	</div>
</div>
<jsp:include page="../../footer.html"/>
</body>
</html>