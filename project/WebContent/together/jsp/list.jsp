<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 공통헤더 -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 공통헤더 css -->
    <link rel="stylesheet" href="../../inc/css/font/font.css">
    <link rel="stylesheet" href="../../inc/css/xeicon/xeicon.min.css">
    <link rel="stylesheet" href="../../inc/css/header.css">
    <link rel="stylesheet" href="../../inc/css/footer.css">
    <!-- //공통헤더 css -->
    <!-- 페이지 css -->
    <link rel="stylesheet" href="../css/cssSet1.css" />
    <!-- 페이지 css -->
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <script src="https://rawgit.com/jackmoore/autosize/master/dist/autosize.min.js"></script>
    <script charset="UTF-8" src="../../js/layout.js"></script>
    <title>마이페이지</title>
</head>
<body>
<jsp:include page="../../inc/head.jsp"></jsp:include>
<!-- 공통헤더 -->
    <div id="page-container">
      <form id="forwardForm" method="get">
        <input type="hidden" id="returnURL" name="returnURL" />
      </form>
      <input type="hidden" id="sessionLoginCheck" value="false" />

      <main class="board wzui">
        <div class="ui-header">
          <h2 class="title">공지 사항</h2>
        </div>
        <div class="ui-tabs">
          <ul>
            <li class="active"><a href="#">전체</a></li>
            <li>
              <a href="#1">공지</a>
            </li>
            <li>
              <a href="#2">이벤트</a>
            </li>
            <li>
              <a href="#38">보도자료</a>
            </li>
          </ul>
        </div>

        <div class="board-main">
          <ul>
            <!-- 이곳에 백에서 받아온 데이터를 넣는건가?
            아무튼 리스트 보이는 구간, 예시로 하나만 남김 -->
            <li>
              <a class="article" href="/">
                <em class="category">이벤트</em>
                <em class="status closed">진행 중</em>
                <em class="notice">중요</em>
                <em class="notice">BEST</em>
                <div class="info">
                  <div
                    class="thumb"
                    style="
                      background-image: url(https://cdn.wadiz.kr/ft/images/green001/2023/0626/20230626223656350_0.jpg/wadiz/resize/400/format/jpg/quality/80);
                    "
                  ></div>

                  <h3 class="title">
                    [이벤트] 6월 '워라밸의 발견' 기획전 | 펀딩·스토어 선착순 쿠폰 (~6/30)
                  </h3>
                  <span class="author">와디즈</span><span class="created-at">2023.06.07</span>
                </div>
              </a>
            </li>
          </ul>
        </div>
        <div class="board-footer">
          <div class="pagination">
            <!-- 모바일용은 임시로 display:none으로 해두겠음 -->
            <!-- 모바일용 버튼, 이전 목록 대신 이미지 나와야됨 -->
            <button
              class="prev-page icon-chevron-left mobile-only"
              style="display: none"
              onclick="movePage(0)"
              disabled
            >
              <span class="text-hidden">이전 목록</span>
            </button>
            <div class="page">
              <!-- 모바일용 페이지 리스트 -->
              <div class="mobile-only" style="display: none">
                <span class="current-count">1</span>/<span class="total-count"
                  ><span>105</span> 페이지</span
                >
              </div>

              <!-- 데스크탑용 버튼, 이미지 나와야됨 -->
              <div class="desktop-only">
                <button class="prev-page icon-chevron-left" onclick="movePage(0)" disabled>
                  <span class="text-hidden">이전 목록</span>
                </button>

                <!-- 데스크탑용 페이지 리스트 -->
                <a class="current" href="#" onclick="movePage(1)">1</a>
                <a href="#" onclick="movePage(2)">2</a>
                <a href="#" onclick="movePage(3)">3</a>
                <a href="#" onclick="movePage(4)">4</a>
                <a href="#" onclick="movePage(5)">5</a>
                <a href="#" onclick="movePage(6)">6</a>

                <!-- 데스크탑용 버튼 -->
                <button class="next-page icon-chevron-right" onclick="movePage(7)">
                  <span class="text-hidden">다음 목록</span>
                </button>
              </div>
            </div>
            <!-- 모바일용 버튼 -->
            <button
              class="next-page icon-chevron-right mobile-only"
              style="display: none"
              onclick="movePage(2)"
            >
              <span class="text-hidden">다음 목록</span>
            </button>
          </div>
          <div class="search">
            <form method="post" id="news-board-search">
              <div class="filter-container">
                <select id="searchSelectInBoard" class="filter" name="">
                  <option value="tc">제목+내용</option>
                  <option value="t">제목</option>
                  <option value="c">내용</option>
                </select>
              </div>
              <div class="field">
                <label class="text-hidden" for=""></label>
                <input
                  id="searchTextInBoard"
                  name="searchTextInBoard"
                  class="search-form"
                  type="text"
                  value=""
                />
                <button class="btn-search dense" type="submit">검색</button>
              </div>
            </form>
            <form
              id="formSearch"
              name="formSearchBoard"
              action="/web/wboard/newsBoardList/"
              method="post"
            >
              <input id="searchText1" name="searchText1" type="hidden" value="" />
              <input id="searchSelect1" name="searchSelect1" type="hidden" value="" />
              <input id="searchSelect2" name="searchSelect2" type="hidden" value="" />
              <input id="searchSelect4" name="searchSelect4" type="hidden" value="" />
              <input id="searchSelect5" name="searchSelect5" type="hidden" value="" />
            </form>
          </div>
        </div>
      </main>
	<!-- 공통footer -->
	<jsp:include page="../../inc/footer.jsp"></jsp:include>
	<!-- //공통footer -->
    </div>
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
  </body>
</html>