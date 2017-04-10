<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<hr>
		<table class="table table-bordered">
			<tr>
				<th>택배사</th>
				<td>우체국택배</td>
				<th>운송장 번호</th>
				<td>11111-11111</td>
			</tr>
			<tr>
				<th>보내는분</th>
				<td>인성문고</td>
				<th>받는분</th>
				<td>이인석</td>
			</tr>
		</table>
	<h2>배송 진행 상황</h2>
	<table class="table table-bordered">
	<thead>
		<tr>
			<th>날짜</th>
			<th>시간</th>
			<th>현재위치</th>
			<th>담당자/연락처</th>
			<th>처리현황</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>2015.10.12</td>
			<td>17:58</td>
			<td>안양</td>
			<td>010-1546-1234</td>
			<td>집하완료</td>
		</tr>
		<tr>
			<td>2015.10.12</td>
			<td>18:30</td>
			<td>서울</td>
			<td>010-1546-1234</td>
			<td>발송</td>
		</tr>
		<tr>
			<td>2015.10.13</td>
			<td>07:30</td>
			<td>우체국</td>
			<td>010-1546-1234</td>
			<td>도착</td>
		</tr>
	</tbody>
	</table>
	</div>
	</div>
</div>
<jsp:include page="../../footer.html"/>
</body>
</html>