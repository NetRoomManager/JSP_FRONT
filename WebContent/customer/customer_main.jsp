<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="customer_header.jsp"%>
<style>
/* 모달 창의 기본 스타일 */
.chat_modal {
	display: none;
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.4);
}

/* 모달 컨텐츠의 스타일 */
.chat_modal_content {
	background-color: #fefefe;
	margin: 15% 0% 15% 60%;
	padding: 20px;
	border: 1px solid #888;
	width: 25%;
	
}

/* 닫기 버튼의 스타일 */
.chat_modal_close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

</style>
<body
	style="background-image: url(https://p4.wallpaperbetter.com/wallpaper/995/48/877/room-wallpaper-preview.jpg);">

	<div class="d-flex justify-content-end">
		<button class="btn btn-primary bg-secondary end-1 hidden p-0"
			id="openBtn">
			<h3 class="px-2">≡</h3>
		</button>
	</div>
	<!-- right choice button -->
	<div id="openSideBtn"
		class="text-bg-dark p-0 position-relative top-0 start-75 end-10"
		style="width: 400px; height: 555px; font-size: 12px; left: 79%; z-index: 1">

		<div class="container mt-3 p-0">
			<ul
				class="list-group d-flex list-group-horizontal justify-content-between">
				<li class="list-group-item bg-secondary" style="border-radius: 0;">netRoom
					PC</li>
				<li class="list-group-item p-0 bg-secondary"
					style="width: 35px; border-radius: 10%;">
					<button id="hiddenBtn" class="btn btn-secondary btn-close"
						aria-label="Close" style="z-index: 1; width: 25px; height: 25px;"></button>
				</li>

			</ul>
		</div>

		<div class="top1 d-flex justify-content-between">
			<div class="fw-bold">no.71</div>
			<div class="d-flex">
				<div class="border border-secondary" style="border-radius: 15%;">
					<button id="changeBtn" class="btn btn-secondary">자리이동</button>
				</div>
			</div>
		</div>

		<div class="top2 container p-1">
			<ul
				class="list-group d-flex list-group-horizontal justify-content-between">
				<li class="list-group-item bg-secondary" style="border-radius: 0;">ID
					: 110002448</li>
				<li class="list-group-item bg-secondary"
					style="border-radius: 0; font-size: 10px;">★ pc 인증</li>
			</ul>
		</div>

		<div class="timeTap" class="container mt-3">
			<ul class="list-group list-group-horizontal">
				<li class="list-group-item"
					style="background-color: purple; height: 53px;"><a
					href="https://www.geto.co.kr" style="text-decoration: none;">◀
						제휴혜택 모아보기</a></li>
				<li class="list-group-item text-bg-dark h-25">사용요금 <br>2,000
				</li>
				<li class="list-group-item text-bg-dark h-25">남은시간 <br>01:24
				</li>
			</ul>
		</div>

		<div class="payButton"
			style="padding-bottom: 10px; padding-left: 3px;">
			<button class="btn btn-primary px-2">먹거리 주문</button>
			<button class="btn btn-primary px-2" id="recharge">요금제 구매</button>
			<button class="btn btn-primary px-2">쿠폰함</button>
			<button class="btn btn-primary px-2">쿠폰 사용</button>
		</div>

		<div class="remark d-flex" style="padding-left: 25px;">
			<button class="btn btn-secondary">호출</button>
			<button class="btn btn-secondary" onclick="openChatModal()">메세지</button>
			<button class="btn btn-secondary">요금정보</button>
		</div>

		<div class="d-flex">
			<div class="logoLeft d-flex flex-wrap" style="width: 50px;">
				<button class="rounded-circle" style="width: 50px; height: 40px;">
					<img src="../img/PNG/com.nexon.fo4m.png"
						class="rounded-circle w-50"><a
						href="https://fconline.nexon.com/main/index"
						style="text-decoration-line: none; height: 50px;">
						<p>피파</p>
					</a>
				</button>
				<button class="rounded-circle" style="width: 50px; height: 40px;">
					<img
						src="../img/PNG/com.fps.battleground.shooter.honor.ww2.black.duty.png"
						class="rounded-circle w-50"><a
						href="https://www.callofduty.com/ko"
						style="text-decoration-line: none;">
						<p>콜옵</p>
					</a>
				</button>
				<button class="rounded-circle" style="width: 50px; height: 40px;">
					<img src="../img/PNG/com.nexon.kart.png"
						class="rounded-circle  w-50"><a
						href="https://kartrush.nexon.com/kr-launching"
						style="text-decoration-line: none;">
						<p>카트</p>
					</a>
				</button>
				<button class="rounded-circle" style="width: 50px; height: 40px;">
					<img src="../img/PNG/com.netease.idv.googleplay.png"
						class="rounded-circle w-50"><a
						href="https://kartrush.nexon.com/kr-launching"
						style="text-decoration-line: none;">
						<p>데드</p>
					</a>
				</button>
				<button class="rounded-circle" style="width: 50px; height: 40px;">
					<img src="../img/PNG/com.aceproject.mpbr.aos.dist.png"
						class="rounded-circle w-50"><a
						href="https://poker.hangame.com/"
						style="text-decoration-line: none;">
						<p>포커</p>
					</a>
				</button>
				<button class="rounded-circle" style="width: 50px; height: 40px;">
					<img src="../img/PNG/us.kr.baseballnine.png"
						class="rounded-circle w-50"><a
						href="https://ma9.hangame.com/main.asp"
						style="text-decoration-line: none;">
						<p>야구</p>
					</a>
				</button>
			</div>

			<div class="logoRight">

				<!-- Carousel -->
				<div id="demo" class="carousel slide" data-bs-ride="carousel">

					<!-- Indicators/dots -->
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#demo" data-bs-slide-to="0"
							class="active"></button>
						<button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
						<button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
					</div>
					<!-- The slideshow/carousel -->
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="../img/pc방 광고.jpg" alt="logo1"
								class="d-block w-200 h-200" style="width: 345px; height: 295px;">
						</div>
						<div class="carousel-item">
							<img src="../img/pc방 광고2.jpg" alt="logo2"
								class="d-block w-200 h-200" style="width: 345px; height: 295px;">
						</div>
					</div>

					<!-- Left and right controls/icons -->
					<button class="carousel-control-prev" type="button"
						data-bs-target="#demo" data-bs-slide="prev">
						<span class="carousel-control-prev-icon"></span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#demo" data-bs-slide="next">
						<span class="carousel-control-next-icon"></span>
					</button>
				</div>
			</div>
		</div>
	</div>
	<div class="position-fixed h-50 bg-secondary rounded"
		style="top: 40%; left: 10%; width: 60%">
		<div class="h-75">
			<div class="d-flex h-100">
				<div class="col-sm  text-white p-3 rounded mx-1 my-1 bg-primary"
					style="border: 1px solid black;">
					<img src="../img/battleground.webp" class="w-100"/></div>
				<div class="col-sm  text-white p-3 rounded mx-1 my-1 bg-warning"
					style="border: 1px solid black;">
					<img src="../img/battleground.webp" class="w-100"/>
					</div>
				<div class="col-sm  text-white p-3 rounded mx-1 my-1 bg-danger"
					style="border: 1px solid black;">
					<img src="../img/battleground.webp" class="w-100"/>	
				</div>
				<div class="col-sm   text-white p-3 rounded mx-1 my-1 bg-info"
					style="border: 1px solid black;">
					<img src="../img/battleground.webp" class="w-100"/>
				</div>
			</div>
		</div>
		<div class="d-flex h-25">
			<div class="col-sm bg-dark text-white p-3 rounded mx-1 my-1"></div>
			<div class="col-sm bg-dark text-white p-3 rounded mx-1 my-1"></div>
			<div class="col-sm bg-dark text-white p-3 rounded mx-1 my-1"></div>
			<div class="col-sm bg-dark text-white p-3 rounded mx-1 my-1"></div>
			<div class="col-sm bg-dark text-white p-3 rounded mx-1 my-1"></div>
			<div class="col-sm bg-dark text-white p-3 rounded mx-1 my-1"></div>
			<div class="col-sm bg-dark text-white p-3 rounded mx-1 my-1"></div>
			<div class="col-sm bg-dark text-white p-3 rounded mx-1 my-1"></div>
			<div class="col-sm bg-dark text-white p-3 rounded mx-1 my-1"></div>
			<div class="col-sm bg-dark text-white p-3 rounded mx-1 my-1"></div>
			<div class="col-sm bg-dark text-white p-3 rounded mx-1 my-1"></div>
			<div class="col-sm bg-dark text-white p-3 rounded mx-1 my-1"></div>
		</div>
	</div>

	<!-- 모달 창 -->
	<div id="chatModal" class="chat_modal">
		<div class="chat_modal_content">
			<span>관리자에게 보낼 메시지</span>
			<h1 class="chat_modal_close" style="text-align: end;" onclick="closeChatModal()">&times;</h1>

			<!-- 채팅 인터페이스 -->
			<div id="chatBox"
				style="height: 300px; border: 1px solid #ccc; padding: 10px; overflow: auto;">
				<!-- 채팅 메시지가 여기에 표시됩니다 -->
			</div>


			<div class="d-flex">
				<input class="input mt-1" type="text" id="chatInput"
					placeholder="채팅 내용을 입력하세요" style="width: 80%">
				<button type="button" class="btn btn-primary mt-1 mx-3"
					style="width: 15%" onclick="sendMessage()">전송</button>
			</div>
		</div>
	</div>

	<script>
    // 모달창 여는 함수
    function openChatModal() {
        var modal = document.getElementById('chatModal');
        modal.style.display = 'inline-block';
    }

    // 채팅모달 닫기
    function closeChatModal() {
        var modal = document.getElementById('chatModal');
        modal.style.display = 'none';
    }
</script>

	<script>
            // 요금제 충전 버튼 요소를 가져옵니다.
            const chargeButton = document.querySelector('.text-bg-primary');

            // 클릭 이벤트 리스너를 추가합니다.
            chargeButton.addEventListener('click', function () {
                // 새로운 URL로 이동합니다.
                window.location.href = '${cpath}/auth/buy_ticket.jsp';
            });


            document.getElementById('closeBtn').addEventListener('click', function () {
                var countdownElement = document.getElementById('countdown');
                var countdownValue = 5; // 3초 카운트다운

                // 카운트다운 함수
                function startCountdown() {
                    countdownElement.textContent = countdownValue;
                    countdownValue--;

                    if (countdownValue < -1) {
                        // 시간이 다 되면 모달을 닫고 메시지 표시
                        $('#myModal').modal('hide');
                        alert('컴퓨터가 종료됩니다.');
                    } else if (countdownValue === -1) {
                        location.href = "file:///C:/%EC%B7%A8%EC%97%85%EB%B0%98/bootstrap/FrontRepository/auth/loginForm.html"
                    }
                    else {
                        setTimeout(startCountdown, 1000);
                    }
                }

                startCountdown(); // 카운트다운 시작
            });

            // 자리이동 눌렸을 때, 알림창 만들기  
            document.getElementById('changeBtn').addEventListener('click', function () {
                alert('원하는 좌석에서 로그인하세요!')
            })

            const openSideBtn = document.getElementById('openSideBtn');
            const hiddenBtn = document.getElementById('hiddenBtn');
            const openBtn = document.getElementById('openBtn');


            hiddenBtn.onclick = () => {
                console.log('test')
                if (openSideBtn.classList.contains('hidden')) {
                    console.log('open')
                    openSideBtn.classList.remove('hidden')
                } else {
                    console.log('close')
                    openSideBtn.classList.add('hidden')
                    openBtn.classList.remove('hidden')
                }
            }

            openBtn.onclick = () => {
                console.log('test2')
                openSideBtn.classList.remove('hidden')
                openBtn.classList.add('hidden')
            }
        </script>
</body>
</html>