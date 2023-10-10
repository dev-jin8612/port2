<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./css/font/font.css">
  <link rel="stylesheet" href="./css/reset.css">
  <link rel="stylesheet" href="./css/layout.css">
  <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
  <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
  <script charset="UTF-8" src="./js/layout.js"></script>
  <script charset="UTF-8" src="./js/id.js"></script>
  <title>아이디 찾기</title>
</head>
<!-- 공통헤더 -->

<body>
  <header class="find-header">
    <div class="inner-header">
      <h1 class="logo">
        <a href="#">
          <svg xmlns="http://www.w3.org/2000/svg" width="85" height="25" viewBox="0 0 85 25">
            <path fill="#1D2129" fill-rule="nonzero"
              d="M58.49 2.23h2.11v21.29H59a1.73 1.73 0 0 1-1.62-1.16 9 9 0 0 1-10.93-.28 7.48 7.48 0 0 1-2.75-6.29 7.65 7.65 0 0 1 12.79-5.07V4.23a2 2 0 0 1 2-2zm-6.3 18.62a4.36 4.36 0 0 0 4.16-4.52 4.19 4.19 0 1 0-8.35 0 4.36 4.36 0 0 0 4.19 4.52zM42 23.52h-1.52a1.73 1.73 0 0 1-1.64-1.16 9 9 0 0 1-10.93-.28 7.48 7.48 0 0 1-2.75-6.29A7.65 7.65 0 0 1 38 10.72a2 2 0 0 1 1.9-1.79H42v14.59zm-8.41-2.67h.02a4.35 4.35 0 0 0 4.15-4.52 4.35 4.35 0 0 0-4.17-4.51 4.35 4.35 0 0 0-4.17 4.51 4.36 4.36 0 0 0 4.17 4.52zM83.47 8.94v2.11l-7.07 9.06h7.06v3.47h-13v-2.1l7.08-9.07h-6.62v-1.47a2 2 0 0 1 2-2h10.55zM65.86 7.3a2.48 2.48 0 1 1 0-4.96 2.48 2.48 0 0 1 0 4.96zM21.21 8.94h4.14l-4.86 14.59h-4.15l-3.21-9.36-3.21 9.36H5.77L.92 8.94h4.13L8 18l2.5-7.74a2 2 0 0 1 1.86-1.34h2.9l3 9.08 2.95-9.06zm42.65 14.59l-.04-12.59a2 2 0 0 1 2-2h2.11v14.59h-4.07z">
            </path>
          </svg>
        </a>
      </h1>
      <ul class="gnb">
        <li><a href="#">로그인</a></li>
        <li><a href="#">회원가입</a></li>
      </ul>
      <div class="mo-head">
        <button type="button"><svg viewBox="0 0 24 24" focusable="false" role="presentation" class="withIcon_icon__djI-9 Button_icon__3GWPk" aria-hidden="true" style="width: 24px; height: 24px;"><path fill-rule="evenodd" clip-rule="evenodd" d="M16.076 2.576l.848.848L8.35 12l8.575 8.576-.848.848L6.65 12l9.425-9.424z"></path></svg><span class="sound-only">뒤로가기</span></button>
        <button type="button"><svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__djI-9 Button_icon__3GWPk" aria-hidden="true" style="width: 24px; height: 24px;"><path d="M13.38 36.13h2.4v-13.9h8.44v13.9h2.4V19.84H13.38v16.29z"></path><path d="M20 3.41L3.8 14.49v21.64h2.4V15.75L20 6.32l13.8 9.43v20.38h2.4V14.49L20 3.41z"></path><path fill="none" d="M0 0h40v40H0z"></path></svg><span class="sound-only">홈</span></button>
      </div>
    </div>
  </header>
  <main class="find-container">
    <div class="inner-container">
        <div class="title-wrap">
            <div class="inner-title-wrap">
                <h2>아이디∙비밀번호 찾기</h2>
                <div class="tab-wrap">
                    <a href="" class="active">아이디 찾기</a>
                    <a href="">비밀번호 찾기</a>
                </div>
            </div><!--inner-title-wrap-->
        </div><!--title-wrap-->
        <div class="find-input-wrap">
            <div class="inner-input-wrap">
                <div class="find-form">
                    <p class="info">와디즈는 이메일을 아이디로 사용합니다.<br>소유하고 계신 계정을 입력해보세요.<br>가입여부를 확인해드립니다.</p>
                    <form action="">
                        <div class="input-con">
                            <input type="email" id="userName" name="userName" class="input_txt"placeholder="이메일 입력">
                            <p class="message_wrap">이메일 형식이 올바르지 않습니다.</p>
                        </div>
                        <button type="button" id="findBtn" class="full_btn">확인</button>
                    </form>
                </div>

                <div class="find-ok" style="display: none;">
                    <h3>test@test.com</h3>
                    <!-- 이메일이 있을 경우 -->
                    <p class="info">회원으로 등록된 이메일 아이디입니다.<br>해당 이메일로 로그인하고 와디즈를 이용하세요!</p>
                    <!-- 없을 경우 -->
                    <!-- <p class="info no">는 와디즈에 등록되어 있지 않은 계정입니다.</p> -->
                    <div class="btn-wrap">
                        <button type="button" class="full_btn">로그인</button>
                        <!-- 없을 경우 -->
                        <!-- <button type="button" class="full_btn">회원가입하기</button> -->
                        <button type="button" class="blank2_btn">다시 확인</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
  </main>
</body>