<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>아이디찾기</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<style>

</style>
</head>
<body>
	<jsp:include page="../../header.jsp"/>
</head>
<body>
<div class="container">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-5">
						<div class="row" style="border: 1px solid black;">
							<div class="col-md-8">
								<h2>아이디 찾기</h2>
								<hr>

								<br>
								<p>아이디는</p>
								<p>insungJY 입니다.</p>
								<br>
							</div>
							<div class="row">
								<div class="col-md-12">
									<nav class="Finds" style="float: right;">
									<a
											href="../pwFind/pwFind.jsp"><input
											type="button" value="비밀번호찾기" /></a> 
											
										<a
											href="../login/login.jsp"><input
											type="button" value="로그인하기" /></a> <a
											href="../../main.jsp"><input
											type="button" value="홈으로가기" /></a>
									</nav>
								</div>
							</div>
				</div>
			</div>
			<div class="col-md-5">
				<img src="../../img/ad/login.jpg" width="230px">
			</div>
		</div>
		</div>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
<jsp:include page="../../footer"/>

</body>
</html>