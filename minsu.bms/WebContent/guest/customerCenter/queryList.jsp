<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="minsu.bms.query.domain.Query"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>나의 상담내역</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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

.nav-header {
	color: #909090;
}

/*//사이드바*/
</style>
</head>
<body>
	<jsp:include page="../../header.jsp" />
	<div class="container">
		<div class="col-md-2">

			<nav class="nav-sidebar">
				<ul class="nav">
					<li class="nav-header"><strong> 주문관리</strong></li>
					<li><a href="../order/orderListProc.jsp"> 주문조회</a></li>
					<li><a href="../basket/BasketProc.jsp"> 장바구니</a></li>
					<li><a href="../refund/refundListProc.jsp">취소/교환내역</a></li>
					<li class="nav-divider"></li>
					<li class="nav-header"><strong> 나의 정보</strong></li>
					<li><a href="../../shop/system/idCheck.jsp"> 회원정보 수정</a></li>
					<li><a href="../../shop/system/idCheck1.jsp"> 회원 탈퇴</a></li>
					<li class="nav-divider"></li>
					<li class="nav-header"><strong> 나의 상담</strong></li>
					<li class="active"><a href="queryListProc.jsp"> 나의 상담 내역</a></li>
				</ul>
			</nav>
		</div>
		<div class="col-md-10">
			<h2>나의 상담 내역</h2>
			<table class="table table-hover">
			<form><button type="submit" formaction="query.jsp" class="btn btn-md" style="float:right;">문의하기</button></form>
				<thead>
					
					<tr>
						<th>번호</th>
						<th>분류</th>
						<th>제목</th>
						<th>등록일</th>
						<th>답변상태</th>
						<th>답변</th>
						<th>삭제</th>
					</tr>
				</thead>
				<tbody>
					<%
						if (request.getAttribute("querys") != null) {
							List<Query> querys = (List<Query>) request.getAttribute("querys");
							for (Query query : querys) {
					%>
					<tr>
						<td><%=query.getBoardNum()%></td>
						<td><%=query.getSeparation()%></td>
						<td><%=query.getTitle()%></td>
						<td><%=query.getReportingDate()%></td>
						<td><%=query.getAnswerState()%></td>
						<td>
						
							<form action="answerProc.jsp">
							<input type="hidden" name="boardNum" value="<%=query.getBoardNum() %>"/>
								<%
									String msg = "";
											if (query.getAnswerState() == "답변완료"||query.getAnswerState().equals("답변완료")) {
												msg = "답변보기";
											} else if(query.getAnswerState() == "답변전"||query.getAnswerState().equals("답변전")){
												msg = "답변없음";
											}
								%>
								<input type="submit" class="btn btn-md" value="<%=msg%>" />

							</form>
						</td>
						<td>
									<button class="btn btn-md" data-toggle="modal"
										data-target="#del<%=query.getBoardNum()%>">삭제</button>
										
									<div class="modal fade" id="del<%=query.getBoardNum()%>"
									role="dialog" aria-labelledby="delete" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">
													<span class="glyphicon glyphicon-remove"
														aria-hidden="true"></span>
												</button>
												<h4 class="modal-title custom_align" id="Heading">문의내역
													삭제</h4>
											</div>
											<form action="queryDelProc.jsp" method="post"
												class="modal-body">
												<div class="alert alert-danger">
													<span class="glyphicon glyphicon-warning-sign"></span> 문의내역을
													삭제하시겠습니까? <input type="hidden" name="boardNum"
														value="<%=query.getBoardNum()%>"/>
												</div>
												<div class="modal-footer ">
													<button type="submit" class="btn btn-default">
														<span class="glyphicon glyphicon-ok-sign"></span> 확인
													</button>
													<button type="button" class="btn btn-default"
														data-dismiss="modal">
														<span class="glyphicon glyphicon-remove"></span> 취소
													</button>
												</div>
											</form>
										</div>
									</div>
								</div>
						</td>
					</tr>
					<%
						}
						}
					%>
				</tbody>
			</table>
		</div>
	</div>
	<jsp:include page="../../footer.html" />
</body>
</html>