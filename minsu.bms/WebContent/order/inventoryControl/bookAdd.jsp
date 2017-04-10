<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="minsu.bms.bookmanagement.domain.Book"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>책추가</title>
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
	<article>
<div class="container">
	<div class="col-md-2">
	<nav class="nav-sidebar">
        <ul class="nav">
        	<li class="nav-header"><strong> 회원관리</strong></li>
            <li><a href="../member/memberList.html">회원목록조회</a></li>
            <li class="nav-divider"></li>
     		<li class="nav-header"><strong> 주문관리</strong></li>
            <li><a href="BookList.jsp">도서목록조회</a></li>
            <li class="active"><a href="bookAdd.html">도서 추가</a></li>
            <li class="nav-divider"></li>
            <li class="nav-header"><strong> 재고관리</strong></li>
            <li><a href="../orderManagement/orderManagement.jsp"> 주문관리</a></li>
        </ul>
    </nav>
	</div>
	<div class="col-md-10">
		<form class="form-horizontal">
		<br>
		<h2>도서 추가하기</h2>
		<br>
			<div class="col-md-3">
				<div>
					<a href="#" class="thumbnail" >
						<img src="http://placehold.it/200x300">
					</a>
				</div>
				<div>
					<input type="button" value="이미지 등록">
<!-- 이미지등록버튼 중앙 등록 하기 -->
				</div>
			</div>
			<div class="col-md-9">
				<!-- 분류 -->
				<div class="form-group">
					<label class="col-md-2">분류 :</label>
					<div class="col-md-10">
						<div class="col-md-3">
<!-- 각 분류 버튼들 '>' 넣고 한줄 정렬 하기 -->
<%
	if(request.getAttribute("modBook") != null) { 
		Book book = (Book)request.getAttribute("modBook");
%> 
					<form>
					<input type="hidden" name="choice" value="mod"/> 
							<select class="form-control" name="country">
								<option value="국내">국내</option>
								<option value="해외">해외</option>
							</select>
						</div>
						<div class="col-md-3">
							<select class="form-control" name="kind">
								<option value="문학">문학</option>
								<option value="인문">인문</option>
								<option value="참고서">참고서</option>
								<option value="기타">기타</option>
							</select>
						</div>
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-md-2" for="bookCode">도서 코드 :</label>
					<div class="col-md-10">
						<input type="text" class="form-control" name="bookCode" value="<%= book.getBookCode()  %>" placeholder="도서 코드를 입력하세요.">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-md-2" for="bookName">도서 제목 :</label>
					<div class="col-md-10">
						<input type="text" class="form-control" name="bookName" value="<%= book.getBookName() %>" placeholder="도서 제목을 입력하세요.">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-md-2" for="author">저자 :</label>
					<div class="col-md-10">
						<input type="text" class="form-control" name="writer" value="<%= book.getWriter() %>" placeholder="저자를 입력하세요.">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-md-2" for="publisher">출판사 :</label>
					<div class="col-md-10">
						<input type="text" class="form-control" name="company" value="<%= book.getCompany() %>" placeholder="출판사를 입력하세요.">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-md-2" for="publicationDate">출간일 :</label>
					<div class="col-md-10">
						<input type="date" class="form-control" name="publiDate" value="<%= book.getPubliDate() %>" placeholder="출간일을 입력하세요.">
					</div>
				</div>
							
				<div class="form-group">
					<label class="col-md-2" for="listPrice">판매가 :</label>
					<div class="col-md-10">
						<input type="text" class="form-control" name="bookPrice" value="<%= book.getBookPrice() %>" placeholder="판매가를 입력하세요.">
					</div>
				</div>
			<button type="submit" formaction="addBook.jsp" style="float:right;">수정</button>
			</form>
<%
	}else {
%>
					<form>
					<input type="hidden" name="choice" value="add"/> 
							<select class="form-control" name="country">
								<option value="국내">국내</option>
								<option value="해외">해외</option>
							</select>
						</div>
						<div class="col-md-3">
							<select class="form-control" name="kind">
								<option value="문학">문학</option>
								<option value="인문">인문</option>
								<option value="참고서">참고서</option>
								<option value="기타">기타</option>
							</select>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2" for="bookCode">도서 코드 :</label>
					<div class="col-md-10">
						<input type="text" class="form-control" name="bookCode" placeholder="도서 코드를 입력하세요.">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-md-2" for="bookName">도서 제목 :</label>
					<div class="col-md-10">
						<input type="text" class="form-control" name="bookName" placeholder="도서 제목을 입력하세요.">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-md-2" for="author">저자 :</label>
					<div class="col-md-10">
						<input type="text" class="form-control" name="writer" placeholder="저자를 입력하세요.">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-md-2" for="publisher">출판사 :</label>
					<div class="col-md-10">
						<input type="text" class="form-control" name="company" placeholder="출판사를 입력하세요.">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-md-2" for="publicationDate">출간일 :</label>
					<div class="col-md-10">
						<input type="date" class="form-control" name="publiDate" placeholder="출간일을 입력하세요.">
					</div>
				</div>
							
				<div class="form-group">
					<label class="col-md-2" for="listPrice">판매가 :</label>
					<div class="col-md-10">
						<input type="text" class="form-control" name="bookPrice" placeholder="판매가를 입력하세요.">
					</div>
				</div>
			<button type="submit" formaction="addBook.jsp" style="float:right;">책추가</button>
			</form>
<%
	}
%>
			<br><br>
			</div>
			<div class="row">
				<h3>책 소개</h3>
				<br>
				<div class="form-group">
					<label class="col-md-2" for="introduceTitle">소개 제목 :</label>
					<div class="col-md-9">
						<input type="text" class="form-control" id="introduceTitle" placeholder="소개 제목을 입력하세요.">
					</div>
					<div class="col-md-1">
						<button type="button" class="btn btn-default btn-sm">
							<span class="glyphicon glyphicon-plus"></span>
						</button>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2" for="introduceContent">소개 내용 :</label>
					<div class="col-md-9">
						<textarea class="form-control" rows="10" id="introduceContent" placeholder="내용을 입력하세요."></textarea>
					</div>
					<div class="col-md-1">
						<button type="button" class="btn btn-default btn-sm">
							<span class="glyphicon glyphicon-plus"></span>
						</button>
					</div>
				</div>
			</div>
			
			<!-- 저자 소개 -->
			<div class="row">
				<h3>저자 소개</h3>
				<br>
				<div class="form-group">
					<label class="col-md-2">저자가 속한 분야 :</label>
					<div class="col-md-9">
						<div class="col-md-3">
							<select class="form-control" id="sel1">
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
							</select>
						</div>
						<div class="col-md-3">
							<select class="form-control" id="sel1">
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
							</select>
						</div>
						<div class="col-md-3">
							<select class="form-control" id="sel1">
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
							</select>
						</div>
						<div class="col-md-1">
							<button type="button" class="btn btn-default btn-sm">
								<span class="glyphicon glyphicon-plus"></span>
							</button>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div>
						<a href="#" class="thumbnail" >
							<img src="http://placehold.it/200x300">
						</a>
					</div>
					<div>
						<input type="button" value="이미지 등록">
<!-- 이미지등록버튼 중앙 등록 하기 -->
					</div>
				</div>
				<div class="col-md-9">
					<textarea class="form-control" rows="10" id="introduceContent" placeholder="내용을 입력하세요."></textarea>
				</div>
				<div class="com-md-1">
					<button type="button" class="btn btn-default btn-sm">
						<span class="glyphicon glyphicon-plus"></span>
					</button>
				</div>
			</div>
			
			<!-- 목차 -->
			<div class="row">
				<h3>목차</h3>
				<br>
				<div class="form-group">
					<label class="col-md-2" for="pages">큰 목차 :</label>
					<div class="col-md-6">
						<input type="text" class="col-md-8 form-control" placeholder="목차를 입력하세요.">
					</div>
					<div class="col-md-1">
						<button type="button" class="btn btn-default btn-sm">
							<span class="glyphicon glyphicon-plus"></span>
						</button>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2"></label>
					<div class="col-md-5 col-md-offset-1">
						<input type="text" class="col-md-8 form-control" placeholder="목차를 입력하세요.">
					</div>
					<div class="col-md-1">
						<button type="button" class="btn btn-default btn-sm">
							<span class="glyphicon glyphicon-plus"></span>
						</button>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2"></label>
					<div class="col-md-5 col-md-offset-1">
						<input type="text" class="col-md-8 form-control" placeholder="목차를 입력하세요.">
					</div>
					<div class="col-md-1">
						<button type="button" class="btn btn-default btn-sm">
							<span class="glyphicon glyphicon-plus"></span>
						</button>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2"></label>
					<div class="col-md-5 col-md-offset-1">
						<input type="text" class="col-md-8 form-control" placeholder="목차를 입력하세요.">
					</div>
					<div class="col-md-1">
						<button type="button" class="btn btn-default btn-sm">
							<span class="glyphicon glyphicon-plus"></span>
						</button>
					</div>
				</div>
			</div>
			
			<!-- 출판사 서평 -->
			<div class="row">
				<h3>출판사 서평</h3>
				<br>
				<div class="form-group">
					<div class="col-md-11">
						<textarea class="form-control" rows="10" placeholder="내용을 입력하세요."></textarea>
					</div>
					<div class="col-md-1">
						<button type="button" class="btn btn-default btn-sm">
							<span class="glyphicon glyphicon-plus"></span>
						</button>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-9 col-sm-3">
					<button type="submit" class="btn btn-default">확인</button>
					<button type="submit" class="btn btn-default">취소</button>
				</div>
			</div>
		</form>
	</div>
</div>
</article>
<jsp:include page="../../footer.html"/>
</body>
</html>
