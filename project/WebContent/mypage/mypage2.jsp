<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 공통헤더 -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 공통헤더 css -->
    <link rel="stylesheet" href="../inc/css/reset.css">
    <link rel="stylesheet" href="../inc/css/font/font.css">
    <link rel="stylesheet" href="../inc/css/xeicon/xeicon.min.css">
    <link rel="stylesheet" href="../inc/css/header.css">
    <link rel="stylesheet" href="../inc/css/footer.css">
    <!-- //공통헤더 css -->
    <!-- 페이지 css -->
    <link rel="stylesheet" href="/mypage/mypage2.css">
    <!-- <link rel="stylesheet" href="./mypage2.css"> -->
    <!-- 페이지 css -->
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <script src="https://rawgit.com/jackmoore/autosize/master/dist/autosize.min.js"></script>
    <script charset="UTF-8" src="../inc/js/layout.js"></script>
    <script charset="UTF-8" src="/mypage/mypage.js"></script>
    <title>마이페이지</title>
</head>
<body>
<jsp:include page="../inc/head.jsp"></jsp:include>
<!-- 공통헤더 -->
<!-- 컨텐츠 -->
<div id="wadizContainer">
	<div id="mypageWrap">
		<div class="myprofile-wrap">
			<link rel="stylesheet" href="https://static.wadiz.kr/static/iam/main.4d598cb3.css">
			<div id="iam-supporter-profile-app"
					class="Mypage1"
					data-profile-image="https://static.wadiz.kr/assets/icon/profile-icon-2.png"
					data-nickname="윤담" data-accnttype-name="개인 회원"
					data-is-valid-joined-premium-membership="false" data-my-self="true"
					data-my-funding-all-count="0" data-signature-cnt="0"
					data-follower-cnt="0" data-following-cnt="0"
					data-target-enc-user-id="" data-target-user-id="6453049"
					data-introduceme="" data-is-following="false"
					data-my-interest-user-keyword="">
						<section class="SupporterProfile-supporterProfile">
							<div class="SupporterProfile-inner">
							
								<!-- 1. 상단 왼쪽 (프로필이미지) -->
								<div class="Avatar-avatar Avatar-lg SupporterProfileInfo-avatar"
									aria-hidden="true">
									<span class="Avatar-hasImage" style="background-image: url(&quot;https://static.wadiz.kr/assets/icon/profile-icon-2.png&quot;); border: 1px; solid rgb(221, 226, 230);">
								</span>	
								</div>
								<!-- 2. 상단 가운데 (이름 / 스크랩 게시물 팔로워 팔로잉) -->
								<div class="SupporterProfileInfo-supporterInfo">
									<dl class="SupporterProfileInfo-name" aria-label="서포터 정보">
										<dd class="SupporterProfileInfo-nickname" id="nick">윤담</dd>
									</dl>
									<!-- 스크랩 게시물 팔로워 팔로잉  -->
									<dl class="SupporterProfileInfo-infoCountBox">
									<div>
										<dt>피드</dt>
										<dd>
											${feedCount} <span class="BlindText_textHidden">개</span>
										</dd>
									</div>
									<div class="follower-following" onclick="flower()">
										<dt>팔로워</dt>
										<dd>
											${followerCount} <span class="BlindText_textHidden">명</span> <a
												href="/web/social/follower"><span
												class="BlindText_textHidden"></span> </a>
										</dd>
									</div>
									<div class="follower-following" onclick="flowing()">
										<dt>팔로잉</dt>
										<dd>
											${followingCount} <span class="BlindText_textHidden">명</span> <a
												ref="/web/social/followingsupporter"> <span
												class="BlindText_textHidden"></span>
											</a>
										</dd>
									</div>
									</dl>
								</div>
								
								<!-- 3. 상단 오른쪽 (프로필 편집 피드 작성하기) -->
								<a class="Button-button Button-md Button-block SupporterProfileInfo-button" style="margin-right:10px;">
									<span> 
										<span class="Button-children">프로필 편집</span>
									</span>
								</a>
								
								<a class="Button-button Button-md Button-block SupporterProfileInfo-button">
									<span> 
										<span class="Button-children">피드 작성하기</span>
									</span>
								</a>
								 
							
							</div>
						</section>
					</div>
			<div id="Mypage2" class="mypage-project bg">
				<div class="tab-list">
					<ul role="tablist">
						<li class="active">
							<button type="button" id="feed" role="tab" aria-selected="ture" tabindex="-1">내 피드</button>
						</li>
						<li>
							<button type="button" id="trade" role="tab" aria-selected="flase" aria-controls="tabWishes" tabindex="0">나의 교환내역</button>
						</li>
						<li>
							<button type="button" id="with" role="tab" aria-selected="false" tabindex="1">우리 함께해요</button>
						</li>
					</ul>
				</div>
				<div class="project-list">
				    <!-- top area -->
					<div class="top-area">
						<p class="status-text"><span>${feedCount}</span> 개의 글을 작성했습니다.</p>
					</div>
					<!-- List ************ -->
					<div class="List" id="projectCardList">
						<ul>

						</ul>
					</div>
				
				</div>
			</div>
		
		</div>
	</div>
</div>
<!-- 공통footer -->
<jsp:include page="../inc/footer.jsp"></jsp:include>
<!-- //공통footer -->

</div><!-- PageContainer 닫는 div  -->
</body>
<script>
console.log()
/* 상단 프로필 정보 */
let mypage = `${mypage}`;
mypage = JSON.parse(mypage);
/* 닉네임 */
$("#nick").text(mypage.membernick);
/* 프로필사진 */
$(".Avatar-hasImage").css("background-image",`url(${contextPath}/upload/` + mypage.memberimg + `)`);


/* 내 피드 리스트 */
const $listWrap  = $("#projectCardList ul")
const $total = $(".status-text span");

start();
function start() {
	$.ajax({
		url:"myFeed.mypage",
		type: "get",
		dataType:"json",
		success: function(feeds) {
			let text ="";
 			feeds.forEach(feed =>{								
				text += feedList(feed);
			});
			$listWrap.html(text);
		}
	});
}
const feedList = (feed) =>{
	return (`<li class='list-list'>
		 	<a href=''>
	 		<div class='project-card'>
	 			<div class='card-img-section'>
	 				<em class='project-img'style='background-image: url("${pageContext.request.contextPath}/upload/` + feed.fileoriginalname + `")'></em>
	 				<em class='heart-wrapper'>
	 					<div class='heart'>
	 						<svg viewBox='0 0 32 32' focusable='false' role='presentation' class='withIcon-icon' aria-hidden='true' style='width: 24px; height: 24px;'> <path d='M22.16 4h-.007a8.142 8.142 0 0 0-6.145 2.79A8.198 8.198 0 0 0 9.76 3.998a7.36 7.36 0 0 0-7.359 7.446c0 5.116 4.64 9.276 11.6 15.596l2 1.76 2-1.76c6.96-6.32 11.6-10.48 11.6-15.6v-.08A7.36 7.36 0 0 0 22.241 4h-.085z'></path>
	 						</svg>
	 						<span class='Heart-count'>` + feed.goodCnt+ `</span>
	 					</div>
	 				</em>
	 			</div>
	 			<div class='card-info-section'>
	 				<h4>` + feed.boardtitle + `</h4>
	 				<h5>` + feed.boardcontents + `</h5>
	 				<div class='card-category'><span class='category1'>` + feed.boarddate + `</span></div>
	 			</div>
	 		</div>
	 	</a>
</li>`)
}

/* 탭 효과 */ 
 $(".tab-list li").on("click",function(){
  $(".tab-list li").not(this).removeClass('active');
  $(this).addClass('active')
})
 
/* 내 교환해요 리스트 */
 $("#trade").on("click",function(){
	
	 $total.text("${tradeCount}");
	 
	$.ajax({
		url:"myTrade.mypage",
		type: "get",
		dataType:"json",
		success: function(trades) {
			let text ="";
			trades.forEach(trade =>{								
				text += tradeList(trade);
			});
			$listWrap.html(text);
			for(let i=0;i<trades.length;i++){
				if(trades[i].boardstatus == "ti"){
					$(".trade_st").eq(i).text("교환중");
				}else if(trades[i].boardstatus == "tc"){
					$(".trade_st").eq(i).addClass("end");
					$(".trade_st").eq(i).text("교환완료");
				}
			}
		}
	});
	

	 const tradeList = (trade) =>{
			return (`<li class='list-list'>
				 	<a href=''>
			 		<div class='project-card'>
			 			<div class='card-img-section'>
			 				<em class='project-img'style='background-image: url("${pageContext.request.contextPath}/upload/` + trade.fileoriginalname + `")'></em>
			 			</div>
			 			<div class='card-info-section'>
			 				<div class='trade_st'></div>
			 				<h4>` + trade.boardtitle + `</h4>
			 				<h5>` + trade.boardcontents + `</h5>
			 				<div class='card-category'><span class='category1'>` + trade.boarddate + `</span></div>
			 			</div>
			 		</div>
			 	</a>
		</li>`)
	}
	 
 })
 
 /* 내 함께해요 리스트 */
 $("#with").on("click",function(){
	
	 $total.text("${togetherCount}");
	 
	$.ajax({
		url:"myTogether.mypage",
		type: "get",
		dataType:"json",
		success: function(togethers) {
			let text ="";
			togethers.forEach(together =>{								
				text += togetherList(together);
			});
			$listWrap.html(text);
		}
	});
	
	 
	 const togetherList = (together) =>{
			return (`<li class='list-list'>
				 	<a href=''>
			 		<div class='project-card'>
			 			<div class='card-img-section'>
			 				<em class='project-img'style='background-image: url("${pageContext.request.contextPath}/upload/` + together.fileoriginalname + `")'></em>
			 			</div>
			 			<div class='card-info-section'>
			 				<h4>` + together.boardtitle + `</h4>
			 				<h5>` + together.boardcontents + `</h5>
			 				<div class='card-category'><span class='category1'>` + together.boarddate + `</span></div>
			 			</div>
			 		</div>
			 	</a>
		</li>`)
	}
 })
 
 
  /* 내 피드 클릭 시 */
  $("#feed").on("click",function(){
	 $total.text("${feedCount}");
	  start();
  });
 
 function flower() {
	 location.href = "${pageContext.request.contextPath}followerList.follow"
 }
 function flowing() {
	 location.href = "${pageContext.request.contextPath}followingList.follow"
 }
</script>
</html>