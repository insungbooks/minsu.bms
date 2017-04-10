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
<article><form action="idFindAfter.jsp">
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-5">
				<div class="row" style="border: 1px solid black;">
					<div class="col-md-8">
						<h2>아이디 찾기</h2>
						<hr>
						<input type="text" 
							class="form-control" name="name"
							data-rule-required="true" placeholder="이름" maxlength="30"> 
						<input type="text"
							class="form-control" name="resident" 
							data-rule-required="true" placeholder="주민번호-제외" maxlength="30">
					</div>
					<div class="row">
					<div class="col-md-12">
						<nav class="Finds" style="float:right;">
						<a href="../../customerCenter/frequent10.jsp"><button type="button" class="btn btn-md" >고객센터</button></a>
							<button type="submit" class="btn  btn-md">아이디찾기</button>
			
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
	</form>
<br><br><br><br><br><br><br><br>
</article>
<jsp:include page="../../footer"/>
</body>
</html>