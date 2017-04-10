<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>회원정보수정</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
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
<div class="row">
				<div class="col-md-2">
				<nav class="nav-sidebar">
        <ul class="nav">
        	<li class="nav-header"><strong> 주문관리</strong></li>
            <li ><a href="orderList.html"> 주문조회</a></li>
            <li><a href="../basket/Basket.html"> 장바구니</a></li>
            <li><a href="refundDetail.html">취소/교환내역</a></li>
            <li class="nav-divider"></li>
     		<li class="nav-header"><strong> 나의 정보</strong></li>
            <li class="active"><a href="../../shop/system/idCheck.html"> 회원정보 수정</a></li>
            <li><a href="../../shop/system/idCheck1.html"> 회원 탈퇴</a></li>
            <li class="nav-divider"></li>
            <li class="nav-header"><strong> 나의 상담</strong></li>
            <li ><a href="customCenter2.html"> 나의 상담 내역</a></li>
        </ul>
    </nav>
				</div>
				<div class="col-md-10">
				<form action="../../shop/system/updateSuccess.html">
				<h4 style="padding-top: 16px;">회원정보 수정</h4>
				<section class="infoInput">
					<table class="table table-bordered">
						<tbody>
							<tr>
								<th>이 름</th>
								<td><input type="text" readOnly="readOnly" value="이소연"></td>
							</tr>
							<tr>
								<th>아이디</th>
								<td><input type="text" readOnly="readOnly" value="lee"></td>
							</tr>
							<tr>
								<th>비 밀 번 호</th>
								<td><input type="password" placeholder="password" />대,소문자,특수기호, 숫자 사용가능</td>
							</tr>
							<tr>
								<th>비 밀 번 호 확 인</th>
								<td><input type="password" placeholder="password" /></td>
							</tr>
							<tr>
								<th>성 별</th>
								<td><input type="radio" name="sex" checked="checked"/>여 <input type="radio"
									name="sex" disabled/>남</td>
							</tr>
							<tr>
								<th>핸드폰 번호</th>
								<td><input type="tel" list="mobileNum"> <datalist
										id="mobileNum">
										<option value="010"></option>
										<option value="019"></option>
										<option value="017"></option>
										<option value="016"></option>
									</datalist>-<input type="tel" />-<input type="tel" /> <input
									type="radio" name="mobile" />SKT <input type="radio"
									name="mobile" />KT<input type="radio" name="mobile" />LGT</td>
							</tr>
							<tr>
								<th>E-Mail</th>
								<td><input type="email">@<input type="text"
									list="emailList"> <datalist id="emailList">
										<option value="naver.com"></option>
										<option value="duam.net"></option>
										<option value="hanmail.net"></option>
										<option value="gmail.net"></option>
									</datalist></td>
							</tr>
							<tr>
								<th>생년월일</th>
								<td><input type="date" value="2000-01-01" readOnly="readOnly"/></td>
							</tr>
							<tr>
								<th>주 소</th>
								<td><input type="text" /></td>
							</tr>
						</tbody>
					</table>
				</section>
			
			<nav  style="float:right;">
				<input type="submit" value="수정하기" /> <a href="../../main.jsp" style="text-color:black;"><input type="button"
					value="취소하기" /></a>
			</nav>
			</form>
			</div>
		</div>
		</div>
		<br>
	<jsp:include page="../../footer.html"/>
</body>
</html>