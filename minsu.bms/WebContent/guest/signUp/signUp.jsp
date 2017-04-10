<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>회원가입</title>
<!-- 회원가입 -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<style>

h2, h4 { /*그룹을 쉼표로 지음*/
	font-family: "돋음";
}

.sign {
	float: right;
	padding-bottom: 16px;
}

.clauseIn {
	border: 1px solid black;
	width: 500px;
	height: 100px;
	overflow: scroll;
}

.signInfo {
	border: 1px solid black;
	width: 1100px;
	height: 100px;
	overflow: scroll;
}
/*여기까지*/

</style>
</head>
<body>
	<jsp:include page="../../header.jsp"/>
	<article>
		<div class="container">
			<h2>회원가입을 환영합니다.</h2>
			<hr>
			<section>
				<div class="text" style="border: 1px solid black;">
					<!-- 가입안내 -->
					<p>동의를 거부하시고자 하는 경우 회원정보변경을 통해 직접 탈퇴 진행 또는 고객센터로 요청할 수 있습니다.</p>
					<p>단, 동의거부에 따른 서비스사용에 제한이 있을 수 있습니다.</p>
					<p>- 고객센터 전화 : 1234-5678</p>
					<p>- 개인정보 이메일 : dlstjd@dlstjd.co.kr</p>
				</div>
			</section>

			<p>
<form action="../../shop/system/signUpSuccess.html">
				<!-- 이용약관 -->
			<div class="container">
			
				<hr>
				<h4 style="padding-top: 16px;">약관동의</h4>
				<div class="row">
					<div class="col-sm-6">
						<ul>
							<li>이용약관 안내</li>
						</ul>
						<section class="clauseIn">

							<h4>총칙(목적)</h4>
							<p>본 약관은 인성문고㈜(이하 “회사”라 한다)와 인성문고 계열사가 제공하는 오프라인 영업장 및 온라인 상의
								인터넷 서비스(이하 “서비스”라 하며, 접속 가능한 유.무선 단말기의 종류와는 상관없이 이용 가능한 “회사”가
								제공하는 모든 “서비스”를 의미합니다)를 이용함에 있어서 “회사”와 이용자의 권리 의무 및 책임 사항을 규정함을
								목적으로 합니다. ※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을
								준용합니다」</p>

						</section>
						<input type="checkbox"> 동의합니다.
					</div>
					<div class="col-sm-6">
						<ul>
							<li>개인정보 동의 안내</li>
						</ul>
						<section class="clauseIn">
							<h4>회사 내부 방침에 의한 정보보유 사유</h4>
							<p>- 보존 항목 : 이름, 생년월일, 성별, 아이디(ID), 자택 전화번호, 자택 주소, 휴대전화번호,
								본인 확인기관을 통해 받은 식별정보</p>
							<p>- 보존 근거 : 서비스 이용의 혼선 방지, 불법적 사용자에 대한 관련 기관 수사 협조</P>
							<p>- 보존 기간 : 1년</p>

						</section>
						<input type="checkbox"> 동의합니다.
					</div>
				</div>
				<hr>
			</div>
			<div class="container">
				<h4 style="padding-top: 16px;">정보입력</h4>
				<section class="infoInput">
					<table class="table table-bordered">
						<tbody>
							<tr>
								<th>이 름</th>
								<td><input type="text"></td>
							</tr>
							<tr>
								<th>아이디</th>
								<td><input type="text"></td>
							</tr>
							<tr>
								<th>비 밀 번 호</th>
								<td><input type="password" placeholder="password" /></td>
							</tr>
							<tr>
								<th>비 밀 번 호 확 인</th>
								<td><input type="password" placeholder="password" /></td>
							</tr>
							<tr>
								<th>성 별</th>
								<td><input type="radio" name="sex" />여 <input type="radio"
									name="sex" />남</td>
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
								<td><input type="date" /></td>
							</tr>
							<tr>
								<th>주 소</th>
								<td><input type="text" /></td>
							</tr>
						</tbody>
					</table>
				</section>
			</div>
			<nav class="sign">
				<input type="submit" value="가입하기" /> <a href="../../main.jsp" style="text-color:black;"><input type="button"
					value="취소하기" /></a>
			</nav>
			</form>
		</div>
		
	</article>
	<jsp:include page="../../footer.html"/>
</body>
</html>