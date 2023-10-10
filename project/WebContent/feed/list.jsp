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
<script charset="UTF-8"
	src="${pageContext.request.contextPath}/inc/js/layout.js"></script>
<title>feed</title>
</head>
<body>
	<jsp:include page="${pageContext.request.contextPath}/inc/head.jsp"></jsp:include>
	<!-- 공통헤더 -->
	<!-- 피드 -->
	<div id="container" class="feed-list">
		<div class="inner-con">
			<!-- 로그인 시 -->
			<div class="feed-login on">
				<div class="user-filter">
					<ul>
						<li class="my-feed">
							<div class="user-img"></div>
							<div class="user-name">나의 활동</div>
						</li>
						<li>
							<div class="user-img">
								<span class="add-btn"> <svg viewBox="0 0 32 32"
										focusable="false" role="presentation"
										class="withIcon_icon__3VTbq" aria-hidden="true">
										<path
											d="M30.4 15.2H16.8V1.6h-1.6v13.6H1.6v1.6h13.6v13.6h1.6V16.8h13.6v-1.6z"></path></svg>
								</span>
							</div>
							<div class="user-name">유아람</div>
						</li>
						<li>
							<div class="user-img">
								<span class="add-btn"> <svg viewBox="0 0 32 32"
										focusable="false" role="presentation"
										class="withIcon_icon__3VTbq" aria-hidden="true">
										<path
											d="M30.4 15.2H16.8V1.6h-1.6v13.6H1.6v1.6h13.6v13.6h1.6V16.8h13.6v-1.6z"></path></svg>
								</span>
							</div>
							<div class="user-name">ㅇㅇㅇ공식사이트</div>
						</li>
						<li>
							<div class="user-img">
								<span class="add-btn"> <svg viewBox="0 0 32 32"
										focusable="false" role="presentation"
										class="withIcon_icon__3VTbq" aria-hidden="true">
										<path
											d="M30.4 15.2H16.8V1.6h-1.6v13.6H1.6v1.6h13.6v13.6h1.6V16.8h13.6v-1.6z"></path></svg>
								</span>
							</div>
							<div class="user-name">순천시공식페이지</div>
						</li>
						<li class="btn-wrap"><span> <svg viewBox="0 0 40 40"
									focusable="false" role="presentation"
									class="withIcon_icon__3VTbq Button_icon__t6yp6"
									aria-hidden="true">
									<path
										d="M6 21h24.2L19.6 31.6 21 33l13-13L21 7l-1.4 1.4L30.2 19H6v2z"></path></svg>
						</span> <span class="tit">팔로잉</span></li>
					</ul>
					<div class="bt-border"></div>
				</div>

				<!-- 피드 리스트 -->
				<section class="feed-section">
					<ul class="list-wrap">
						<li>
							<div class="feed-head">
								<div class="inner">
									<div class="txt">
										<span class="user-img"></span> <span class="user-name"><b>윤담</b>
											님이 찜했어요</span>
									</div>
									<div class="date">2일전</div>
								</div>
							</div>
							<div class="feed-con">
								<div class="con-top">
									<div class="user-img"></div>
									<div class="user-info">
										<div class="name">유아람</div>
										<div class="count">
											팔로워 <b>9</b>
										</div>
									</div>
									<button type="button" class="blank_btn"
										onclick="fn_layerOpen('#followLayer')">
										<svg viewBox="0 0 32 32" focusable="false" role="presentation"
											class="withIcon_icon__3VTbq Button_icon__t6yp6 FollowingButton_icon__2jTGt"
											aria-hidden="true"
											style="width: 14px; height: 14px; fill: #00c4c4">
											<path
												d="M30.4 15.2H16.8V1.6h-1.6v13.6H1.6v1.6h13.6v13.6h1.6V16.8h13.6v-1.6z"></path></svg>
										<span>팔로우</span>
									</button>
								</div>
								<!-- 썸네일 이미지 -->
								<div class="con-mid">
									<!-- 이미지 썸네일 -->
									<div class="thumb" onclick="location='view.jsp'">
										<ul>
											<li><div class="img-wrap"></div></li>
											<li><div class="img-wrap"></div></li>
											<li><div class="img-wrap"></div></li>
										</ul>
									</div>
									<span class="arrow left"></span> <span class="arrow right"></span>
									<!-- 페이지네이션 -->
									<div class="page">
										<ul>
										</ul>
									</div>
								</div>
								<!-- 글 -->
								<div class="contents">
									<div class="tit">5월 와디즈 투명성 보고서</div>
									<div class="comment">
										<p>와디즈는 회원들이 접수한 신고 내용과 그에 대한 조치 결과를 매월 '투명성 보고서'를 통해 공유하고
											있습니다. 자세한 내용은 위 썸네일 이미지를 클릭해주세요.</p>
									</div>
									<button class="more-btn">더보기</button>
								</div>
							</div>
							<div class="bt-border"></div>
						</li>

						<li>
							<div class="feed-head">
								<div class="inner">
									<div class="txt">
										<span class="user-img"></span> <span class="user-name"><b>윤담</b>
											님이 찜했어요</span>
									</div>
									<div class="date">2일전</div>
								</div>
							</div>
							<div class="feed-con">
								<div class="con-top">
									<div class="user-img"></div>
									<div class="user-info">
										<div class="name">유아람</div>
										<div class="count">
											팔로워 <b>9</b>
										</div>
									</div>
									<button type="button" class="blank_btn">
										<svg viewBox="0 0 32 32" focusable="false" role="presentation"
											class="withIcon_icon__3VTbq Button_icon__t6yp6 FollowingButton_icon__2jTGt"
											aria-hidden="true"
											style="width: 14px; height: 14px; fill: #00c4c4">
											<path
												d="M30.4 15.2H16.8V1.6h-1.6v13.6H1.6v1.6h13.6v13.6h1.6V16.8h13.6v-1.6z"></path></svg>
										<span>팔로우</span>
									</button>
								</div>
								<!-- 썸네일 이미지 -->
								<div class="con-mid">
									<!-- 이미지 썸네일 -->
									<div class="thumb">
										<ul>
											<li><div class="img-wrap"></div></li>
										</ul>
									</div>
								</div>
								<!-- 글 -->
								<div class="contents">
									<div class="tit">5월 와디즈 투명성 보고서</div>
									<div class="comment">
										<p>와디즈는 회원들이 접수한 신고 내용과 그에 대한 조치 결과를 매월 '투명성 보고서'를 통해 공유하고
											있습니다. 자세한 내용은 위 썸네일 이미지를 클릭해주세요.</p>
									</div>
									<button class="more-btn">더보기</button>
								</div>
							</div>
							<div class="bt-border"></div>
						</li>
					</ul>
				</section>
				<!-- //피드 리스트 -->
			</div>
			<!-- //로그인 시 -->

			<!-- 미 로그인시 -->
			<div class="feed-login none">
				<div class="bg-img"></div>
				<div class="tit">로그인이 필요해요</div>
				<div class="sub-tit">
					로그인하고 내 친구의<br>와디즈 활동 소식을 확인해보세요
				</div>
				<a href="" class="full_btn">로그인 하기</a>
			</div>
			<!-- //미 로그인시 -->
		</div>
	</div>
	<!-- //피드 -->

	<!-- //피드 퀵메뉴 -->
	<div class="feed-quick">
		<ul>
			<li class="active"><a href="javascript:void(0)">
					<div class="icon">
						<svg viewBox="0 0 40 40" focusable="false" role="presentation"
							class="withIcon_icon__3VTbq GNBMobile_icon__3OOAF GNBIcon_home__cszmO"
							aria-hidden="true" style="width: 28px; height: 28px;">
							<path
								d="M38.32 26.87v-13h-1.88a1.73 1.73 0 0 0-1.73 1.59A6.82 6.82 0 0 0 23.26 20a6.67 6.67 0 0 0 2.45 5.61 8 8 0 0 0 9.74.25 1.56 1.56 0 0 0 1.47 1l1.4.01zm-7.49-2.39a3.88 3.88 0 0 1-3.72-4 3.88 3.88 0 0 1 3.72-4 3.88 3.88 0 0 1 3.72 4 3.88 3.88 0 0 1-3.72 4zM19.77 13.86L17.14 22l-2.65-8.1H11.9a1.73 1.73 0 0 0-1.65 1.2L8 22l-2.63-8.1H1.68L6 26.87h3.7l2.87-8.35 2.86 8.35h3.7l4.33-13-3.69-.01z"></path></svg>
					</div>
					<div class="tit">홈</div>
			</a></li>
			<li><a href="javascript:void(0)">
					<div class="icon">
						<svg viewBox="0 0 24 24" focusable="false" role="presentation"
							class="withIcon_icon__3VTbq GNBMobile_icon__3OOAF GNBMobile_active__3WNf8 GNBIcon_feed__1AjUB"
							aria-hidden="true" style="width: 21px; height: 21px;">
							<path fill-rule="evenodd" clip-rule="evenodd"
								d="M23 2.5H1v19h22v-19zM6 10a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3zm-1.5 3.6h15v-1.2h-15v1.2zm8 3h-8v-1.2h8v1.2z"></path></svg>
					</div>
					<div class="tit">피드</div>
			</a></li>
			<li><a href="javascript:void(0)">
					<div class="icon">
						<img
							src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDAiIGhlaWdodD0iNDAiIHZpZXdCb3g9IjAgMCA0MCA0MCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayI+CiAgICA8ZGVmcz4KICAgICAgICA8cGF0aCBpZD0icjRzeW8za3R4YSIgZD0iTTAgMGg0MHY0MEgweiIvPgogICAgPC9kZWZzPgogICAgPGcgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj4KICAgICAgICA8Zz4KICAgICAgICAgICAgPG1hc2sgaWQ9Im1kajRrdnh3amIiIGZpbGw9IiNmZmYiPgogICAgICAgICAgICAgICAgPHVzZSB4bGluazpocmVmPSIjcjRzeW8za3R4YSIvPgogICAgICAgICAgICA8L21hc2s+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik0yMCAwQzguOTU0IDAgMCA4Ljk1NSAwIDIwYzAgMTEuMDQ2IDguOTU0IDIwIDIwIDIwczIwLTguOTU0IDIwLTIwQzQwIDguOTU1IDMxLjA0NiAwIDIwIDBtMCAxYzEwLjQ3NyAwIDE5IDguNTIzIDE5IDE5cy04LjUyMyAxOS0xOSAxOVMxIDMwLjQ3NyAxIDIwIDkuNTIzIDEgMjAgMSIgZmlsbD0iIzg2OEU5NiIgbWFzaz0idXJsKCNtZGo0a3Z4d2piKSIvPgogICAgICAgIDwvZz4KICAgICAgICA8cGF0aCBzdHJva2U9IiM4NjhFOTYiIGQ9Ik0yMCAxMXYxOE0yOSAyMEgxMSIvPgogICAgPC9nPgo8L3N2Zz4K"
							alt="">
					</div>
			</a></li>
			<li><a href="javascript:void(0)">
					<div class="icon">
						<svg viewBox="0 0 32 32" focusable="false" role="presentation"
							class="withIcon_icon__3VTbq GNBMobile_icon__3OOAF"
							aria-hidden="true" style="width: 24px; height: 24px;">
							<path
								d="M22.16 4h-.007a8.142 8.142 0 0 0-6.145 2.79A8.198 8.198 0 0 0 9.76 3.998a7.36 7.36 0 0 0-7.359 7.446c0 5.116 4.64 9.276 11.6 15.596l2 1.76 2-1.76c6.96-6.32 11.6-10.48 11.6-15.6v-.08A7.36 7.36 0 0 0 22.241 4h-.085zm-5.28 21.84l-.88.8-.88-.8h-.08C8.4 19.76 4 15.84 4 11.44l-.001-.082A5.76 5.76 0 0 1 9.928 5.6a6.542 6.542 0 0 1 4.865 2.232l.486.567h1.52l.48-.56a6.548 6.548 0 0 1 4.877-2.24l.084-.001a5.76 5.76 0 0 1 5.76 5.76l-.001.085c0 4.396-4.4 8.316-11.12 14.396z"></path></svg>
						<div class="tit">찜하기</div>
					</div>
			</a></li>
			<li><a href="javascript:void(0)">
					<div class="icon">
						<svg viewBox="0 0 40 40" focusable="false" role="presentation"
							class="withIcon_icon__3VTbq GNBMobile_icon__3OOAF"
							aria-hidden="true" style="width: 24px; height: 24px;">
							<path
								d="M20.27 22.3a9.43 9.43 0 1 0-9.42-9.42 9.43 9.43 0 0 0 9.42 9.42zm0-16.76a7.34 7.34 0 1 1-7.34 7.34 7.34 7.34 0 0 1 7.34-7.34zm0 20.05c-6.52 0-15.19 1.09-15.19 10.57h2.08c0-5.95 3.92-8.49 13.11-8.49s13.11 2.54 13.11 8.49h2.08c0-9.48-8.67-10.57-15.19-10.57z"></path>
							<path fill="none" d="M0 0h40v40H0z"></path></svg>
						<div class="tit">마이와디즈</div>
					</div>
			</a></li>
		</ul>
	</div>
	<!-- 팔로우 레이어창 -->
	<div class="layer-popup" id="followLayer">
		<div class="layer-bg" onclick="fn_layerClose('#followLayer')"></div>
		<div class="inner-layer">
			<div class="layer-head">
				<button type="button" class="close-btn"
					onclick="fn_layerClose('#followLayer')">
					<svg viewBox="0 0 40 40" focusable="false" role="presentation"
						class="withIcon_icon__3VTbq ConfirmModal_closeIcon__23VbM"
						aria-hidden="true">
						<path
							d="M33.4 8L32 6.6l-12 12-12-12L6.6 8l12 12-12 12L8 33.4l12-12 12 12 1.4-1.4-12-12 12-12z"></path></svg>
				</button>
			</div>
			<!--//layer-head-->
			<div class="layer-body">
				<div class="inner">
					<div class="img-wrap">
						<span class="user-img"></span>
					</div>
					<div class="message">
						윤담님을<br>팔로우 했습니다.
					</div>
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
</body>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/feed/js/list.js"></script>
</html>