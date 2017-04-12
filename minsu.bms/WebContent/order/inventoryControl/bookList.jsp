<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="minsu.bms.bookmanagement.domain.Book"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>책목록조회</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
.table {
	text-align: center;
}

/*여기까지*/
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
	<jsp:include page="../../header.jsp" />
	<article>
		<div class="container">
			<div class="row">
				<div class="col-md-2">
					<nav class="nav-sidebar">
						<ul class="nav">
							<li class="nav-header"><strong> 회원관리</strong></li>
							<li><a href="../member/memberList.jsp">회원목록조회</a></li>
							<li class="nav-divider"></li>
							<li class="nav-header"><strong> 주문관리</strong></li>
							<li class="active"><a href="listBooks.jsp">도서목록조회</a></li>
							<li><a href="bookAdd.jsp">도서 추가</a></li>
							<li class="nav-divider"></li>
							<li class="nav-header"><strong> 재고관리</strong></li>
							<li><a href="../orderManagement/orderManagement.jsp">
									주문관리</a></li>
							<li class="nav-divider"></li>
							<li class="nav-header"><strong>고객센터</strong></li>
							<li><a href="../customerCenter/queryListProc.jsp">문의답하기</a></li>
						</ul>
					</nav>
				</div>
					<div class="col-md-10">
						<table class="table table-hover">
							<thead>
								<tr>
									<td></td>
									<td><strong>도서코드</strong></td>
									<td><strong>분류</strong></td>
									<td><strong>제목</strong></td>
									<td><strong>저자</strong></td>
									<td><strong>출판사</strong></td>
									<td><strong>출간일</strong></td>
									<td><strong>정가</strong></td>
									<td><strong>수정</strong></td>
									<td><strong>삭제</strong></td>
								</tr>
							</thead>
							<tbody>
								<%
									if (request.getAttribute("books") != null) {
										List<Book> books = (List<Book>) request.getAttribute("books");
										for (Book book : books) {
								%>
								<form>
								<tr>
									<td><input type="hidden" name="bookCode"
										value="<%=book.getBookCode()%>"></td>
									<td><%=book.getBookCode()%></td>
									<td><%=book.getKind()%></td>
									<td><%=book.getBookName()%></td>
									<td><%=book.getWriter()%></td>
									<td><%=book.getCompany()%></td>
									<td><%=book.getPubliDate()%></td>
									<td><%=book.getBookPrice()%></td>
									<td><button type="submit" formaction="modifyBook.jsp">수정</button></td>
									<td><button type="submit" formaction="deleteBook.jsp">삭제</button></td>
								</tr>
								</form>
								<%
									}
								}
								%>
							</tbody>
						</table>
						<div class="row">
							<div class="col-sm-3"></div>
							<div class="col-sm-6">
								<div class="text-center" id="searchPageNum">
									<!-- 페이지숫자 테두리 없는게 더 깔끔하겠지? 내일 고칠게/  그리고 이게 검색된책들 아래가 아니고, 위에 오는게 맞아? -->
									<ul class="pagination pagination-sm" id="pageNum">
										<li><a href="#" rel="prev">«</a></li>
										<li class="active"><a href="#">1</a></li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">4</a></li>
										<li><a href="#">5</a></li>
										<li><a href="#">6</a></li>
										<li><a href="#">7</a></li>
										<li><a href="#">8</a></li>
										<li><a href="#">9</a></li>
										<li><a href="#">10</a></li>
										<li><a href="#" rel="next">»</a></li>
									</ul>
								</div>
								<div class="col-sm-3"></div>
							</div>
						</div>
					</div>
			</div>
		</div>
	</article>

	<!-- //구매화면 -->
	<jsp:include page="../../footer.html" />
</body>
</html>
