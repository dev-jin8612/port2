<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 공통헤더 -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 공통헤더 css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/inc/css/font/font.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/inc/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/inc/css/xeicon/xeicon.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/inc/css/header.css">
<!-- //공통헤더 css -->
<!-- 페이지 css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/feed/css/layout.css">
<!-- 페이지 css -->
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script
	src="https://rawgit.com/jackmoore/autosize/master/dist/autosize.min.js"></script>
<title>feed</title>
</head>
<body>
	<jsp:include page="${pageContext.request.contextPath}/inc/head.jsp"></jsp:include>
	<!-- 공통헤더 -->
	<!-- 피드 -->
	<div id="container" class="feed-view">
		<div class="inner-con">
			<!-- top 탭 메뉴 -->
			<div class="tab-area">
				<ul>
					<li class="tab-menu on"><a href="#">스토리</a></li>
					<li class="tab-menu"><a href="#">새소식<span class="count">15</span></a></li>
					<li class="tab-menu"><a href="#">커뮤니티<span class="count">4</span></a></li>
					<li class="tab-menu"><a href="#">서포터<span class="count">23</span></a></li>
					<li class="tab-menu"><a href="#">환불/정책</a></li>
				</ul>
			</div>
			<!-- 콘텐츠 항목 -->
			<div class="container-area">
				<div class="container-wrap">
					<div class="left-area">
						<div class="gallery-area">
							<ul class="gallery-img">
								<li><img
									src="https://cdn.wadiz.kr/wwwwadiz/green001/2023/0422/20230422210430666_208783.jpg/wadiz/format/jpg/quality/80/"
									alt=""></li>
								<li><img
									src="https://cdn.wadiz.kr/wwwwadiz/green001/2023/0422/20230422210445072_208783.jpg/wadiz/format/jpg/quality/80/"
									alt=""></li>
								<li><img
									src="https://cdn.wadiz.kr/wwwwadiz/green001/2023/0422/20230422210452426_208783.jpg/wadiz/format/jpg/quality/80/"
									alt=""></li>
							</ul>
							<div class="arrow-area">
								<span class="arrow left"></span> <span class="arrow right"></span>
							</div>
							<div class="page-wrap">
								<span><span class="current-num">1</span>/<span
									class="count-num">3</span></span>
							</div>
						</div>
					</div>
					<div class="right-area content-wrap">
						<!-- 유저 정보 -->
						<div class="user-info">
							<div class="user-img"></div>
							<div class="user-name">유아람</div>
						</div>
						<!-- 본문 -->
						<div class="content">
							<p>
								특별한 날에 어울리는 트럼프 카드를 소개합니다. 손에 착착 감기는 귀여운
								<로티 &로리 플레잉카드> 카드를 펼치는 순간, 내 방이 바로 롯데월드가 됩니다! 
							</p>
						</div>
						<!-- 댓글 및 좋아요 -->
						<div class="comment-like">
							<div class="like">
								<button class="ico-wrap like-btn" type="button">
									<svg viewBox="0 0 32 32" focusable="false" role="presentation"
										class="withIcon_icon__3VTbq" aria-hidden="true"
										style="width: 24px; height: 24px;">
										<path
											d="M22.16 4h-.007a8.142 8.142 0 0 0-6.145 2.79A8.198 8.198 0 0 0 9.76 3.998a7.36 7.36 0 0 0-7.359 7.446c0 5.116 4.64 9.276 11.6 15.596l2 1.76 2-1.76c6.96-6.32 11.6-10.48 11.6-15.6v-.08A7.36 7.36 0 0 0 22.241 4h-.085zm-5.28 21.84l-.88.8-.88-.8h-.08C8.4 19.76 4 15.84 4 11.44l-.001-.082A5.76 5.76 0 0 1 9.928 5.6a6.542 6.542 0 0 1 4.865 2.232l.486.567h1.52l.48-.56a6.548 6.548 0 0 1 4.877-2.24l.084-.001a5.76 5.76 0 0 1 5.76 5.76l-.001.085c0 4.396-4.4 8.316-11.12 14.396z"></path></svg>
								</button>
								<div class="lebel">
									좋아요 <span>1,200개</span>
								</div>
							</div>
							<div class="comment">
								<div class="ico-wrap">
									<i class="xi-message-o"></i>
								</div>
								<div class="lebel">
									댓글 <span>500개</span>
								</div>
							</div>
						</div>
						<!-- 댓글영역 -->
						<div class="comment-area">
							<ul>
								<li>
									<div class="user-info">
										<a href=""> <span class="user-img"></span> <span
											class="user-name">윤담</span> <span class="date">2시간 전</span>
										</a>
									</div>
									<div class="comment-cont">좋은 피드네요ㅎㅎ 재밌게 보고갑니다~</div>
									<div class="like-reply">
										<div class="like">
											좋아요 <span class="cout">10개</span>
										</div>
										<div class="reply">
											<button type="button">
												답글 <span>1개</span>
											</button>
										</div>
									</div> <!-- 답글 wrap -->
									<div class="reply-wrap">
										<div class="reply-cont-wrap">
											<ul>
												<li>
													<div class="left">
														<a href=""> <span class="user-img"></span>
														</a>
													</div>
													<!--//left--> <!-- right -->
													<div class="right">
														<span class="user-name">유아람</span> <span class="date">2시간
															전</span>
														<div class="reply-txt">안녕하세요:) 감사합니다</div>
													</div> <!-- //right -->
												</li>
											</ul>
										</div>
										<!-- 답글 폼 area -->
										<div class="reply-form-area">
											<div class="user-info">
												<div class="user-img"></div>
											</div>
											<div class="input-area">
												<form action="">
													<textarea rows="" cols="" placeholder="내용을 입력해 주세요."></textarea>
													<div class="btn-area">
														<div class="byte">
															<span class="present">0</span> <span class="max">2,000</span>
														</div>
														<button class="full_btn" type="button">등록</button>
													</div>
												</form>
											</div>
										</div>
										<!--//reply-form-area-->
									</div> <!-- 답글 wrap -->
								</li>
							</ul>
						</div>
						<!-- 댓글 인풋 -->
						<div class="comment-form">
							<form action="">
								<div class="form-area">
									<div class="user-img"></div>
									<textarea name="" id="" cols="30" rows="10" placeholder="댓글달기"></textarea>
									<button type="button" class="xi-send" aria-label="댓글달기 버튼"></button>
								</div>
								<!--//form-area-->
							</form>
						</div>
					</div>
					<!--//right-area-->
				</div>
			</div>
		</div>
		<!-- //피드 -->
</body>
</html>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/feed/js/view.js"></script>
<script charset="UTF-8"
	src="${pageContext.request.contextPath}/inc/js/layout.js"></script>