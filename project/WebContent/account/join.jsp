<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- 원본 css -->
<!-- <link rel="stylesheet" href="./css/font/font.css">
  <link rel="stylesheet" href="./css/reset.css">
  <link rel="stylesheet" href="./css/layout.css">
-->
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

<!-- 백 작업용 경로 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/account/css/font/font.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/account/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/account/css/layout.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/account/css/file.css">

<title>와디즈 회원가입</title>
</head>
<!-- 공통헤더 -->

<body>
	<header class="login-header">
		<div class="inner-header">
			<h1 class="logo">
				<a href="#"> <svg xmlns="http://www.w3.org/2000/svg" width="85"
						height="25" viewBox="0 0 85 25">
            <path fill="#1D2129" fill-rule="nonzero"
							d="M58.49 2.23h2.11v21.29H59a1.73 1.73 0 0 1-1.62-1.16 9 9 0 0 1-10.93-.28 7.48 7.48 0 0 1-2.75-6.29 7.65 7.65 0 0 1 12.79-5.07V4.23a2 2 0 0 1 2-2zm-6.3 18.62a4.36 4.36 0 0 0 4.16-4.52 4.19 4.19 0 1 0-8.35 0 4.36 4.36 0 0 0 4.19 4.52zM42 23.52h-1.52a1.73 1.73 0 0 1-1.64-1.16 9 9 0 0 1-10.93-.28 7.48 7.48 0 0 1-2.75-6.29A7.65 7.65 0 0 1 38 10.72a2 2 0 0 1 1.9-1.79H42v14.59zm-8.41-2.67h.02a4.35 4.35 0 0 0 4.15-4.52 4.35 4.35 0 0 0-4.17-4.51 4.35 4.35 0 0 0-4.17 4.51 4.36 4.36 0 0 0 4.17 4.52zM83.47 8.94v2.11l-7.07 9.06h7.06v3.47h-13v-2.1l7.08-9.07h-6.62v-1.47a2 2 0 0 1 2-2h10.55zM65.86 7.3a2.48 2.48 0 1 1 0-4.96 2.48 2.48 0 0 1 0 4.96zM21.21 8.94h4.14l-4.86 14.59h-4.15l-3.21-9.36-3.21 9.36H5.77L.92 8.94h4.13L8 18l2.5-7.74a2 2 0 0 1 1.86-1.34h2.9l3 9.08 2.95-9.06zm42.65 14.59l-.04-12.59a2 2 0 0 1 2-2h2.11v14.59h-4.07z">
            </path>
          </svg>
				</a>
			</h1>
			<ul class="gnb">
				<li><a href="${pageContext.request.contextPath}/login.member">로그인</a></li>
			</ul>
		</div>
	</header>

	<main class="join-container">
		<div class="inner-container">
			<h2 class="join-title">text 회원가입</h2>

			<form action="${pageContext.request.contextPath}/joinOk.member"
				id="form1" name="join" method="post" enctype="multipart/form-data">
				<div class="input-area">
					<div class="input-con email">
						<label for="userEmail">아이디</label>
						<div class="flex-wrap">
							<input type="text" id="memberid" name="memberid"
								class="input_txt" placeholder="아이디 입력">
							<button type="button" class="full_btn emailBtn"
								onclick="idcheck()">인증하기</button>
						</div>
					</div>
					<div class="input-con">
						<label for="memberpw1">비밀번호</label>
						<div class="password-wrap">
							<input type="password" id="memberpw1" name="memberpw1"
								class="input_txt type2" placeholder="비밀번호 입력">
							<button type="button" class="pw-view">
								<i class="xi-eye"></i>
							</button>

						</div>
						<div class="password-wrap">
							<input type="password" id="memberpw2" name="memberpw2"
								class="input_txt type2" placeholder="비밀번호 확인">
							<button type="button" class="pw-view">
								<i class="xi-eye"></i>
							</button>
						</div>
					</div>
					
					<div class="input-con">
						<label for="membername">이름</label> <input type="text"
							id="membername" name="membername" class="input_txt"
							placeholder="이름 입력">
					</div>

					<div class="input-con">
						<label for="membernick">별명</label> <input type="text"
							id="membernick" name="membernick" class="input_txt"
							placeholder="별명 입력">
					</div>

					<div class="input-con">
						<label for="memberhp">전화 번호</label> <input type="text"
							id="memberhp" name="memberhp" class="input_txt"
							placeholder="전화번호 입력">
					</div>
				</div>

				<!-- 			첨부파일 하는법 배워야함 -->
				<section class="Section_container spacing-6"
					style="max-width: 630px">
					<div class="Section_header">
						<h2 class="Section_title Section_isRequired">프로필 이미지 설정</h2>
						<div class="Section_guide"></div>
					</div>
					<div class="Section_description">
						<ul>
							<li>3MB 이하의 JPG, JPEG, PNG 파일</li>
							<li>해상도 1200x675 픽셀 이상</li>
							<li>텍스트나 로고는 넣을 수 없어요.</li>
						</ul>
					</div>
					<!-- 이미지 파일 첨부 받기 -->
					<div class="Section_content">
						<div class="spacing-5">
							<div class="IULField_container">
								첨부 파일을 업로드해 주세요.
								<div class="IULButton_container spacing-2">
									<input class="is-hidden" type="file" name="memberimg" id="memberimg"
										accept="image/JPG,image/JPEG,image/PNG"/>
									<button
										class="Button_button Button_tertiaryGrey Button_contained Button_sm Button_circular"
										type="button">
										<span class="Button_children">업로드</span>
									</button>
								</div>
							</div>
						</div>
					</div>
				</section>

				<div class="all-agree-area">
					<div class="checkbox-wrap">
						<input type="checkbox" name="allAgree" id="allAgree"
							class="input_checkbox">
					</div>
					<label for="allAgree" class="all-agree-label">
						<p>
							전체동의
							<button type="button" class="agree-toggle-btn"
								onclick="fn_layerOpen('#joinAgreeLayer')">
								<svg viewBox="0 0 32 32" focusable="false" role="presentation"
									class="withIcon_icon__2KxnX" aria-hidden="true">
								<path
										d="M16 22.4L5.6 12l1.12-1.12L16 20.16l9.28-9.28L26.4 12 16 22.4z"></path></svg>
							</button>
						</p>
						<p>회원·서비스(필수), 스타트업찾기 서비스 (선택), 이벤트·혜택알림 동의(선택), 만 14세 이상(필수)</p>
					</label>
				</div>
				<div class="login-btn-area">
					<button type="button" id="com" class="full_btn" onclick="send()" disabled>완료</button>
				</div>
			</form>
		</div>
	</main>
</body>
<!-- 레이어창 -->
<div class="layer-popup" id="joinAgreeLayer">
	<div class="layer-bg" onclick="fn_layerClose('#joinAgreeLayer')"></div>
	<div class="inner-layer">
		<div class="layer-head">
			<button type="button" class="close-btn"
				onclick="fn_layerClose('#joinAgreeLayer')">
				<svg viewBox="0 0 40 40" focusable="false" role="presentation"
					class="withIcon_icon__3VTbq ConfirmModal_closeIcon__23VbM"
					aria-hidden="true">
          <path
						d="M33.4 8L32 6.6l-12 12-12-12L6.6 8l12 12-12 12L8 33.4l12-12 12 12 1.4-1.4-12-12 12-12z"></path>
        </svg>
			</button>
		</div>
		<!--//layer-head-->
		<div class="layer-body">
			<div class="inner">
				<div class="layer-tit">
					<h3>약관확인</h3>
					<p>약관에 동의하셔야 해당 서비스를 이용할 수 있습니다.</p>
				</div>
				<form action="${pageContext.request.contextPath}/login.member">
					<!-- 전체동의 -->
					<div class="all-check">
						<input type="checkbox" name="allAgree" id="allAgree2"
							class="input_checkbox"> <label for="allAgree2">전체동의
							<span>(선택항목 포함)</span>
						</label>
					</div>
					<!-- //전체동의 -->
					<!-- 서비스 area -->
					<div class="service-area">
						<div class="agree-list-wrap">
							<div class="agree-list">
								<div class="main check-area">
									<div>
										<input type="checkbox" name="userJoin" id="userJoin"
											class="input_checkbox"> <label for="userJoin"><strong>회원·서비스
										</strong>가입<span class="txt-point">(필수)</span></label>
									</div>
									<button type="button" class="mainMoreBtn">
										<i class="xi-angle-down"></i>
									</button>
								</div>
								<div class="inner-agree-wrap">
									<div class="inner-agree">
										<div class="check-area">
											<div>
												<input type="checkbox" name="userJoin01" id="userJoin01"
													class="input_checkbox"> <label for="userJoin01">회원가입
													약관</label>
											</div>
											<button type="button" class="moreBtn">내용보기</button>
										</div>
										<div class="agree-con">
											<textarea name="" id="" cols="30" rows="10">와디즈 회원가입과 관련하여 필요한 사항을 규정합니다.
  
                        업데이트 노트
                        본 이용약관은 2022년 3월 24일부터 시행됩니다.
                        개정 2022.03.17
                        개정 2021.11.02
                        개정 2021.08.24
                        개정 2021.07.12
                        개정 2020.11.17
                        개정 2020.04.20
                        개정 2020.03.26
                        개정 2019.07.17
                        개정 2019.06.20
                        개정 2019.04.29
                        시행 2018.12.27
                        개정 2018.12.20
                        시행 2016.01.20
                        제1장 총칙
                        제2장 서비스의 이용
                        제3장 회원정보의 보호 및 관리
                        제4장 기타
                        부칙
                        별지: 서비스 이용료</textarea>
										</div>
									</div>
									<div class="inner-agree">
										<div class="check-area">
											<div>
												<input type="checkbox" name="userJoin02" id="userJoin02"
													class="input_checkbox"> <label for="userJoin02">개인정보
													수집 및 이용 동의</label>
											</div>
											<button type="button" class="moreBtn">내용보기</button>
										</div>
										<div class="agree-con">
											<textarea name="" id="" cols="30" rows="10">와디즈 회원가입과 관련하여 필요한 사항을 규정합니다.
  
                        업데이트 노트
                        본 이용약관은 2022년 3월 24일부터 시행됩니다.
                        개정 2022.03.17
                        개정 2021.11.02
                        개정 2021.08.24
                        개정 2021.07.12
                        개정 2020.11.17
                        개정 2020.04.20
                        개정 2020.03.26
                        개정 2019.07.17
                        개정 2019.06.20
                        개정 2019.04.29
                        시행 2018.12.27
                        개정 2018.12.20
                        시행 2016.01.20
                        제1장 총칙
                        제2장 서비스의 이용
                        제3장 회원정보의 보호 및 관리
                        제4장 기타
                        부칙
                        별지: 서비스 이용료</textarea>
										</div>
									</div>
								</div>
								<!-- 회원서비스 이벤트 혜택 알림 -->
								<div class="main check-area">
									<div>
										<input type="checkbox" name="userJoin3" id="userJoin3"
											class="input_checkbox"> <label for="userJoin3">회원·서비스
											이벤트 혜택 알림(선택)</label>
										<p>펀딩·프리오더·스토어 서비스, 이벤트·할인 혜택 등에 대한 정보를 이메일, 앱 알림(앱 회원가입
											시)로 받아볼 수 있습니다. (동의 철회 시까지)</p>
									</div>
								</div>
								<!-- 회원서비스 이벤트 혜택 알림 -->
								<!-- 만 14세 이상 -->
								<div class="main check-area">
									<div>
										<input type="checkbox" name="userJoin4" id="userJoin4"
											class="input_checkbox"> <label for="userJoin4">만
											14세 이상입니다.<span class="txt-point">(필수)</span>
										</label>
									</div>
								</div>
								<!-- 만 14세 이상 -->
							</div>
						</div>

					</div>
				</form>
			</div>
		</div>
		<!--layer-body-->
		<div class="layer-foot">
			<div class="btn-wrap">
				<button type="button" class="full_btn">확인</button>
			</div>
		</div>
		<!--layer-foot-->
	</div>
</div>
<!--layer-popup-->
<!-- 원본 js -->
<!--   <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
  <script charset="UTF-8" src="./js/layout.js"></script>
  <script charset="UTF-8" src="./js/join.js" defer></script>
  <script charset="UTF-8" src="./js/join_back.js" defer></script> -->

<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/account/js/layout.js"></script>
<script charset="UTF-8"
	src="${pageContext.request.contextPath}/account/js/join.js" defer></script>
<script src="${pageContext.request.contextPath}/account/js/join_back.js"></script>
<script src="${pageContext.request.contextPath}/account/js/file.js"
	defer></script>

</html>