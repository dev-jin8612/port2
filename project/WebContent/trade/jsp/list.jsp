<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 공통헤더 -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 공통헤더 css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/inc/css/font/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/inc/css/xeicon/xeicon.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/inc/css/header.css">
    <!-- //공통헤더 css -->
    <!-- 페이지 css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/trade/css/cssSet1.css" />
    <!-- 페이지 css -->
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <script src="https://rawgit.com/jackmoore/autosize/master/dist/autosize.min.js"></script>
    <script charset="UTF-8" src="./js/layout.js"></script>
    <title>교환해요 리스트</title>
</head>
<body>
<jsp:include page="${pageContext.request.contextPath}/inc/head.jsp"></jsp:include>
<!-- 공통헤더 -->
    <div id="page-container">
      <form id="forwardForm" method="get">
        <input type="hidden" id="returnURL" name="returnURL" />
      </form>
      <input type="hidden" id="sessionLoginCheck" value="false" />

      <main class="board wzui">
        <div class="ui-header">
          <h2 class="title">교환해요</h2>
        </div>

        <div class="board-main">
          <ul id="ul_list">
            <!-- 이곳에 백에서 받아온 데이터를 넣는건가?
            아무튼 리스트 보이는 구간, 예시로 하나만 남김 -->
            <!-- <li>
              <a class="article" href="/">
                <em class="category">교환</em>
                <em class="status closed">진행 중</em>
                <em class="notice">중요</em>
                <em class="notice">BEST</em>
                <div class="info">
                  <div
                    class="thumb"
                    style="
                      background-image: url(https://www.next-t.co.kr/public/uploads/7b7f7e2138e29e598cd0cdf2c85ea08d.jpg);
                    "
                  ></div>

                  <h3 class="title">
                    [이벤트] 6월 '워라밸의 발견' 기획전 | 펀딩·스토어 선착순 쿠폰 (~6/30)
                  </h3>
                  <span class="author">와디즈</span><span class="created-at">2023.06.07</span>
                </div>
              </a>
            </li> -->
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

      <div id="footer">
        <footer id="footer" class="web-footer inner-utils">
          <div class="FMenu_container">
            <div class="FMenu_bar">
              <div class="FMenu_left">
                <div class="FMenu_menu Linker_btnMore">
                  정책 · 약관
                  <!-- 약관 옆 화살표 이미지 -->
                  <img src="" alt="" />
                </div>
                <div class="FMenu_menu FMenu_bold Linker_btnMore">
                  개인정보처리방침
                  <!-- 방침 옆 화살표 이미지 -->
                  <img src="" alt="" />
                </div>
              </div>
              <div class="FMenu_right">
                <div class="FMenu_menu Linker_btnMore">
                  제휴문의
                  <!-- 문의 옆 화살표 이미지 -->
                  <img src="" alt="" />
                </div>
                <a href="/" class="FMenu_menu" target="_blank" rel="noopener noreferrer"
                  >교환 목록
                  <!-- 공지사항 옆 이동 이미지 -->
                  <img src="" alt="" /></a
                ><a href="/" class="FMenu_menu" target="_blank" rel="noopener noreferrer"
                  >인재채용
                  <!-- 인재채용 옆 이동 이미지 -->
                  <img src="" alt=""
                /></a>
                <div class="FMenu_menu Linker_btnMore">
                  SNS
                  <!-- sns 옆 화살표 이미지 -->
                  <img src="" alt="" />
                </div>
                <div class="FMenu_menu">
                  <div class="FMenu_lang Linker_btnMore">
                    <!-- language, 이건 이미지로만 이루어진듯 이미지 지우니 메뉴가 안나옴 -->
                    language
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="FContainer_container">
            <div class="FContainer_inner">
              <section class="FContainer_leftSection">
                <strong class="FContainer_title">와디즈 고객센터</strong>
                <div class="FContainer_buttonBlock">
                  <button type="button" class="FContainer_directBtn">
                    채팅 상담하기
                    <!-- 상담하기 옆 화살표 이미지 -->
                    <img src="" alt="" /></button
                  ><a href="/" class="FContainer_directBtn" target="_blank" rel="noreferrer"
                    >문의 등록하기
                    <!-- 등록하기 옆 화살표 이미지 -->
                    <img src="" alt="" /></a
                  ><a
                    href="/"
                    class="FContainer_directBtn FContainer_customcenterBtn"
                    target="_blank"
                    rel="noreferrer"
                    >도움말 센터 바로가기
                    <!-- 상담하기 옆 화살표 이미지 -->
                    <img src="" alt=""
                  /></a>
                </div>
                <dl class="FContainer_enableTime">
                  <dt>상담 가능 시간</dt>
                  <dd>평일 오전 9시 ~ 오후 6시 (주말, 공휴일 제외)</dd>
                </dl>
              </section>
              <section class="FContainer_rightSection">
                <address>
                  <ul class="FInfo_info">
                    <li>와디즈㈜</li>
                    <li>대표이사 신혜성</li>
                    <li>사업자등록번호 258-87-01370</li>
                    <li>통신판매업신고번호 2021-성남분당C-1153</li>
                    <li>경기 성남시 분당구 판교로 242 PDC A동 402호</li>
                  </ul>
                  <div class="FInfo_contactInfoWrap">
                    <ul class="FInfo_info FInfo_contactInfo">
                      <li>
                        <a
                          href="https://helpcenter.wadiz.kr/hc/ko/requests/new"
                          target="_blank"
                          rel="noreferrer"
                          >이메일 상담 info@wadiz.kr</a
                        >
                      </li>
                      <li>유선 상담 <a href="tel:1661-9056">1661-9056</a></li>
                    </ul>
                    <span class="FInfo_copyright">© wadiz Co., Ltd.</span>
                  </div>
                </address>
                <div class="FContainer_infoNotice">
                  <p>일부 상품의 경우 와디즈는 통신판매중개자이며 통신판매 당사자가 아닙니다.</p>
                  <p>
                    해당되는 상품의 경우 상품, 상품정보, 거래에 관한 의무와 책임은 판매자에게
                    있으므로, 각 상품 페이지에서 구체적인 내용을 확인하시기 바랍니다.
                  </p>
                </div>
                <div class="FContainer_appStoreSection">
                  <!-- 이건 js로 이미지를 넣었는지 이미지 경로가 존재 하지 않음 -->
                  <a href="/" target="_blank" class="icon-google-play" rel="noopener noreferrer"
                    >Android앱</a
                  ><a href="/" target="_blank" class="icon-apple" rel="noopener noreferrer"
                    >iOS앱</a
                  >
                </div>
              </section>
            </div>
          </div>
        </footer>
      </div>
    </div>
    <script src="../../feed/js/layout.js"></script>
    <script type="text/javascript">
    	start();
    	function start() {
    		var list = "list";
    		$.ajax({
    			url: "list.trade",
    			type: "post",
    			data: "infor=" + list,
    			dataType: "json",
    			success: function(list){
    				for(i=0; i<list.length; i++){
    				const check = list[i].boardstatus;
    				console.log(list[i].id);
    				var stat = "";
    				if(check == "ti"){
    					stat = "교환 중";
    				}
    				else{
    					stat = "교환 완료";
    				}
    				
    				var img = "";
    				
    				if(list[i].filesystemname == null){
    					img = "https://www.next-t.co.kr/public/uploads/7b7f7e2138e29e598cd0cdf2c85ea08d.jpg";
    				}
    				else{
    					img = "${pageContext.request.contextPath}/upload/" + list[i].filesystemname;
    				}
    				
    	    		var ul_list = $("#ul_list"); //ul_list선언
    	    		ul_list.append("<li>"+
    					'<a class="article list-wrap" href="${pageContext.request.contextPath}/trade/jsp/detailPage.jsp?id=' + list[i].id  + '">' +
    						'<div class="text-con">' +
	       					 	'<em class="category">교환</em>' +
	    		                '<em class="status closed">' + stat +"</em>" +
	    		                "<div class='info'>" +
	    		                  "<div class='thumb' style='background-image: url(https://www.next-t.co.kr/public/uploads/7b7f7e2138e29e598cd0cdf2c85ea08d.jpg);'></div>" +
	    		                  "<h3 class='title'>" + list[i].boardtitle + "</h3>" +
	    		                  "<span class='author'>와디즈</span><span class='created-at'>" + list[i].boarddate.substring(0,11) + "</span>" +
	    		                "</div>" +
    						'</div>' +
    						'<div class="img-con">' +
    							'<img src="' + img + '">' +
    						'</div>' +
 
    		                "</a></li>"); //ul_list안쪽에 li추가
    				}
    				
    				
    			}
    			
    		});
    	
		}
    	

        function create() {
        	location.href = "${pageContext.request.contextPath}/trade/jsp/createPage.jsp"
    	}
    </script>
  </body>
</html>