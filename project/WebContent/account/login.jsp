<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- 원본 경로 -->
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

<title>TEXT 로그인</title>
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
				<li><a href="${pageContext.request.contextPath}/join.member">회원가입</a></li>
			</ul>
			<div class="mo-head">
				<button type="button">
					<svg viewBox="0 0 24 24" focusable="false" role="presentation"
						class="withIcon_icon__djI-9 Button_icon__3GWPk" aria-hidden="true"
						style="width: 24px; height: 24px;">
						<path fill-rule="evenodd" clip-rule="evenodd"
							d="M16.076 2.576l.848.848L8.35 12l8.575 8.576-.848.848L6.65 12l9.425-9.424z"></path></svg>
					<span class="sound-only">뒤로가기</span>
				</button>
				<button type="button">
					<svg viewBox="0 0 40 40" focusable="false" role="presentation"
						class="withIcon_icon__djI-9 Button_icon__3GWPk" aria-hidden="true"
						style="width: 24px; height: 24px;">
						<path d="M13.38 36.13h2.4v-13.9h8.44v13.9h2.4V19.84H13.38v16.29z"></path>
						<path
							d="M20 3.41L3.8 14.49v21.64h2.4V15.75L20 6.32l13.8 9.43v20.38h2.4V14.49L20 3.41z"></path>
						<path fill="none" d="M0 0h40v40H0z"></path></svg>
					<span class="sound-only">홈</span>
				</button>
			</div>
		</div>
	</header>
	<main class="login-container">
		<div class="inner-container">
			<h2 class="login-title">로그인</h2>
			<!-- 백 작업용 form action, name, method 추가 -->
			<form action="${pageContext.request.contextPath}/loginOk.member"
				id="form1" name="login" method="post">
				<div class="input-area">
					<div class="input-con">
						<input type="text" id="memberid" name="memberid" class="input_txt"
							placeholder="이메일 입력">
						<p class="message_wrap">이메일 형식이 올바르지 않습니다.</p>
					</div>
					<div class="input-con">
						<input type="password" id="memberpw" name="memberpw"
							class="input_txt" placeholder="비밀번호 입력">
						<p class="message_wrap">와디즈에 등록되지 않은 아이디거나, 아이디 또는 비밀번호가 회원정보와
							일치하지 않습니다.</p>
					</div>
				</div>
				<p class="forgot">
					<a href="#">로그인 정보를 잊으셨나요?</a>
				</p>
				<div class="login-btn-area">
					<button type="submit" class="full_btn" onclick="send()">로그인</button>
				</div>
			</form>
			<!-- sns 로그인 -->
			<!-- <div class="sns-login-area">
        <button type="button" class="full_btn kakao">
          <svg viewBox="0 0 32 32" focusable="false" role="presentation"
            class="withIcon_icon__2KxnX SNSButtonList_kakaoIcon__1s6gw" aria-hidden="true">
            <path
              d="M16 4.64c-6.96 0-12.64 4.48-12.64 10.08 0 3.52 2.32 6.64 5.76 8.48l-.96 4.96 5.44-3.6 2.4.16c6.96 0 12.64-4.48 12.64-10.08S22.96 4.56 16 4.64z">
            </path>
          </svg>
          카카오로 시작하기
        </button>
        <button type="button" class="full_btn naver">
          <svg viewBox="0 0 32 32" focusable="false" role="presentation"
            class="withIcon_icon__2KxnX SNSButtonList_naverIcon__3TjPM" aria-hidden="true">
            <path d="M19.52 5.76v10.32L12.48 5.76H4.8v20.48h7.68V15.92l7.12 10.32h7.6V5.76z"></path>
          </svg>
          네이버로 시작하기
        </button>
        <div class="circle-btn-area">
          <button type="button" class="circle_btn google">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20"><defs><path id="a" d="M0 0h348v46H0z"></path></defs><g fill="none" fill-rule="evenodd"><g transform="translate(-16 -13)"><use></use><path stroke="#DADCE0" d="M-.5-.5h349v47H-.5z"></path></g><path fill="#4285F4" d="M18.64 10.205c0-.639-.057-1.252-.164-1.841H10v3.481h4.844a4.14 4.14 0 0 1-1.796 2.716v2.259h2.908c1.702-1.567 2.684-3.875 2.684-6.615z"></path><path fill="#34A853" d="M10 19c2.43 0 4.467-.806 5.956-2.18l-2.908-2.259c-.806.54-1.837.86-3.048.86-2.344 0-4.328-1.584-5.036-3.711H1.957v2.332A8.997 8.997 0 0 0 10 19z"></path><path fill="#FBBC05" d="M4.964 11.71A5.41 5.41 0 0 1 4.682 10c0-.593.102-1.17.282-1.71V5.958H1.957A8.996 8.996 0 0 0 1 10c0 1.452.348 2.827.957 4.042l3.007-2.332z"></path><path fill="#EA4335" d="M10 4.58c1.321 0 2.508.454 3.44 1.345l2.582-2.58C14.463 1.891 12.426 1 10 1a8.997 8.997 0 0 0-8.043 4.958L4.964 8.29C5.672 6.163 7.656 4.58 10 4.58z"></path><path d="M0 0h20v20H0z"></path></g></svg>
          </button>
          <button type="button" class="circle_btn fb">
            <svg viewBox="0 0 48 48" focusable="false" role="presentation" class="withIcon_icon__2KxnX" aria-hidden="true"><path d="M14.4 19.547h5.673v-5.256a8.559 8.559 0 0 1 2.4-6.132c2.618-2.628 6.109-2.3 11.127-1.861v5.913h-3.71a3.374 3.374 0 0 0-2.29.766 3.514 3.514 0 0 0-.655 2.3v4.27h6.437l-.873 6.57h-5.564V43.2h-6.872V26.118H14.4v-6.57z"></path></svg>
          </button>
          <button type="button" class="circle_btn apple">
            <svg viewBox="0 0 32 32" focusable="false" role="presentation" class="withIcon_icon__2KxnX" aria-hidden="true"><path d="M24.96 26c-1.12 1.68-2.32 3.28-4.08 3.28s-2.32-1.04-4.4-1.04-2.64 1.04-4.4 1.12S9.04 27.6 7.92 26c-2.32-3.28-4-9.36-1.68-13.44 1.098-1.973 3.148-3.299 5.512-3.36 1.688 0 3.368 1.12 4.408 1.12s3.04-1.44 5.12-1.2a6.157 6.157 0 0 1 4.867 2.62c-1.691 1.087-2.82 2.936-2.867 5.053a5.926 5.926 0 0 0 3.562 5.352 13.472 13.472 0 0 1-1.913 3.901zm-7.6-21.36a6.072 6.072 0 0 1 3.894-1.998c.038.139.045.303.045.469 0 1.44-.521 2.759-1.386 3.777A4.871 4.871 0 0 1 16.04 8.8h-.042a6.886 6.886 0 0 1-.016-.451 5.66 5.66 0 0 1 1.384-3.716z"></path></svg>
          </button>
        </div>
        <p class="signIn">아직 와디즈 계정이 없나요?<a href="#">회원가입</a></p>
      </div> -->
			<!-- //sns 로그인 -->
		</div>
	</main>
</body>
<!-- 원본 js -->
<!-- <script charset="UTF-8" src="./js/login.js"></script>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script charset="UTF-8" src="./js/layout.js"></script>
 -->

<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/account/js/layout.js"></script>
<script charset="UTF-8"
	src="${pageContext.request.contextPath}/account/js/loginOK.js"></script>
<script src="${pageContext.request.contextPath}/account/js/login.js"></script>
</html>



