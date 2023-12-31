<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!--로그인/회원가입 폼 페이지 -->
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<title>로그인</title>
<style type="text/css">
html {
	font-family: "AppleSDGothicNeoR00", "Noto Sans KR", "맑은 고딕";
}

.hidden {
	display: none;
}

@charset "utf-8";
/* ---- reset ---- */
body {
	margin: 0;
	font: normal 75% Arial, Helvetica, sans-serif;
}

canvas {
	display: block;
	vertical-align: bottom;
} /* ---- particles.js container ---- */
#particles-js {
	position: absolute;
	width: 100%;
	height: 100%;
	background-color: #28455f;
	background-image: url("");
	background-repeat: no-repeat;
	background-size: cover;
	background-position: 50% 50%;
} /* ---- stats.js ---- */
.count-particles {
	background: #000022;
	position: absolute;
	top: 48px;
	left: 0;
	width: 80px;
	color: #13E8E9;
	font-size: .8em;
	text-align: left;
	text-indent: 4px;
	line-height: 14px;
	padding-bottom: 2px;
	font-family: Helvetica, Arial, sans-serif;
	font-weight: bold;
}

.js-count-particles {
	font-size: 1.1em;
}

#stats, .count-particles {
	-webkit-user-select: none;
	margin-top: 5px;
	margin-left: 5px;
}

#stats {
	border-radius: 3px 3px 0 0;
	overflow: hidden;
}

.count-particles {
	border-radius: 0 0 3px 3px;
}
</style>
</head>
<!-- 바디에 다크모드 -->
<body data-bs-theme="dark">
	<div id="particles-js" style="z-index: -1"></div>
	<nav class="navbar navbar-expand-sm bg-info navbar-dark">
		<div class="container-fluid">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link active"
					href="${cpath }/">Home</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${cpath }/admin/seat_manage.jsp">Admin</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${cpath }/auth/login_form.jsp">Auth</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${cpath }/customer/customer_main.jsp">customer</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${cpath }/auth/cant_use_form.jsp">사용불가</a></li>
			</ul>
		</div>
	</nav>
	<!-- 좌석이미지 -->
	<div class="container"
		style="background-image: url('../img/login_main.jpg'); background-size: 100%; background-repeat: no-repeat; background-position: center; width: auto; height: 500px; "></div>
	<!-- 컨테이너 -->
	<div class="container p-0">
		<div class="d-flex w-100 mt-3" style="height: 350px">
			<!-- 로그인 폼 -->
			<form action="" method="POST" class="w-25">
				<div class="form-floating mb-3 mt-3">
					<input type="text" class="form-control" id="username"
						placeholder="Enter username" name="username" required /> <label
						for="username">유저아이디</label>
				</div>
				<div class="form-floating mt-3 mb-3">
					<input type="password" class="form-control" id="users_password"
						placeholder="Enter password" name="users_password" required /> <label
						for="users_password">Password</label>
				</div>
				<button type="submit" class="btn btn-success w-100 p-3 mt-3">
					로그인</button>
				<button type="button" class="btn btn-warning w-100 p-3 mt-3"
					data-bs-toggle="modal" data-bs-target="#myModal">회원 가입</button>
			</form>
			<div class="mx-5 mt-3 mb-3 d-inline-block w-50">
				<h3>소셜로그인</h3>
				<img onclick="javascript:naverLogin()"
					class="rounded img-fluid mt-5 mb-5" style="height: 20%"
					src="../img/naver_circle.png" /> <img
					onclick="javascript:kakaoLogin()"
					class="rounded img-fluid mt-5 mb-5 mx-5" style="height: 20%"
					src="../img/kakao.webp" /> <img onclick="javascript:googleLogin()"
					class="rounded img-fluid mt-5 mb-5" style="height: 20%"
					src="../img/google.png" />
			</div>
			<div class="mt-3 mb-3">
				<h3>이용권 구매</h3>
				<a href="${cpath }/auth/buy_ticket.jsp">
					<button type="button" class="btn btn-primary w-100 p-3 mt-3">
						이용권 구매</button>
				</a>
			</div>
		</div>
		<div class="modal fade" id="myModal" data-bs-backdrop="static"
			data-bs-keyboard="false">
			<div class="modal-dialog">
				<div class="modal-content">
					<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title">회원가입</h4>
						<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
					</div>

					<!-- Modal body -->
					<div class="modal-body">
						<div class="container mt-3">
							<p>회원가입 페이지 입니다.</p>
							<!-- 액션   -->
							<form action="#">
								<div class="form-floating mt-3 mb-3">
									<input type="text" class="form-control" id="name"
										placeholder="Enter name" name="name" required /> <label
										for="name">이름</label>
								</div>

								<div class="form-floating mt-3 mb-3">
									<input type="text" class="form-control" id="username"
										placeholder="Enter username" name="username" required />
									<label for="username">아이디</label> <span class="text-danger"
										id="invalid">유효하지 않은 아이디입니다.</span> <span class="text-primary"
										id="valid">사용가능한 아이디입니다.</span>
								</div>

								<div class="form-floating mt-3 mb-3">
									<input type="password" class="form-control" id="password"
										placeholder="Enter password" name="password" required /> <label
										for="password">패스워드</label>
								</div>

								<div class="form-floating mt-3 mb-3">
									<input type="date" class="form-control" id="birth"
										placeholder="Enter birth" name="birth" required /> <label
										for="birth">생년월일</label>
								</div>

								<div class="form-floating mt-3 mb-3">
									<input type="email" class="form-control" id="email"
										placeholder="Enter username" name="email" required /> <label
										for="email">이메일</label>
								</div>

								<div class="form-floating mb-3 mt-3">
									<input type="text" class="form-control" id="mobile"
										placeholder="Enter mobile" value="010" name="mobile" required />
									<label for="mobile">전화번호</label>
								</div>

								<div class="form-floating mb-3 mt-3">
									<input type="text" class="form-control" id="lol_nick"
										placeholder="리그오브레전드 닉네임" name="lol_nick" /> <label
										for="lol_nick">리그오브레전드 닉네임(선택)</label>
								</div>

								<button type="submit" class="btn btn-primary">회원가입</button>
							</form>
						</div>
					</div>

					<!-- Modal footer -->
					<div class="modal-footer">
						<button type="button" class="btn btn-danger"
							data-bs-dismiss="modal">닫기</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
		function naverLogin() {
			const url = "https://nid.naver.com/nidlogin.login?mode=form&url=https://www.naver.com/";
			window
					.open(url, "네이버 로그인",
							"width=800,height=650,left=500,top=200");
		}
		function kakaoLogin() {
			const url = " https://accounts.kakao.com/login/?continue=https%3A%2F%2Fdevelopers.kakao.com%2Flogin%3Fcontinue%3Dhttps%253A%252F%252Fdevelopers.kakao.com%252F&lang=ko#login";
			window
					.open(url, "카카오 로그인",
							"width=800,height=650,left=500,top=200");
		}

		function googleLogin() {
			const url = "https://accounts.google.com/v3/signin/identifier?Email=donny1848%40gmail.com&continue=https%3A%2F%2Fwww.google.com%2F&ifkv=AVQVeyyKPLrKZ9oxPsb_sNG8L5Lg24HnJ-AurFW_sJCcli3-Ubb6bVcxe50KU5OP-f_Cb7NZV0Jk9g&flowName=GlifWebSignIn&flowEntry=ServiceLogin&dsh=S-2029366799%3A1698057758880510&theme=glif";
			window
					.open(url, "카카오 로그인",
							"width=800,height=650,left=500,top=200");
		}
	</script>
</body>
</html>
