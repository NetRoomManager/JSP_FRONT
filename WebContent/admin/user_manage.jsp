<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="admin_header.jsp"%>
<!-- 회원관리 페이지 -->

<style>
#menu_bar {
	background-color: #ffa500
}

#menu_bar>a {
	color: #ffffff;
}

#product_update table>tbody>tr>th {
	padding-top: 15px;
}
</style>

<div id="headerContent"></div>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav me-auto mb-2 mb-lg-0 pt-1">
			<li class="nav-item"><a class="nav-link active navbar-brand"
				aria-current="page" href="#">NetRoom</a></li>
			<li class="nav-item pe-3"><a class="nav-link" href="#">재고현황</a>
			</li>
			<li class="nav-item pe-3"><a class="nav-link"
				data-bs-toggle="modal" data-bs-target="#productUpdate">상품등록</a></li>
		</ul>
		<ul class="navbar-nav">
			<li class="nav-item pe-2">
				<button type="button" class="btn btn-light" data-bs-container="body"
					data-bs-toggle="popover" data-bs-placement="bottom"
					data-bs-content="test"
					style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .75em; - -bs-btn-font-size: 1.15rem;">
					<svg width="20" height="20" viewBox="0 0 20 20" fill="none"
						xmlns="http://www.w3.org/2000/svg" class="w-5 h-5 relative"
						preserveAspectRatio="none">
                            <path fill-rule="evenodd"
							clip-rule="evenodd"
							d="M5.46335 6.82247C5.17954 6.82247 4.95008 6.58557 4.98808 6.30431C5.28388 4.11461 6.91244 2.5 9.78004 2.5C12.5925 2.5 14.4888 4.20082 14.4888 6.51914C14.4888 8.19829 13.6579 9.37912 12.2516 10.2349C10.8773 11.0583 10.4832 11.6324 10.4832 12.7483V12.9091C10.4832 13.1852 10.2593 13.4091 9.98316 13.4091H8.7718C8.49805 13.4091 8.2752 13.189 8.27184 12.9152L8.26725 12.5424C8.21399 11.0149 8.86385 10.0399 10.3234 9.15162C11.6124 8.36079 12.0705 7.73246 12.0705 6.61664C12.0705 5.39248 11.1224 4.49332 9.66285 4.49332C8.35848 4.49332 7.46502 5.20111 7.21313 6.35946C7.15721 6.61661 6.94421 6.82247 6.68105 6.82247H5.46335ZM9.37002 17.5C10.1478 17.5 10.7388 16.908 10.7388 16.1364C10.7388 15.3647 10.1478 14.7727 9.37002 14.7727C8.61302 14.7727 8.01157 15.3647 8.01157 16.1364C8.01157 16.908 8.61302 17.5 9.37002 17.5Z"
							fill="black"></path>
                            </svg>
				</button>
			</li>
			<li class="nav-item pe-2">
				<button type="button" class="btn btn-light"
					style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .75rem; - -bs-btn-font-size: 1.15rem;">
					<svg width="20" height="20" viewBox="0 0 20 20" fill="none"
						xmlns="http://www.w3.org/2000/svg" class="w-5 h-5 relative"
						preserveAspectRatio="none">
                                <path fill-rule="evenodd"
							clip-rule="evenodd"
							d="M10 3.74999C6.54822 3.74999 3.75 6.54821 3.75 9.99999C3.75 13.4518 6.54822 16.25 10 16.25C13.4518 16.25 16.25 13.4518 16.25 9.99999C16.25 9.0682 16.0465 8.18565 15.6821 7.39291C15.538 7.07928 15.6753 6.70817 15.989 6.564C16.3026 6.41984 16.6737 6.55723 16.8179 6.87086C17.256 7.82403 17.5 8.88437 17.5 9.99999C17.5 14.1421 14.1421 17.5 10 17.5C5.85786 17.5 2.5 14.1421 2.5 9.99999C2.5 5.85786 5.85786 2.49999 10 2.49999V3.74999Z"
							fill="black"></path>
                                <path
							d="M10 5.58279V0.667193C10 0.402244 10.309 0.257507 10.5126 0.427123L13.4619 2.88492C13.6118 3.00986 13.6118 3.24013 13.4619 3.36506L10.5126 5.82286C10.309 5.99248 10 5.84774 10 5.58279Z"
							fill="black"></path>
                              </svg>
				</button>
			</li>
		</ul>
	</div>
	<div class="modal fade" id="productUpdate" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<form action="">
					<div class="modal-header">
						<h3 class="modal-title">상품등록</h3>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body container">
						<div class="row justify-content-center align-items-center mb-3">
							<div class="col-6 text-center">
								<img id="preview" class="img-thumbnail mb-2"
									src="../img/1422005677144.png" alt="예시 이미지"
									style="max-width: 200px; max-height: 200px;"> <input
									class="form-control form-control-sm" id="image" name="image"
									accept="image/*" type="file">
							</div>
						</div>
						<table class="table table-borderless">
							<tbody>
								<tr>
									<th>제품/이용권</th>
									<td><select class="form-select"
										aria-label="Default select example">
											<option selected>이용권 선택 시 시간 필수</option>
											<option value="1">제품</option>
											<option value="2">이용권</option>
									</select></td>
									<th>사용시간</th>
									<td><input class="form-control" type="text"
										placeholder="Default input" aria-label="default input example">
									</td>
								</tr>
								<tr>
									<th>상품분류</th>
									<td><input class="form-control" type="text"
										placeholder="Default input" aria-label="default input example">
									</td>
									<th colspan="2">상품설명</th>
								</tr>
								<tr>
									<th>상품명</th>
									<td><input class="form-control" type="text"
										placeholder="Default input" aria-label="default input example">
									</td>
									<td colspan="2" rowspan="2" class="form-floating"><textarea
											class="form-control" placeholder="Leave a comment here"
											id="floatingTextarea" style="height: 90px;"></textarea> <label
										for="floatingTextarea">Comments</label></td>
								</tr>
								<tr>
									<th>가격</th>
									<td><input class="form-control" type="text"
										placeholder="Default input" aria-label="default input example">
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">취소</button>
						<button type="button" class="btn btn-primary">등록</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</nav>
<nav id="menu_bar" class="nav nav-pills flex-column py-3 text-center"
	style="position: absolute; height: 100%;">
	<a class="nav-link py-3" href="${cpath }/admin/order_manage.jsp">주문</a>
	<a class="nav-link py-3" href="${cpath }/admin/product_manage.jsp">재고</a>
	<a class="nav-link py-3" 
		aria-current="page" href="${cpath }/admin/sales_manage.jsp">매출</a> <a
		class="nav-link py-3  active" href="${cpath }/admin/user_manage.jsp" style="background-color: #FF8339;">회원</a> <a
		class="nav-link py-3" href="${cpath }/admin/seat_manage.jsp">좌석</a> <a
		class="nav-link py-3" href="${cpath }/admin/ticket_manage.jsp">이용권</a>
</nav>

<div class="container pt-4">
	<form class="d-flex">
		<div class="mb-3 pe-2" style="width: 150px;">
			<select class="form-select" aria-label="Default select example">
				<option selected>전체</option>
				<option value="1">유저이름</option>
				<option value="2">아이디</option>
				<option value="3">휴대폰번호</option>
				<option value="4">이메일</option>
			</select>
		</div>
		<div class="mb-3 pe-2">
			<input type="text" class="form-control" id="searchName">
		</div>
		<div>
			<button type="submit" class="btn btn-secondary">검색</button>
		</div>
	</form>
</div>
<div class="container">
	<table class="table table-hover">
		<thead>
			<tr class="table-dark text-center">
				<th scope="col">#</th>
				<th scope="col">유저고유번호</th>
				<th scope="col">유저이름</th>
				<th scope="col">유저아이디</th>
				<th scope="col">유저남은시간</th>
				<th scope="col">최근로그인시간</th>
				<th scope="col">최근로그아웃시간</th>
				<th scope="col">휴대폰번호</th>
				<th scope="col">이메일</th>
				<th scope="col">생년월일</th>
				<th scope="col">유저삭제</th>
			</tr>
		</thead>
		<tbody>
			<tr class="text-center">
				<th class="pt-3 " scope="row">
					<div class="form-check d-flex justify-content-center">
						<input class="form-check-input" type="checkbox" value=""
							id="flexCheckDefault">
					</div>
				</th>
				<td class="pt-3">Mark</td>
				<td class="pt-3">Otto</td>
				<td class="pt-3">@mdo</td>
				<td class="pt-3">Mark</td>
				<td class="pt-3">Otto</td>
				<td class="pt-3">@mdo</td>
				<td class="pt-3">Mark</td>
				<td class="pt-3">Otto</td>
				<td class="pt-3">1999-05-23</td>
				<td><button type="button" class="btn btn-outline-danger"
						disabled>삭제</button></td>
			</tr>
			<tr class="text-center">
				<th class="pt-3" scope="row">
					<div class="form-check d-flex justify-content-center">
						<input class="form-check-input" type="checkbox" value=""
							id="flexCheckDefault">
					</div>
				</th>
				<td class="pt-3">Mark</td>
				<td class="pt-3">Otto</td>
				<td class="pt-3">@mdo</td>
				<td class="pt-3">Mark</td>
				<td class="pt-3">Otto</td>
				<td class="pt-3">@mdo</td>
				<td class="pt-3">Mark</td>
				<td class="pt-3">Otto</td>
				<td class="pt-3">1999-05-23</td>
				<td><button type="button" class="btn btn-outline-danger">삭제</button></td>
			</tr>
		</tbody>
	</table>
	<div class="modal" id="myModal">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">상세조회</h4>
					<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<div class="row">
						<div class="col-6 text-center">
							<img id="preview" class="img-thumbnail mb-2"
								src="../img/1422005677144.png" alt="예시 이미지"
								style="max-width: 200px; max-height: 200px;">
						</div>
						<div class="col-6">
							<table class="table table-borderless">
								<tbody>
									<tr>
										<th>상품번호</th>
										<td><input class="form-control form-control-sm"
											type="text" placeholder="Default input"
											aria-label="default input example"></td>
									</tr>
									<tr>
										<th>상품명</th>
										<td><input class="form-control form-control-sm"
											type="text" placeholder="Default input"
											aria-label="default input example"></td>
									</tr>
									<tr>
										<th>상품분류</th>
										<td><input class="form-control form-control-sm"
											type="text" placeholder="Default input"
											aria-label="default input example"></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="row">
						<div class="col-6">
							<table class="table table-borderless">
								<tbody>
									<tr>
										<th>가격</th>
										<td><input class="form-control form-control-sm"
											type="text" placeholder="Default input"
											aria-label="default input example"></td>
									</tr>
									<tr>
										<th>할인율</th>
										<td><input class="form-control form-control-sm"
											type="text" placeholder="Default input"
											aria-label="default input example"></td>
									</tr>
									<tr>
										<th>현재재고</th>
										<td><input class="form-control form-control-sm"
											type="text" placeholder="Default input"
											aria-label="default input example"></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="col-6">
							<table class="table table-borderless">
								<tbody>
									<tr>
										<th>금일 판매갯수</th>
										<td><input class="form-control form-control-sm"
											type="text" placeholder="Default input"
											aria-label="default input example"></td>
									</tr>
									<tr>
										<th>평균 판매갯수</th>
										<td><input class="form-control form-control-sm"
											type="text" placeholder="Default input"
											aria-label="default input example"></td>
									</tr>
									<tr>
										<th>소진 예상일</th>
										<td><input class="form-control form-control-sm"
											type="text" placeholder="Default input"
											aria-label="default input example"></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger"
						data-bs-dismiss="modal">Close</button>
				</div>

			</div>
		</div>
	</div>
</div>
<script>
	var popoverTriggerList = [].slice.call(document
			.querySelectorAll('[data-bs-toggle="popover"]'))
	var popoverList = popoverTriggerList.map(function(popoverTriggerEl) {
		return new bootstrap.Popover(popoverTriggerEl)
	})

	$(document).ready(function() {
		$.ajax({
			url : "header.html",
			dataType : "html",
			success : function(response) {
				$("#headerContent").html(response);
			},
		});
	});
	var imageInput = document.getElementById('image');
	imageInput.addEventListener('change', previewImage);

	function previewImage(event) {
		var input = event.target;
		var preview = document.getElementById('preview');

		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function() {
				preview.src = reader.result;
			};

			reader.readAsDataURL(input.files[0]);
		}
	}
</script>
</body>
</html>