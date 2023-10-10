<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${pageContext.request.contextPath}/mainPage/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/inc/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/inc/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/inc/css/footer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/feed/css/layout.css">

<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script charset="UTF-8" src="${pageContext.request.contextPath}/inc/js/layout.js"></script>
<title>Document</title>
</head>
<body>
<jsp:include page="${pageContext.request.contextPath}/inc/head.jsp"></jsp:include>
	<!-- 피드 좋아요 순 정렬 -->
	<div class="top">
		<div class="side">
			<div class="side-title">스토어 추천 제품</div>
			<div class="contents">
				<div class="side-img-wrap">
					<a href="">
						<div class="img"></div>
						<div class="infor">
							<div class="sub_title">
								<기업회생전문가> 전자책을 종이책으로 출판 
							</div>
							<div class="user">임종민</div>
						</div>
					</a>
				</div>
				<div class="side-img-wrap">
					<a href="">
						<div class="img"></div>
						<div class="infor">
							<div class="sub_title">
								<기업회생전문가> 전자책을 종이책으로 출판 
							</div>
							<div class="user">임종민</div>
						</div>
					</a>
				</div>
				<div class="side-img-wrap">
					<a href="">
						<div class="img"></div>
						<div class="infor">
							<div class="sub_title">
								<기업회생전문가> 전자책을 종이책으로 출판 
							</div>
							<div class="user">임종민</div>
						</div>
					</a>
				</div>
				<div class="side-img-wrap">
					<a href="">
						<div class="img"></div>
						<div class="infor">
							<div class="sub_title">
								<기업회생전문가> 전자책을 종이책으로 출판 
							</div>
							<div class="user">임종민</div>
						</div>
					</a>
				</div>
				<div class="side-img-wrap">
					<a href="">
						<div class="img"></div>
						<div class="infor">
							<div class="sub_title">
								<기업회생전문가> 전자책을 종이책으로 출판 
							</div>
							<div class="user">임종민</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="main">
		<!-- 교환해요 최신순 정렬 -->
		<div class="middle">
			<div class="title">
				<h2>함께해요</h2>
				<p>함께 친목을 도모해요</p>
			</div>
			<div class="with">
				<div class="contents">
					<div class="solid">
						<a href="">
							<article>
								<div class="infor">
									<div class="img"></div>
								</div>
								<div class="inf-contents">
									<div class="inf-title">
										<h1>제목</h1>
										<p>장소</p>
									</div>
								</div>
							</article>
						</a>
					</div>
				</div>
				<div class="contents" style="margin-left: 32px">
					<div class="solid">
						<a href="">
							<article>
								<div class="infor">
									<div class="img"></div>
								</div>
								<div class="inf-contents">
									<div class="inf-title">
										<h1>제목</h1>
										<p>장소</p>
									</div>
								</div>
							</article>
						</a>
					</div>
				</div>
				<div class="contents" style="margin-left: 32px">
					<div class="solid">
						<a href="">
							<article>
								<div class="infor">
									<div class="img"></div>
								</div>
								<div class="inf-contents">
									<div class="inf-title">
										<h1>제목</h1>
										<p>장소</p>
									</div>
								</div>
							</article>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="bottom">
		<!-- 함께해요 최신순 정렬 -->
		<div class="trade">
			<div class="up">
				<div class="title">
					<h2>교환해요</h2>
					<p>물건을 교환 해요</p>
				</div>
				<div class="page">
					<div class="infor">
						<button class="left-button">
							<svg viewBox="0 0 24 24" fill="none" focusable="false"
								role="presentation" aria-hidden="true">
								<path></path>
							</svg>
						</button>
						<button class="right-button">
							<svg viewBox="0 0 24 24" fill="none" focusable="false"
								role="presentation" aria-hidden="true">
								<path></path>
							</svg>
						</button>
					</div>
					<ul>
						<li class="active">
							<button type="button">1</button>
						</li>
						<li>
							<button type="button">2</button>
						</li>
						<li>
							<button type="button">3</button>
						</li>
						<li>
							<button type="button">4</button>
						</li>
					</ul>
				</div>
			</div>
			<div class="slide-wrap">
				<ul class="slide-ul">
					<li>
						<a>
							<div class="contents">
								<div class="img-box"><div class="img"></div></div>
								<div class="text">
									<div class="trade-title"><h1>교환 물품명</h1></div>
									<div class="trade-contents"><p>내용1</p></div>
									<div class="svg">
										교환 신청 <svg viewBox="0 0 24 24" fill="none" focusable="false"role="presentation" aria-hidden="true"><path></path></svg>
									</div>
								</div>
							</div>
						</a>
					</li>
					<li>
						<a>
							<div class="contents">
								<div class="img-box"><div class="img"></div></div>
								<div class="text">
									<div class="trade-title"><h1>교환 물품명</h1></div>
									<div class="trade-contents"><p>내용</p></div>
									<div class="svg">
										교환 신청 <svg viewBox="0 0 24 24" fill="none" focusable="false"role="presentation" aria-hidden="true"><path></path></svg>
									</div>
								</div>
							</div>
						</a>
					</li>
					<li>
						<a>
							<div class="contents">
								<div class="img-box"><div class="img"></div></div>
								<div class="text">
									<div class="trade-title"><h1>교환 물품명</h1></div>
									<div class="trade-contents"><p>내용</p></div>
									<div class="svg">
										교환 신청 <svg viewBox="0 0 24 24" fill="none" focusable="false"role="presentation" aria-hidden="true"><path></path></svg>
									</div>
								</div>
							</div>
						</a>
					</li>
					<li>
						<a>
							<div class="contents">
								<div class="img-box"><div class="img"></div></div>
								<div class="text">
									<div class="trade-title"><h1>교환 물품명</h1></div>
									<div class="trade-contents"><p>내용2</p></div>
									<div class="svg">
										교환 신청 <svg viewBox="0 0 24 24" fill="none" focusable="false"role="presentation" aria-hidden="true"><path></path></svg>
									</div>
								</div>
							</div>
						</a>
					</li>
					<li>
						<a>
							<div class="contents">
								<div class="img-box"><div class="img"></div></div>
								<div class="text">
									<div class="trade-title"><h1>교환 물품명</h1></div>
									<div class="trade-contents"><p>내용</p></div>
									<div class="svg">
										교환 신청 <svg viewBox="0 0 24 24" fill="none" focusable="false"role="presentation" aria-hidden="true"><path></path></svg>
									</div>
								</div>
							</div>
						</a>
					</li>
					<li>
						<a>
							<div class="contents">
								<div class="img-box"><div class="img"></div></div>
								<div class="text">
									<div class="trade-title"><h1>교환 물품명</h1></div>
									<div class="trade-contents"><p>내용</p></div>
									<div class="svg">
										교환 신청 <svg viewBox="0 0 24 24" fill="none" focusable="false"role="presentation" aria-hidden="true"><path></path></svg>
									</div>
								</div>
							</div>
						</a>
					</li>
					<li>
						<a>
							<div class="contents">
								<div class="img-box"><div class="img"></div></div>
								<div class="text">
									<div class="trade-title"><h1>교환 물품명</h1></div>
									<div class="trade-contents"><p>내용3</p></div>
									<div class="svg">
										교환 신청 <svg viewBox="0 0 24 24" fill="none" focusable="false"role="presentation" aria-hidden="true"><path></path></svg>
									</div>
								</div>
							</div>
						</a>
					</li>
					<li>
						<a>
							<div class="contents">
								<div class="img-box"><div class="img"></div></div>
								<div class="text">
									<div class="trade-title"><h1>교환 물품명</h1></div>
									<div class="trade-contents"><p>내용</p></div>
									<div class="svg">
										교환 신청 <svg viewBox="0 0 24 24" fill="none" focusable="false"role="presentation" aria-hidden="true"><path></path></svg>
									</div>
								</div>
							</div>
						</a>
					</li>
					<li>
						<a>
							<div class="contents">
								<div class="img-box"><div class="img"></div></div>
								<div class="text">
									<div class="trade-title"><h1>교환 물품명</h1></div>
									<div class="trade-contents"><p>내용</p></div>
									<div class="svg">
										교환 신청 <svg viewBox="0 0 24 24" fill="none" focusable="false"role="presentation" aria-hidden="true"><path></path></svg>
									</div>
								</div>
							</div>
						</a>
					</li>
					<li>
						<a>
							<div class="contents">
								<div class="img-box"><div class="img"></div></div>
								<div class="text">
									<div class="trade-title"><h1>교환 물품명</h1></div>
									<div class="trade-contents"><p>내용</p></div>
									<div class="svg">
										교환 신청 <svg viewBox="0 0 24 24" fill="none" focusable="false"role="presentation" aria-hidden="true"><path></path></svg>
									</div>
								</div>
							</div>
						</a>
					</li>
					<li>
						<a>
							<div class="contents">
								<div class="img-box"><div class="img"></div></div>
								<div class="text">
									<div class="trade-title"><h1>교환 물품명</h1></div>
									<div class="trade-contents"><p>내용</p></div>
									<div class="svg">
										교환 신청 <svg viewBox="0 0 24 24" fill="none" focusable="false"role="presentation" aria-hidden="true"><path></path></svg>
									</div>
								</div>
							</div>
						</a>
					</li>
					<li>
						<a>
							<div class="contents">
								<div class="img-box"><div class="img"></div></div>
								<div class="text">
									<div class="trade-title"><h1>교환 물품명</h1></div>
									<div class="trade-contents"><p>내용</p></div>
									<div class="svg">
										교환 신청 <svg viewBox="0 0 24 24" fill="none" focusable="false"role="presentation" aria-hidden="true"><path></path></svg>
									</div>
								</div>
							</div>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</body>
<script>
	$(".feed-quick li").on("click", function() {
		$(".feed-quick li").not(this).removeClass('active');
		$(this).addClass('active')
	})
	$(window).on("wheel", function(event) {
		if (event.originalEvent.deltaY < 0) {
			// wheeled up
			$('.user-filter').addClass('scroll-on');
		} else {
			// wheeled down
			$('.user-filter').removeClass('scroll-on');
		}
	});
	
	/* 슬라이드 */
	// 버튼 엘리먼트 선택하기
	let count = 0;
	const btnPrev = document.querySelector(".trade .left-button");
	const btnNext = document.querySelector(".trade .right-button");
	const galleryUl = document.querySelector(".trade .slide-ul")
	const galleryLi = document.querySelectorAll(".trade .slide-ul li")
	const pageLi = document.querySelectorAll(".page li");

	$(".page li").on("click", function(){  
        const liIdx=$(this).index();
 		const gap = (galleryUl.clientWidth) / 4;
		const goto = (-gap * liIdx) + "px";
	    galleryUl.style.left = goto; 
	    
         $(".page li").not(this).removeClass("active");
         $(this).addClass("active");
     });
	
	btnNext.addEventListener("click",(el)=>{
		if(count >= 3)count = -1;

		$(pageLi).not(count + 1).removeClass("active");
		$(pageLi).eq(count + 1).addClass("active");
		
		
		++ count
		const gap = (galleryUl.clientWidth) / 4;
		const goto = (-gap * count) + "px";
	    galleryUl.style.left = goto;   

	})

	btnPrev.addEventListener("click",(el)=>{
	 	if(count <= 0) count = 4;
	 	
		$(pageLi).not(count - 1).removeClass("active");
		$(pageLi).eq(count - 1).addClass("active");

	    -- count
	    const gap = (galleryUl.clientWidth) / 4;
		const goto = (-gap * count) + "px";
	    galleryUl.style.left = goto;
		console.log(count);

	})
	
	
</script>
</html>