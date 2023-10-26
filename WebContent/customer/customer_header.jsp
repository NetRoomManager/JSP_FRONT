<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>관리자화면</title>
<style type="text/css">
html {
	font-family: "AppleSDGothicNeoR00", "Noto Sans KR", "맑은 고딕";
}

.hidden {
	display: none;
}
</style>
</head>
<body style="background-image: url(https://p4.wallpaperbetter.com/wallpaper/995/48/877/room-wallpaper-preview.jpg);">
	<nav class="navbar navbar-expand-sm bg-info navbar-dark">
		<div class="container-fluid">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link active"
					href="${cpath }/">Home</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${cpath }/customer/customer_main.jsp">유저 메인페이지</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${cpath }/customer/customer_order.jsp">유저 주문 페이지</a></li>
			</ul>
		</div>
	</nav>
		<!-- center choice button-->
	<div class="container">
		<div class="row"
			style="width: 390px; margin: auto; text-align: center;">
			<div class="col-sm-4 text-white">
				<a href="${cpath }/customer/customer_recharge.jsp"><button class="text-bg-primary">요금제 충전</button></a>
			</div>
			<div class="col-sm-4 text-white">
				<a><button class="text-bg-primary">먹거리 주문</button></a>
			</div>
			<div class="col-sm-4 text-white">
				<a><button id="closeBtn" class="text-bg-primary"
					, class="alert alert danger" data-bs-toggle="modal"
					data-bs-target="#myModal">사용종료</button></a>
			</div>

			<!-- 모달 창 -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-body">
							<p>컴퓨터를 종료하시겠습니까?</p>
							<p id="countdown">3</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>