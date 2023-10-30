<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />

<!-- 이용권 구매 페이지 -->
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>이용권 구매</title>
<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
.ticket_item:hover {
	padding: 10px;
	transition: 0.5s;
}
</style>
</head>

<body>
	<nav class="navbar navbar-expand-sm navbar-dark bg-dark p-3">
		<div class="container-fluid d-flex">
			<a class="navbar-brand" href="${cpath }/auth/login_form.jsp">NetRoom
				PC방</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#mynavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="d-flex text-light">
				<div>
					<h4>no.71</h4>
				</div>
			</div>
		</div>
	</nav>

	<div class="w-100 bg-light container mt-5">
		<h4 class="text-black pt-3">회원 검색하기</h4>
		<form action="#" class="pb-3">
			<div class="form-floating mb-3 mt-3">
				<input type="text" class="form-control" id="name"
					placeholder="Enter name" name="name" /> <label for="name">이름으로
					검색하기</label>
			</div>
		</form>
	</div>
	<div class="container mt-3">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>이름</th>
					<th>생년월일</th>
					<th>이메일</th>
					<th>선택</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<div class="form-group mb-2 d-flex" id="1">
						<td><input type="text" class="form-control " name="name"
							id="name" value="신짱구" readonly></td>
						<td><input type="date" class="form-control " name="birth"
							id="birth" value="2003-03-04" readonly></td>
						<td><input type="email" class="form-control "
							name="users_email" id="email" value="march03@naver.com"
							readonly></td>

						<td><input type="button" class="btn btn-primary" value="선택하기"
							data-bs-toggle="offcanvas" data-bs-target="#ticket"></td>
					</div>
					</td>
				</tr>
				<tr>
					<div class="form-group mb-2 d-flex">
						<td><input type="text" class="form-control " name="name"
							id="name" value="홍길동" readonly></td>
						<td><input type="date" class="form-control " name="birth"
							id="birth" value="1999-04-12" readonly></td>
						<td><input type="email" class="form-control "
							name="users_email" id="email" value="hong321@naver.com"
							readonly></td>

						<td><input type="button" class="btn btn-primary" value="선택하기"
							data-bs-toggle="offcanvas" data-bs-target="#ticket"></td>
					</div>
					</td>
				</tr>
				<tr>
					<div class="form-group mb-2 d-flex">
						<form>
							<td><input type="text" class="form-control " id="name"
								value="김석국" readonly></td>
							<td><input type="date" class="form-control " id="birth"
								value="2007-12-03" readonly></td>
							<td><input type="email" class="form-control " id="email"
								value="phycho321@naver.com" readonly></td>
							<td><input type="button" class="btn btn-primary"
								value="선택하기" data-bs-toggle="offcanvas" data-bs-target="#ticket"></td>
						</form>
					</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>


	<div class="offcanvas offcanvas-end" id="payments">
		<div class="offcanvas-header">
			<h1 class="offcanvas-title">결제하기</h1>
			<button type="button" class="btn-close" data-bs-dismiss="offcanvas"></button>
		</div>
		<div class="offcanvas-body d-flex flex-wrap">
			<button class="btn">
				<img class="btn_img_kakaopay img-fluid" src="../img/kakaopay.jpg" alt="kakaopay"
					width="1100" height="500">
			</button>
			<button class="btn">
				<img class="btn_img_tosspay img-fluid" src="../img/tosspay.png" alt="tosspay">
			</button>
			<button class="btn">
				<img class="btn_img_kgpay img-fluid" src="../img/KG_pay_button.png" alt="kgpay"
					width="1100" height="500">
			</button>
			<button class=".btn_pay_cancle btn btn-secondary " data-bs-dismiss="offcanvas"
				type="button">구매취소</button>
		</div>
	</div>

	<div
		class="w-100 bg-light container d-flex flex-wrap mt-3 mb-3 h-50 offcanvas offcanvas-bottom"
		id="ticket" style="overflow-x: auto; margin: auto">
		<div class="ticket_item text-lg-center mx-5" style="width: 20%;">
			<div class="card mt-3 mb-3 fw-bold border-black border-1 ticket_item"
				style="background-color: #ffbb3f">
				<div class="card-header text-dark">회원 1시간 이용권</div>
				<div class="card-body text-danger">[1,000원]</div>
				<div class="card-footer">
					<button class="btn btn-primary" type="button"
						data-bs-toggle="offcanvas" data-bs-target="#payments">구매하기</button>
				</div>
			</div>
		</div>

		<div class="ticket_item text-lg-center mx-5" style="width: 20%">
			<div
				class="card mt-3 mb-3 fw-bold border-black border-1 "
				style="background-color: #ffbb3f">
				<div class="card-header text-dark">회원 2시간 이용권</div>
				<div class="card-body text-danger">[2,000원]</div>
				<div class="card-footer">
					<button class="btn btn-primary" type="button"
						data-bs-toggle="offcanvas" data-bs-target="#payments">구매하기</button>
				</div>
			</div>
		</div>

		<div class="ticket_item text-lg-center mx-5" style="width: 20%">
			<div class="card mt-3 mb-3 fw-bold border-black border-1"
				style="background-color: #ffbb3f">
				<div class="card-header text-dark">회원 3시간 이용권</div>
				<div class="card-body text-danger">[3,000원]</div>
				<div class="card-footer">
					<button class="btn btn-primary" type="button"
						data-bs-toggle="offcanvas" data-bs-target="#payments">구매하기</button>
				</div>
			</div>
		</div>
		
		<div class="ticket_item text-lg-center mx-5" style="width: 20%">
			<div class="card mt-3 mb-3 fw-bold border-black border-1"
				style="background-color: #ffbb3f">
				<div class="card-header text-dark">회원 5시간 이용권</div>
				<div class="card-body text-danger">[4,000원]</div>
				<div class="card-footer">
					<button class="btn btn-primary" type="button"
						data-bs-toggle="offcanvas" data-bs-target="#payments">구매하기</button>
				</div>
			</div>
		</div>

		<div class="ticket_item text-lg-center mx-5" style="width: 20%">
			<div class="card mt-3 mb-3 fw-bold border-black border-1"
				style="background-color: #ffbb3f">
				<div class="card-header text-dark">회원 10시간+1시간 이용권</div>
				<div class="card-body text-danger">[10,000원]</div>
				<div class="card-footer">
					<button class="btn btn-primary" type="button"
						data-bs-toggle="offcanvas" data-bs-target="#payments">구매하기</button>
				</div>
			</div>
		</div>

		<div class="ticket_item text-lg-center mx-5" style="width: 20%">
			<div class="card mt-3 mb-3 fw-bold border-black border-1"
				style="background-color: #ffbb3f">
				<div class="card-header text-dark">회원 20시간 + 3시간이용권</div>
				<div class="card-body text-danger">[20,000원]</div>
				<div class="card-footer">
					<button class="btn btn-primary" type="button"
						data-bs-toggle="offcanvas" data-bs-target="#payments">구매하기</button>
				</div>
			</div>
		</div>

		<div class="ticket_item text-lg-center mx-5" style="width: 20%">
			<div class="card mt-3 mb-3 fw-bold border-black border-1"
				style="background-color: #ffbb3f">
				<div class="card-header text-dark">회원 50시간 + 10시간 이용권</div>
				<div class="card-body text-danger">[50,000원]</div>
				<div class="card-footer">
					<button class="btn btn-primary" type="button"
						data-bs-toggle="offcanvas" data-bs-target="#payments">구매하기</button>
				</div>
			</div>
		</div>
	</div>

	<script>
		// 검색 이벤트 리스너
		window.addEventListener("DOMContentLoaded", function() {
			const searchInput = document.getElementById("name");
			searchInput.addEventListener("keyup", function() {
				const searchText = searchInput.value.toLowerCase();
				filterTable(searchText);
			});

			function filterTable(searchText) {
				const table = document.querySelector(".table");
				const rows = table.getElementsByTagName("tr");

				for (let i = 1; i < rows.length; i++) { // 첫 번째 행은 헤더이므로 i를 1부터 시작합니다.
					const row = rows[i];
					const nameCell = row.querySelector("td:first-child");
					const name = nameCell.querySelector("input").value
							.toLowerCase();

					if (name.indexOf(searchText) === -1) {
						row.style.display = "none";
					} else {
						row.style.display = "";
					}
				}
			}
		});
	</script>
</body>

</html>