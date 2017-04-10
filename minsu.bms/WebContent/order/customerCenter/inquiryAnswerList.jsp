<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>글리스트</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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
<div class="container">
	<div class="col-md-2">
	
    <nav class="nav-sidebar">
        <ul class="nav">
        	<li class="nav-header"><strong> 회원관리</strong></li>
            <li><a href="../member/memberList.jsp">회원목록조회</a></li>
            <li class="nav-divider"></li>
     		<li class="nav-header"><strong> 주문관리</strong></li>
            <li><a href="../inventoryControl/BookList.jsp">도서목록조회</a></li>
            <li><a href="../inventoryControl/bookAdd.jsp">도서 추가</a></li>
            <li class="nav-divider"></li>
            <li class="nav-header"><strong> 재고관리</strong></li>
            <li><a href="../orderManagement/orderManagement.jsp"> 주문관리</a></li>
            <li class="nav-divider"></li>
			<li class="nav-header"><strong>고객센터</strong></li>
			<li class="active"><a href="inquiryAnswerList.jsp">문의답하기</a></li>
        </ul>
    </nav>
</div>
	<div class="col-md-10">
		<h2>문의 내역보기</h2>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>번호</th>
					<th>분류</th>
					<th>작성자</th>
					<th>제목</th>
					<th>등록일</th>
					<th>답변</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><a href="inquiryAnswer.jsp">1</a></td>
					<td><a href="inquiryAnswer.jsp">배송</a></td>
					<td><a href="inquiryAnswer.jsp">이소연</a></td>
					<td><a href="inquiryAnswer.jsp">배송언제되나요?</a></td>
					<td><a href="inquiryAnswer.jsp">2017.03.03</a></td>
					<td>답변미완료</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<jsp:include page="../../footer.html"/>
</body>
</html>