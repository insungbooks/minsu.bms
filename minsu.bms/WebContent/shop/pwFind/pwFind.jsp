<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>비밀번호 찾기</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<style>

</style>
</head>
<body>
	<jsp:include page="../../header.jsp"/>
<article>
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-5">
			<form action="pwFindAfter.jsp">
				<div class="row" style="border: 1px solid black;">
					<div class="col-md-8">
						<h2>비밀번호 찾기</h2>
						<hr>
						<input type="text" 
							class="form-control" name= "id" 	 data-rule-required="true" 
							placeholder="아이디" maxlength="30"> 
						<input type="text"
							class="form-control" name= "name"	 data-rule-required="true"
							placeholder="이름" 	maxlength="30">
						<input type="text"
							class="form-control" name="resident" data-rule-required="true"
							placeholder="주민번호-제외" maxlength="30">
						<br>
					</div>
					<div class="row">
					<div class="col-md-12">
						<nav class="Finds" style="float:right;">
							<input type="submit" value="비밀번호찾기"/> <a href="../../customerCenter/customerCenter/frequent10.jsp"><input type="button" value="고객센터"/></a>
						</nav>
					</div>
				</div>
				</form>
				</div>				
				</div>
				<div class="col-md-5">
					<img src="../../img/ad/login.jpg" width="230px">
				</div>		
		</div>
	</div>
<br><br><br><br><br><br><br><br>
</article>
<jsp:include page="../../footer"/>
</body>
</html>