<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>회원목록조회</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
/*회원목록*/
.table {
	text-align: center;
}

/*//회원목록*/


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
							<li class="nav-header"><strong> 회원관리</strong></li>
							<li class="active"><a href="memberList.jsp">회원목록조회</a></li>
							<li class="nav-divider"></li>
							<li class="nav-header"><strong> 주문관리</strong></li>
							<li><a href="../inventoryControl/BookList.jsp">도서목록조회</a></li>
							<li><a href="../inventoryControl/bookAdd.jsp">도서 추가</a></li>
							<li class="nav-divider"></li>
							<li class="nav-header"><strong> 재고관리</strong></li>
							<li><a href="../orderManagement/orderManagement.jsp">
									주문관리</a></li>
							<li class="nav-divider"></li>
							<li class="nav-header"><strong>고객센터</strong></li>
							<li><a href="../customerCenter/inquiryAnswerList.jsp">문의답하기</a></li>
						</ul>
					</nav>
				</div>
				<div class="col-md-10">
					<table class="table">
						<thead>
							<tr>
								<td><strong>번호</strong></td>
								<td><strong>체크박스</strong></td>
								<td><strong>이름</strong></td>
								<td><strong>회원 등급</strong></td>
								<td><strong>구매 횟수</strong></td>
								<td><strong>구매 금액</strong></td>
								<td><strong>마지막 방문일</strong></td>
								<td><strong>비고</strong></td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td><input type="checkbox"></td>
								<td>강민수</td>
								<td>일반</td>
								<td>3</td>
								<td>30,000</td>
								<td>03-02</td>
								<td></td>
							</tr>
							<tr>
								<td>2</td>
								<td><input type="checkbox"></td>
								<td>윤종은</td>
								<td>일반</td>
								<td>3</td>
								<td>30,000</td>
								<td>03-02</td>
								<td></td>
							</tr>
							<tr>
								<td>3</td>
								<td><input type="checkbox"></td>
								<td>권기창</td>
								<td>일반</td>
								<td>3</td>
								<td>30,000</td>
								<td>03-02</td>
								<td></td>
							</tr>
							<tr>
								<td>4</td>
								<td><input type="checkbox"></td>
								<td>구태수</td>
								<td>일반</td>
								<td>3</td>
								<td>30,000</td>
								<td>03-02</td>
								<td></td>
							</tr>
							<tr>
								<td>5</td>
								<td><input type="checkbox"></td>
								<td>박주한</td>
								<td>일반</td>
								<td>3</td>
								<td>30,000</td>
								<td>03-02</td>
								<td></td>
							</tr>
							<tr>
								<td>6</td>
								<td><input type="checkbox"></td>
								<td>배창헌</td>
								<td>일반</td>
								<td>3</td>
								<td>30,000</td>
								<td>03-02</td>
								<td></td>
							</tr>
							<tr>
								<td>7</td>
								<td><input type="checkbox"></td>
								<td>이인석</td>
								<td>일반</td>
								<td>3</td>
								<td>30,000</td>
								<td>03-02</td>
								<td></td>
							</tr>
							<tr>
								<td>7</td>
								<td><input type="checkbox"></td>
								<td>이소연</td>
								<td>VIP</td>
								<td>3</td>
								<td>30,000</td>
								<td>03-02</td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</article>



	<!-- //구매화면 -->
	<jsp:include page="../../footer.html"/>
</body>
</html>