<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="admin_header.jsp"%>

        <title>주문관리</title>
        <style>
            #menuBar {
                background-color: #ffa500
            }
            #menuBar > a {
                color: #ffffff;
            }
            #detail_check_modal table > tbody > tr > th {
                padding-top: 12px;
            }
        </style>
    </head>
    <body>
        <div id="headerContent"></div>
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 pt-1">
                  <li class="nav-item">
                    <a class="nav-link active navbar-brand" aria-current="page" href="#">NetRoom</a>
                  </li>
                  <li class="nav-item pe-3">
                    <a class="nav-link active" href="#">주문현황</a>
                  </li>
                  <li class="nav-item pe-3">
                    <a class="nav-link" href="#">신규주문</a>
                  </li>
                  <li class="nav-item pe-3">
                    <a class="nav-link" href="#">판매취소</a>
                  </li>
                  <li class="nav-item pe-3">
                    <a class="nav-link" href="#">준비중</a>
                  </li>
                </ul>
                <ul class="navbar-nav">
                    <li class="nav-item pe-2">
                        <button type="button" class="btn btn-light"
                                style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .75em; --bs-btn-font-size: 1.15rem;">
                                <svg
                            width="20"
                            height="20"
                            viewBox="0 0 20 20"
                            fill="none"
                            xmlns="http://www.w3.org/2000/svg"
                            class="w-5 h-5 relative"
                            preserveAspectRatio="none"
                            >
                            <path
                                fill-rule="evenodd"
                                clip-rule="evenodd"
                                d="M5.46335 6.82247C5.17954 6.82247 4.95008 6.58557 4.98808 6.30431C5.28388 4.11461 6.91244 2.5 9.78004 2.5C12.5925 2.5 14.4888 4.20082 14.4888 6.51914C14.4888 8.19829 13.6579 9.37912 12.2516 10.2349C10.8773 11.0583 10.4832 11.6324 10.4832 12.7483V12.9091C10.4832 13.1852 10.2593 13.4091 9.98316 13.4091H8.7718C8.49805 13.4091 8.2752 13.189 8.27184 12.9152L8.26725 12.5424C8.21399 11.0149 8.86385 10.0399 10.3234 9.15162C11.6124 8.36079 12.0705 7.73246 12.0705 6.61664C12.0705 5.39248 11.1224 4.49332 9.66285 4.49332C8.35848 4.49332 7.46502 5.20111 7.21313 6.35946C7.15721 6.61661 6.94421 6.82247 6.68105 6.82247H5.46335ZM9.37002 17.5C10.1478 17.5 10.7388 16.908 10.7388 16.1364C10.7388 15.3647 10.1478 14.7727 9.37002 14.7727C8.61302 14.7727 8.01157 15.3647 8.01157 16.1364C8.01157 16.908 8.61302 17.5 9.37002 17.5Z"
                                fill="black"
                            ></path>
                            </svg>
                        </button>
                    </li>
                    <li class="nav-item pe-2">
                        <button type="button" class="btn btn-light"
                                style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .75rem; --bs-btn-font-size: 1.15rem;">                        
                                <svg
                                width="20"
                                height="20"
                                viewBox="0 0 20 20"
                                fill="none"
                                xmlns="http://www.w3.org/2000/svg"
                                class="w-5 h-5 relative"
                                preserveAspectRatio="none"
                              >
                                <path
                                  fill-rule="evenodd"
                                  clip-rule="evenodd"
                                  d="M10 3.74999C6.54822 3.74999 3.75 6.54821 3.75 9.99999C3.75 13.4518 6.54822 16.25 10 16.25C13.4518 16.25 16.25 13.4518 16.25 9.99999C16.25 9.0682 16.0465 8.18565 15.6821 7.39291C15.538 7.07928 15.6753 6.70817 15.989 6.564C16.3026 6.41984 16.6737 6.55723 16.8179 6.87086C17.256 7.82403 17.5 8.88437 17.5 9.99999C17.5 14.1421 14.1421 17.5 10 17.5C5.85786 17.5 2.5 14.1421 2.5 9.99999C2.5 5.85786 5.85786 2.49999 10 2.49999V3.74999Z"
                                  fill="black"
                                ></path>
                                <path
                                  d="M10 5.58279V0.667193C10 0.402244 10.309 0.257507 10.5126 0.427123L13.4619 2.88492C13.6118 3.00986 13.6118 3.24013 13.4619 3.36506L10.5126 5.82286C10.309 5.99248 10 5.84774 10 5.58279Z"
                                  fill="black"
                                ></path>
                              </svg>
                        </button>
                    </li>
                </ul>
            </div>
        </nav>
        <nav id="menuBar" class="nav nav-pills flex-column py-3" style="position: absolute; height: 91.6%;">
            <a class="nav-link py-3 active" style="background-color: #FF8339;" aria-current="page"  href="#">주문</a>
            <a class="nav-link py-3" href="#">재고</a>
            <a class="nav-link py-3" href="#">매출</a>
            <a class="nav-link py-3" href="#">회원</a>
            <a class="nav-link py-3" href="#">좌석</a>
        </nav>
        <div class="container-fluid ps-5 ms-4">
            <div class="row pt-4">
                <div class="row pt-4">
                    <div class="col-4">
                        <div class="card border-warning" style="max-width: 95%;">
                            <div class="row g-0">
                              <div class="col text-bg-warning rounded-start">
                                <div class="card-body text-center">
                                    <div>신규주문</div>
                                    <div class="h1">21</div>
                                    <div>판매수락</div>
                                </div>
                              </div>
                              <div class="col-9">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <h5 class="card-title" style="font: bold;">너구리 매운맛, 콜라(+얼음)</h5>
                                        <p class="card-text">판매취소</p>
                                    </div>
                                  <p class="card-text">콜라는 따뜻하게 해주시고 라면은 안 맵게 해주세요</p>
                                </div>
                                <div class="card-footer bg-transparent">
                                    <div class="d-flex justify-content-between">
                                        <p style="font-size: 1.5rem; font-weight: bold;">8,800<span style="font-size: 0.9rem; font-weight: 500;">(카카오페이)</span></p>
                                        <div>
                                            <button type="button" class="btn btn-outline-warning" data-bs-toggle="button">준비중</button>
                                            <button type="button" class="btn btn-outline-primary" data-bs-toggle="button">전달완료</button>
                                        </div>
                                    </div>                    
                                </div>
                              </div>
                            </div>
                          </div>
                          <p class="card-text text-end pe-5"><small class="text-body-secondary">2023 / 11 / 12</small></p>
                    </div>
                    <div class="col-4">
                        <div class="card border-warning" style="max-width: 95%;">
                            <div class="row g-0">
                              <div class="col text-bg-warning rounded-start">
                                <div class="card-body text-center">
                                    <div>신규주문</div>
                                    <div class="h1">21</div>
                                    <div>판매수락</div>
                                </div>
                              </div>
                              <div class="col-9">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <h5 class="card-title" style="font: bold;">너구리 매운맛, 콜라(+얼음)</h5>
                                        <p class="card-text">판매취소</p>
                                    </div>
                                  <p class="card-text">콜라는 따뜻하게 해주시고 라면은 안 맵게 해주세요</p>
                                </div>
                                <div class="card-footer bg-transparent">
                                    <div class="d-flex justify-content-between">
                                        <p style="font-size: 1.5rem; font-weight: bold;">8,800<span style="font-size: 0.9rem; font-weight: 500;">(카카오페이)</span></p>
                                        <div>
                                            <button type="button" class="btn btn-outline-warning">준비중</button>
                                            <button type="button" class="btn btn-outline-primary">전달완료</button>
                                        </div>
                                    </div>                    
                                </div>
                              </div>
                            </div>
                          </div>
                          <p class="card-text text-end pe-5"><small class="text-body-secondary">2023 / 11 / 12</small></p>
                    </div><div class="col-4">
                        <div class="card border-warning" style="max-width: 95%;">
                            <div class="row g-0">
                              <div class="col text-bg-warning rounded-start">
                                <div class="card-body text-center">
                                    <div>신규주문</div>
                                    <div class="h1">21</div>
                                    <div>판매수락</div>
                                </div>
                              </div>
                              <div class="col-9">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <h5 class="card-title" style="font: bold;">너구리 매운맛, 콜라(+얼음)</h5>
                                        <p class="card-text">판매취소</p>
                                    </div>
                                  <p class="card-text">콜라는 따뜻하게 해주시고 라면은 안 맵게 해주세요</p>
                                </div>
                                <div class="card-footer bg-transparent">
                                    <div class="d-flex justify-content-between">
                                        <p style="font-size: 1.5rem; font-weight: bold;">8,800<span style="font-size: 0.9rem; font-weight: 500;">(카카오페이)</span></p>
                                        <div>
                                            <button type="button" class="btn btn-outline-warning">준비중</button>
                                            <button type="button" class="btn btn-outline-primary">전달완료</button>
                                        </div>
                                    </div>                    
                                </div>
                              </div>
                            </div>
                          </div>
                          <p class="card-text text-end pe-5"><small class="text-body-secondary">2023 / 11 / 12</small></p>
                    </div>
                </div>
            <div class="row pt-4">
                <div class="col-4">
                    <div class="card border-warning" style="max-width: 95%;">
                        <div class="row g-0">
                          <div class="col text-bg-warning rounded-start">
                            <div class="card-body text-center">
                                <div>신규주문</div>
                                <div class="h1">21</div>
                                <div>판매수락</div>
                            </div>
                          </div>
                          <div class="col-9">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <h5 class="card-title" style="font: bold;">너구리 매운맛, 콜라(+얼음)</h5>
                                    <p class="card-text">판매취소</p>
                                </div>
                              <p class="card-text">콜라는 따뜻하게 해주시고 라면은 안 맵게 해주세요</p>
                            </div>
                            <div class="card-footer bg-transparent">
                                <div class="d-flex justify-content-between">
                                    <p style="font-size: 1.5rem; font-weight: bold;">8,800<span style="font-size: 0.9rem; font-weight: 500;">(카카오페이)</span></p>
                                    <div>
                                        <button type="button" class="btn btn-outline-warning">준비중</button>
                                        <button type="button" class="btn btn-outline-primary">전달완료</button>
                                    </div>
                                </div>                    
                            </div>
                          </div>
                        </div>
                      </div>
                      <p class="card-text text-end pe-5"><small class="text-body-secondary">2023 / 11 / 12</small></p>
                </div>
                <div class="col-4">
                    <div class="card border-warning" style="max-width: 95%;">
                        <div class="row g-0">
                          <div class="col text-bg-warning rounded-start">
                            <div class="card-body text-center">
                                <div>신규주문</div>
                                <div class="h1">21</div>
                                <div>판매수락</div>
                            </div>
                          </div>
                          <div class="col-9">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <h5 class="card-title" style="font: bold;">너구리 매운맛, 콜라(+얼음)</h5>
                                    <p class="card-text">판매취소</p>
                                </div>
                              <p class="card-text">콜라는 따뜻하게 해주시고 라면은 안 맵게 해주세요</p>
                            </div>
                            <div class="card-footer bg-transparent">
                                <div class="d-flex justify-content-between">
                                    <p style="font-size: 1.5rem; font-weight: bold;">8,800<span style="font-size: 0.9rem; font-weight: 500;">(카카오페이)</span></p>
                                    <div>
                                        <button type="button" class="btn btn-outline-warning">준비중</button>
                                        <button type="button" class="btn btn-outline-primary">전달완료</button>
                                    </div>
                                </div>                    
                            </div>
                          </div>
                        </div>
                      </div>
                      <p class="card-text text-end pe-5"><small class="text-body-secondary">2023 / 11 / 12</small></p>
                </div><div class="col-4">
                    <div class="card border-warning" style="max-width: 95%;">
                        <div class="row g-0">
                          <div class="col text-bg-warning rounded-start">
                            <div class="card-body text-center">
                                <div>신규주문</div>
                                <div class="h1">21</div>
                                <div>판매수락</div>
                            </div>
                          </div>
                          <div class="col-9">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <h5 class="card-title" style="font: bold;">너구리 매운맛, 콜라(+얼음)</h5>
                                    <p class="card-text">판매취소</p>
                                </div>
                              <p class="card-text">콜라는 따뜻하게 해주시고 라면은 안 맵게 해주세요</p>
                            </div>
                            <div class="card-footer bg-transparent">
                                <div class="d-flex justify-content-between">
                                    <p style="font-size: 1.5rem; font-weight: bold;">8,800<span style="font-size: 0.9rem; font-weight: 500;">(카카오페이)</span></p>
                                    <div>
                                        <button type="button" class="btn btn-outline-warning">준비중</button>
                                        <button type="button" class="btn btn-outline-primary">전달완료</button>
                                    </div>
                                </div>                    
                            </div>
                          </div>
                        </div>
                      </div>
                      <p class="card-text text-end pe-5"><small class="text-body-secondary">2023 / 11 / 12</small></p>
                </div>
            </div>
            <div class="row pt-4">
                <div class="col-4">
                    <div class="card border-warning" style="max-width: 95%;">
                        <div class="row g-0">
                          <div class="col text-bg-warning rounded-start">
                            <div class="card-body text-center">
                                <div>신규주문</div>
                                <div class="h1">21</div>
                                <div>판매수락</div>
                            </div>
                          </div>
                          <div class="col-9">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <h5 class="card-title" style="font: bold;">너구리 매운맛, 콜라(+얼음)</h5>
                                    <p class="card-text">판매취소</p>
                                </div>
                              <p class="card-text">콜라는 따뜻하게 해주시고 라면은 안 맵게 해주세요</p>
                            </div>
                            <div class="card-footer bg-transparent">
                                <div class="d-flex justify-content-between">
                                    <p style="font-size: 1.5rem; font-weight: bold;">8,800<span style="font-size: 0.9rem; font-weight: 500;">(카카오페이)</span></p>
                                    <div>
                                        <button type="button" class="btn btn-outline-warning">준비중</button>
                                        <button type="button" class="btn btn-outline-primary">전달완료</button>
                                    </div>
                                </div>                    
                            </div>
                          </div>
                        </div>
                      </div>
                      <p class="card-text text-end pe-5"><small class="text-body-secondary">2023 / 11 / 12</small></p>
                </div>
                <div class="col-4">
                    <div class="card border-warning" style="max-width: 95%;">
                        <div class="row g-0">
                          <div class="col text-bg-warning rounded-start">
                            <div class="card-body text-center">
                                <div>신규주문</div>
                                <div class="h1">21</div>
                                <div>판매수락</div>
                            </div>
                          </div>
                          <div class="col-9">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <h5 class="card-title" style="font: bold;">너구리 매운맛, 콜라(+얼음)</h5>
                                    <p class="card-text">판매취소</p>
                                </div>
                              <p class="card-text">콜라는 따뜻하게 해주시고 라면은 안 맵게 해주세요</p>
                            </div>
                            <div class="card-footer bg-transparent">
                                <div class="d-flex justify-content-between">
                                    <p style="font-size: 1.5rem; font-weight: bold;">8,800<span style="font-size: 0.9rem; font-weight: 500;">(카카오페이)</span></p>
                                    <div>
                                        <button type="button" class="btn btn-outline-warning">준비중</button>
                                        <button type="button" class="btn btn-outline-primary">전달완료</button>
                                    </div>
                                </div>                    
                            </div>
                          </div>
                        </div>
                      </div>
                      <p class="card-text text-end pe-5"><small class="text-body-secondary">2023 / 11 / 12</small></p>
                </div><div class="col-4">
                    <div class="card border-warning" style="max-width: 95%;">
                        <div class="row g-0">
                          <div class="col text-bg-warning rounded-start">
                            <div class="card-body text-center">
                                <div>신규주문</div>
                                <div class="h1">21</div>
                                <div>판매수락</div>
                            </div>
                          </div>
                          <div class="col-9">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <h5 class="card-title" style="font: bold;">너구리 매운맛, 콜라(+얼음)</h5>
                                    <p class="card-text">판매취소</p>
                                </div>
                              <p class="card-text">콜라는 따뜻하게 해주시고 라면은 안 맵게 해주세요</p>
                            </div>
                            <div class="card-footer bg-transparent">
                                <div class="d-flex justify-content-between">
                                    <p style="font-size: 1.5rem; font-weight: bold;">8,800<span style="font-size: 0.9rem; font-weight: 500;">(카카오페이)</span></p>
                                    <div>
                                        <button type="button" class="btn btn-outline-warning">준비중</button>
                                        <button type="button" class="btn btn-outline-primary">전달완료</button>
                                    </div>
                                </div>                    
                            </div>
                          </div>
                        </div>
                      </div>
                      <p class="card-text text-end pe-5"><small class="text-body-secondary">2023 / 11 / 12</small></p>
                </div>
            </div>
            <div class="row pt-4">
                <div class="col-4" style="background-color: #FF8339;">
                    <div style="width: 90%; background-color: red;">dd</div>
                </div>
                <div class="col-4" style="background-color: #FF8339;">
                    <div style="width: 90%; background-color: red;">dd</div>
                </div>
                <div class="col-4" style="background-color: #FF8339;">
                    <div style="width: 90%; background-color: red;">dd</div>
                </div>
            </div>

        </div>

        <script>
            $(document).ready(function () {
                $.ajax({
                    url: "header.html",
                    dataType: "html",
                    success: function (response) {
                        $("#headerContent").html(response);
                    },
                });
            });
        </script>
    </body>
</html>