<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="customer_header.jsp"%>
<!-- PC방 고객 메인 페이지 -->

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

.image-container {
	position: relative;
	display: inline-block;
}

.image-container img {
	display: block;
	width: 100%;
	height: auto;
	transition: filter 0.3s ease;
}

.image-container:hover img {
	filter: brightness(50%);
}

.text-overlay {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	color: white;
	font-size: 24px;
	font-weight: bold;
	opacity: 0;
	transition: opacity 0.3s ease;
}

.image-container:hover .text-overlay {
	opacity: 1;
}

.image-container2 {
	position: relative;
	display: inline-block;
}

.image-container2 img {
	display: block;
	width: 100%;
	height: auto;
	transition: filter 0.3s ease;
}

.image-container2:hover img {
	filter: brightness(50%);
}

.text-overlay2 {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	color: white;
	font-size: 12px;
	font-weight: bold;
	opacity: 0;
	transition: opacity 0.3s ease;
}

.image-container2:hover .text-overlay2 {
	opacity: 1;
}
.hidden {
	display: none;
}
</style>
	
	
	<div class="info" style="z-index:2">
            <div class="title">
                <p class="p-0 my-0 mx-0">netroom ITBANK</p>
                <button id="btn_hidden"><i class="fa-solid fa-x" style="color: #ffffff; cursor: pointer;"></i></button>
            </div>
            <div class="pc_number">
                <div class="seat_number">
                    <p class="p-0 my-0 mx-0">no.<span>29</span></p>
                </div>
                <a href="#">자리이동</a>
                <a href="#">
                    <i class="fa-solid fa-power-off" style="color: #ffffff;"></i>
                    &nbsp;&nbsp;
                    <p class="p-0 my-0 mx-0">사용종료</p>
                </a>
            </div>
            <div class="username">
                <p class="p-0 my-0 mx-0">ID <span>geunuk</span></p>
                <p class="p-0 my-0 mx-0">회원정보</p>
            </div>
            <div class="time_wrap">
                <div class="start_date">
                    <p class="p-0 my-0 mx-0">시작날짜</p>
                    <p class="p-0 my-0 mx-0">23.10.28</p>
                </div>
                <div class="usage_time">
                    <p class="p-0 my-0 mx-0">사용시간</p>
                    <p class="p-0 my-0 mx-0">12:41</p>
                </div>
                <div class="remain_time">
                    <p class="p-0 my-0 mx-0">남은시간</p>
                    <p class="p-0 my-0 mx-0">10:28</p>
                </div>
            </div>
            <div class="consumption">
                <div class="food_order">
                    <a href="#">메시지</a>
                </div>
                <div class="pc_ticket">
                    <a href="#">PC방 이용권</a>
                </div>
                <div class="pc_ticket">
                    <a href="#">
                        내 정보
                    </a>
                </div>
                <div class="kakaopay">
                    <a href="#">
                        <img src="../img/kakao-pay.png" alt="카카오페이">
                    </a>
                </div>

            </div>
            <div class="service">
                <a href="#">호출</a>
                <a href="#">메시지</a>
                <a href="#">주문 목록</a>
                <a href="#">내 정보</a>
            </div>

            <!-- 게임메뉴 -->
            <div class="game_menu">
                <div>
                    <img src="../img/game-menu01.ico" alt="냥코대전쟁">
                    <p class="p-0 my-0 mx-0">냥코대전쟁</p>
                </div>
                <div>
                    <img src="../img/game-menu02.ico" alt="로블록스">
                    <p class="p-0 my-0 mx-0">로블록스</p>
                </div>
                <div>
                    <img src="../img/game-menu03.ico" alt="마피아42">
                    <p class="p-0 my-0 mx-0">마피아42</p>
                </div>
                <div>
                    <img src="../img/game-menu04.ico" alt="피파4M">
                    <p class="p-0 my-0 mx-0">피파4M</p>
                </div>
                <div>
                    <img src="../img/game-menu05.ico" alt="어몽어스">
                    <p class="p-0 my-0 mx-0">어몽어스</p>
                </div>
                <div>
                    <img src="../img/game-menu06.ico" alt="메이플스토리">
                    <p class="p-0 my-0 mx-0">메이플스토리</p>
                </div>
            </div>
            <div class="advertisement">
                <div class="main_advertisement">
                    <img src="../img/teemo.jpeg" alt="티모">
                </div>
                <div class="sub_advertisement">
                    <img src="../img/nuguri.webp" alt="너굴맨">
                    <img src="../img/nuguri.webp" alt="너굴맨">
                </div>
            </div>
            <div class="information">
                <a href="#">이용약관</a>
                <a href="#">개인정보처리방침</a>
                <a href="#">버전정보</a>
            </div>
        </div>
	
	<div class="position-fixed h-50 bg-secondary rounded"
		style="top: 40%; left: 10%; width: 60%">
		<div class="h-75">
			<div class="d-flex h-100">
				<div
					class="col-sm  text-white p-3 rounded mx-1 my-1 bg-primary  image-container"
					style="border: 1px solid black;">
					<img src="../img/lol.jpg" class="w-100" />
					<div class="text-overlay">인기게임</div>
				</div>
				<div
					class="col-sm  text-white p-3 rounded mx-1 my-1 bg-warning image-container"
					style="border: 1px solid black;">
					<img src="../img/rpg.jpg" class="w-100" />
					<div class="text-overlay">RPG</div>
				</div>
				<div
					class="col-sm  text-white p-3 rounded mx-1 my-1 bg-danger image-container"
					style="border: 1px solid black;">
					<img src="../img/starcraft.jpg" class="w-100" />
					<div class="text-overlay">CD게임</div>
				</div>
				<div
					class="col-sm   text-white p-3 rounded mx-1 my-1 bg-info image-container"
					style="border: 1px solid black;">
					<img src="../img/battleground.webp" class="w-100" />
					<div class="text-overlay">FPS게임</div>
				</div>
			</div>
		</div>
		<div class="d-flex h-25">
			<div
				class="col-sm bg-dark text-white p-3 rounded mx-1 my-1 image-container2">
				<img src="../img/archeage.jpg" class="w-100">
				<div class="text-overlay2">아키에이지</div>
			</div>
			<div
				class="col-sm bg-dark text-white p-3 rounded mx-1 my-1 image-container2">
				<img src="../img/itemmania.png " class="w-100">
				<div class="text-overlay2">아이템매니아</div>
			</div>
			<div
				class="col-sm bg-dark text-white p-3 rounded mx-1 my-1 image-container2">
				<img src="../img/itembay.jpg " class="w-100">
				<div class="text-overlay2">아이템베이</div>
			</div>
			<div
				class="col-sm bg-dark text-white p-3 rounded mx-1 my-1 image-container2">
				<img src="../img/kartrider.jpg " class="w-100">
				<div class="text-overlay2">카트라이더</div>
			</div>
			<div
				class="col-sm bg-dark text-white p-3 rounded mx-1 my-1 image-container2">
				<img src="../img/poe.png" class="w-100">
				<div class="text-overlay2">POE</div>
			</div>
			<div
				class="col-sm bg-dark text-white p-3 rounded mx-1 my-1 image-container2">
				<img src="../img/worldofwarship.jpg" class="w-100">
				<div class="text-overlay2">월오브워쉽</div>
			</div>
			<div
				class="col-sm bg-dark text-white p-3 rounded mx-1 my-1 image-container2">
				<img src="../img/netflix.jpg" class="w-100">
				<div class="text-overlay2">넷플릭스</div>
			</div>
		</div>
	</div>

	<!-- 모달 창 -->
	<div id="chatModal" class="chat_modal">
		<div class="chat_modal_content rounded">
			<span>관리자에게 보낼 메시지</span>
			<h1 class="chat_modal_close" style="text-align: end;"
				onclick="closeChatModal()">&times;</h1>

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
			const infoDiv = document.querySelector(".info");
			const titleDiv = document.querySelector('.title');
			const infoHeight = infoDiv.style.height;
			
			const infoList = document.querySelectorAll('.info > div:not(.title)');
			console.log(infoList);
            const hiddenBtn = document.getElementById('btn_hidden');
			
            
            
            hiddenBtn.onclick = () => {
            	infoList.forEach(div => {
            		console.log(div);
            		let cl = div.classList;
            		console.log(cl);
            		if(cl.contains('hidden')) {
            			div.classList.remove('hidden');
            			infoDiv.style.height = '700px';
            		} else {            			
            			div.classList.add('hidden');
            			infoDiv.style.height = '30px';
            		}
            	})
            }
            
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

            // 자리이동 눌렸을 때, 알림창 만들기  
            document.getElementById('changeBtn').addEventListener('click', function () {
                alert('원하는 좌석에서 로그인하세요!')
            })
        </script>
         <!-- javaScript -->
    	<script src="../js/script.js"></script>
</body>
</html>