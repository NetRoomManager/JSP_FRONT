<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="customer_header.jsp"%>

<!-- PC방 상품 주문 페이지 -->
<body class="text-bg-dark">
	<div id="order_top" class="text-decoration-none w-100 mx-0">
		<!-- Carousel -->
		<div id="order_notice" class="carousel slide" data-bs-ride="carousel">
			<!-- The slideshow/carousel -->
			<div class="carousel-inner bg-dark" style="text-align: center;">
				<div class="carousel-item active">
					<ul class="list-unstyled">
						<li class="text-primary">
							<p>계좌이체하시고 카운터 메세지로 문의 부탁드려요</p>
						</li>
					</ul>
				</div>
				<div class="carousel-item">
					<ul class="list-unstyled">
						<li class="text-primary">
							<p>12:00 ~ 13:00시 까지는 음식 주문 안됩니다</p>
						</li>
					</ul>
				</div>
			</div>

			<!-- Left and right controls/icons -->
			<button class="carousel-control-prev" type="button"
				data-bs-target="#notice" data-bs-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#notice" data-bs-slide="next">
				<span class="carousel-control-next-icon"></span>
			</button>
		</div>
	</div>

	<div id="selectMenu">
		<div class="container-fluid d-flex text-bg-light rounded-pill"
			data-bs-touch="false" style="margin-left: 0;">
			<div class="inner">
				<div class="list-unstyled d-flex px-5">
					<ul style="list-style: none;"
						class="product_menus d-flex justify-content-between align-middle mb-0">
						<li class="menu_item px-5 ms-5 mx-5  text-muted"
							style="margin-left: 300px;"><button id="btn_product_cate_1" class="btn btn-warning">추천메뉴</button></li>
						<li class="menu_item px-5 ms-5 mx-5  text-muted"><button
								id="btn_product_cate_2" class="btn btn-warning">음식</button></li>
						<li class="menu_item px-5 ms-5 mx-5  text-muted"><button
								id="btn_product_cate_3" class="btn btn-warning">캔음료</button></li>
						<li class="menu_item px-5 ms-5 mx-5  text-muted"><button
								id="btn_product_cate_4" class="btn btn-warning">기타</button></li>
					</ul>
				</div>
			</div>
		</div>
	</div>


	<!-- 메뉴선택 + 주문 담기 창 -->
	<div id="order_menu" class="d-flex">
		<div id="order_detailMenu"
			class="container mt-3 d-flex flex-wrap me-0 ms-0 fw-bold">
			<div class="d-flex w-25">
				<div id="menu1" class="mt-3 px-2 text-bg-light border border-info"
					style="width: 200px; height: 250px;">
					<img src="../img/너굴맨.png" class="order_product_img w-100">
					<ul class="list-unstyled pt-1">
						<li class="order_product_name pb-4">빠네 까르보나라 스파게티</li>
						<li class="order_product_price">3,500원</li>
					</ul>
				</div>
			</div>

			<div class="d-flex w-25">
				<div id="menu2" class="mt-3 px-2 text-bg-light border border-info"
					style="width: 200px; height: 250px;">
					<img src="../img/너굴맨.png" class="order_product_img w-100">
					<ul class="list-unstyled pt-1">
						<li class="order_product_name pb-4">빠네 까르보나라 스파게티</li>
						<li class="order_product_price">3,500원</li>
					</ul>
				</div>
			</div>

			<div class="d-flex w-25">
				<div id="menu3" class="mt-3 px-2 text-bg-light border border-info"
					style="width: 200px; height: 250px;">
					<img src="../img/너굴맨.png" class="order_product_img w-100">
					<ul class="list-unstyled pt-1">
						<li class="order_product_name pb-4">빠네 까르보나라 스파게티</li>
						<li class="order_product_price">3,500원</li>
					</ul>
				</div>
			</div>

			<div class="d-flex w-25">
				<div id="menu4" class="mt-3 px-2 text-bg-light border border-info"
					style="width: 200px; height: 250px;">
					<img src="../img/너굴맨.png" class="w-100">
					<ul class="list-unstyled pt-1">
						<li class="order_product_name pb-4">빠네 까르보나라 스파게티</li>
						<li class="order_product_price">3,500원</li>
					</ul>
				</div>
			</div>

			<div class="d-flex w-25">
				<div id="menu5" class="mt-3 px-2 text-bg-light border border-info"
					style="width: 200px; height: 250px;">
					<img src="../img/너굴맨.png" class="order_product_img w-100">
					<ul class="list-unstyled pt-1">
						<li class="order_product_name pb-4">빠네 까르보나라 스파게티</li>
						<li class="order_product_price">3,500원</li>
					</ul>
				</div>
			</div>

			<div class="d-flex w-25">
				<div id="menu6" class="mt-3 px-2 text-bg-light border border-info"
					style="width: 200px; height: 250px;">
					<img src="../img/너굴맨.png" class="order_product_img w-100">
					<ul class="list-unstyled pt-1">
						<li class="order_product_name pb-4">빠네 까르보나라 스파게티</li>
						<li class="order_product_price">3,500원</li>
					</ul>
				</div>
			</div>

			<div class="d-flex w-25">
				<div id="menu7" class="mt-3 px-2 text-bg-light border border-info"
					style="width: 200px; height: 250px;">
					<img src="../img/너굴맨.png" class="order_product_img w-100">
					<ul class="list-unstyled pt-1">
						<li class="order_product_name pb-4">빠네 까르보나라 스파게티</li>
						<li class="order_product_price">3,500원</li>
					</ul>
				</div>
			</div>

			<div class="d-flex">
				<div id="menu8" class="mt-3 px-2 text-bg-light border border-info"
					style="width: 200px; height: 250px;">
					<img src="../img/너굴맨.png" class="order_product_img w-100">
					<ul class="list-unstyled pt-1">
						<li class="order_product_name pb-4">빠네 까르보나라 스파게티</li>
						<li class="order_product_price">3,500원</li>
					</ul>
				</div>
			</div>

			<div class="d-flex w-25">
				<div id="menu9" class="mt-3 px-2 text-bg-light border border-info"
					style="width: 200px; height: 250px;">
					<img src="../img/너굴맨.png" class="order_product_img w-100">
					<ul class="list-unstyled pt-1">
						<li class="order_product_name pb-4">빠네 까르보나라 스파게티</li>
						<li class="order_product_price">3,500원</li>
					</ul>
				</div>
			</div>

			<div class="d-flex w-25">
				<div id="menu10" class="mt-3 px-2 text-bg-light border border-info"
					style="width: 200px; height: 250px;">
					<img src="../img/너굴맨.png" class="order_product_img w-100">
					<ul class="list-unstyled pt-1">
						<li class="order_product_name pb-4">빠네 까르보나라 스파게티</li>
						<li class="order_product_price">3,500원</li>
					</ul>
				</div>
			</div>

			<div class="d-flex w-25">
				<div id="menu11" class="mt-3 px-2 text-bg-light border border-info"
					style="width: 200px; height: 250px;">
					<img src="../img/너굴맨.png" class="order_product_img w-100">
					<ul class="list-unstyled pt-1">
						<li class="order_product_name pb-4">빠네 까르보나라 스파게티</li>
						<li class="order_product_price">3,500원</li>
					</ul>
				</div>
			</div>

			<div class="d-flex w-25">
				<div id="menu12" class="mt-3 px-2 text-bg-light border border-info"
					style="width: 200px; height: 250px;">
					<img src="../img/너굴맨.png" class="order_product_img w-100">
					<ul class="list-unstyled pt-1">
						<li class="order_product_name pb-4">빠네 까르보나라 스파게티</li>
						<li class="order_product_price">3,500원</li>
					</ul>
				</div>
			</div>

		</div>


		<!-- 오른쪽 메뉴 장바구니 -->
		<div id="cartBtn" class="w-50 border"
			style="background-color: purple;">
			<div id="rightTop justify-content-end" style="height: 70px;">
				<ul class="d-flex list-unstyled justify-content-between mb-0">
					<!-- pc 좌석 번호 -->
					<li class="text-bg-primary" style="border-radius: 20%;"><h4>PC
							No.<span class="order_seat_id">71</span></h4></li>
				</ul>
				<ul class="d-flex list-unstyled justify-content-between mb-0">
					<li><h4 class="order_user_name">회원</h4></li>
					<li><button class="text-bg-dark">🛒주문내역 보기</button></li>
				</ul>
			</div>

			<div class="middle border border-info text-bg-light w-100 h-50">
				<!-- 주문버튼 눌렀을 때, 옮겨질 내용들 담는 곳-->
				<div id="movingMenu" class="w-100"
					style="height: 360px; border-radius: 25%;"></div>
				<!-- 총 주문 금액 옆에 금액 나오기-->
				<div id="totalPrice"
					class="d-flex text-bg-primary justify-content-between fs-4 fw-bold list-unstyled"
					style="height: 60px;">
					<ul class="d-flex list-unstyled justify-content-between mb-0">
						<li >총 주문 금액 : </li>
						<li class="order_total_price">0원</li>
					</ul>
				</div>
			</div>

			<!-- 결제 방식 -->
			<div id="pmBtn" class="border border-info text-bg-dark w-100"
				style="height: 350px;">

				<!-- 현금, kakaoPay, tossPay, KG 이니시스  -->
				<div id="chBtn" class="d-flex list-unstyled w-100">
					<ul class="d-flex list-unstyled justify-content-between mb-0">
					<!-- 카테고리 forEach-->
						<li class="ps-4 mt-3"><button
								class="order_pay_method btn btn-primary btn btn-lg">현금</button></li>
						<li class="ps-4 mt-3"><button
								class="order_pay_method btn btn-primary btn btn-lg">kakaoPay</button></li>
						<li class="ps-5 mt-3"><button
								class="order_pay_method btn btn-primary btn btn-lg">tossPay</button></li>
						<li class="ps-5 mt-3"><button
								class="order_pay_method btn btn-primary btn btn-lg">휴대폰 결제</button></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>