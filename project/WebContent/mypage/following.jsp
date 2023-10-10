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
    <link rel="stylesheet" href="/mypage/following.css">
    <!-- 페이지 css -->
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <script src="https://rawgit.com/jackmoore/autosize/master/dist/autosize.min.js"></script>
    <script charset="UTF-8" src="../inc/js/layout.js"></script>
    <script charset="UTF-8" src="/mypage/mypage.js"></script>
    <title>팔로잉/팔로워 목록</title>
</head>
<body>
<jsp:include page="../inc/head.jsp"></jsp:include>
<!-- 공통헤더 -->
    <div id="page-container">
      <div class="black-bg-wrap" style="display: none"></div>
      <div class="wz-header"></div>
      <form method="get" id="forwardForm">
        <input type="hidden" id="returnURL" name="returnURL" />
      </form>
      <input type="hidden" id="sessionLoginCheck" value="true" />
      <div id="my-follow-app" style="min-height: 100vh">
        <div class="MyFollowAppContainer-container">
          <div class="MyFollowAppContainer-contents">
            <p class="MyFollowAppContainer-header">팔로잉 / 팔로워</p>
            <div class="MyFollowAppContainer-tabsWrapper">
              <div class="Tabs-tabsWrapper">

                <ul class="Tabs-ul">

                  <li data-index="0" class="active" id="follower">
                    <button type="button" class="Tab-tab-First-btn" role="tab" data-value="0">
                      <span>
                        <p>팔로워<sup></sup></p>
                      </span>
                    </button>
                  </li>


                  <li data-index="1" id="following">
                    <button type="button" class="Tab-tab-Second-btn" role="tab" data-value="1">
                      <span>
                        <p>팔로잉<sup></sup></p>
                      </span>
                    </button>
                  </li>
                </ul>
              </div>
            </div>

            <!-- 여기까지 대가리 -->
            <div >
                <div class="TabsPanels-tabPanels">
                    <div class="page-container">

<!-- 여기부터 -->
<!--                         <div class="FollowingCard-container-3">
                            <div class="FollowingCard-contents-S">
                                <a href="/web/maker/detail/73485" class="FollowingCard-leftPanel">
                                    <div class="FollowingCard-avatarWrapper">
                                        <div class="Avatar-avatar-FollowingCard-avatar">
                                            <span class="Avatar-hasImage" style="background-image: url(&quot;https://cdn.wadiz.kr/ft/images/maker/2023/0511/20230511151032855_null.jpg/wadiz/format/jpg/quality/80/optimize&quot;), url(&quot;data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iODAiIGhlaWdodD0iODAiIHZpZXdCb3g9IjAgMCA4MCA4MCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayI+CiAgICA8ZGVmcz4KICAgICAgICA8cGF0aCBpZD0iYzl1cmF3eHIyYSIgZD0iTTAgMGg4MHY4MEgweiIvPgogICAgPC9kZWZzPgogICAgPGcgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj4KICAgICAgICA8Zz4KICAgICAgICAgICAgPG1hc2sgaWQ9IjZ2emt3OXN5NWIiIGZpbGw9IiNmZmYiPgogICAgICAgICAgICAgICAgPHVzZSB4bGluazpocmVmPSIjYzl1cmF3eHIyYSIvPgogICAgICAgICAgICA8L21hc2s+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik04MCA0MGMwIDIyLjA5Mi0xNy45MDkgNDAtNDAgNDBTMCA2Mi4wOTIgMCA0MCAxNy45MDkgMCA0MCAwczQwIDE3LjkwOCA0MCA0MCIgZmlsbD0iI0U5RUNFRiIgbWFzaz0idXJsKCM2dnprdzlzeTViKSIvPgogICAgICAgIDwvZz4KICAgICAgICA8cGF0aCBkPSJtMjIuMzA1IDI2LjkxNC4yMyAyLjEyMWMtLjAxLjI5LjA0OS41NTkuMTgxLjgwNy4wODUuMjYxLjIyOC40ODUuNDMzLjY3Ni4xOS4yMDMuNDEzLjM0OC42NzQuNDMyLjI0OS4xMzIuNTE5LjE5MS44MDYuMThsLjU1Ny0uMDc1Yy4zNTUtLjA5OS42NjMtLjI3OS45MjQtLjUzN2wuMzI4LS40MjVjLjE5LS4zMjYuMjg1LS42OC4yODctMS4wNTgtLjA3OC0uNzA2LS4xNTQtMS40MTUtLjIzLTIuMTIxLjAxLS4yOS0uMDUtLjU1OS0uMTgtLjgwN2ExLjU3IDEuNTcgMCAwIDAtLjQzNC0uNjc1IDEuNTUzIDEuNTUzIDAgMCAwLS42NzQtLjQzMyAxLjU4NCAxLjU4NCAwIDAgMC0uODA3LS4xOGMtLjE4NS4wMjYtLjM3Mi4wNS0uNTU3LjA3NWEyLjA4MyAyLjA4MyAwIDAgMC0uOTI1LjUzOGwtLjMyNi40MjRjLS4xOS4zMjctLjI4NS42NzktLjI4NyAxLjA1OE01My44ODIgMjcuMzI4djIuNTIyYzAgLjUzOC4yMzMgMS4xMDIuNjEzIDEuNDgyLjE5LjIwMy40MTQuMzQ4LjY3NC40MzMuMjUuMTMuNTE4LjE5LjgwNy4xOC41NDItLjAyNCAxLjEwNC0uMjAyIDEuNDgxLS42MTMuMzc2LS40MS42MTQtLjkxNC42MTQtMS40ODJ2LTIuNTIyYzAtLjUzNi0uMjM0LTEuMS0uNjE0LTEuNDhhMS41NzYgMS41NzYgMCAwIDAtLjY3NC0uNDM0IDEuNTczIDEuNTczIDAgMCAwLS44MDctLjE4Yy0uNTQyLjAyNC0xLjEwNC4yMDItMS40ODEuNjE0LS4zNzYuNDA5LS42MTMuOTEzLS42MTMgMS40OE0zNi4yOTcgMjUuOTQ1Yy0uNzQzIDQuMzM1LTEuNDg0IDguNjczLTIuMjI1IDEzLjAxLS4xODQgMS4wNzUuMjg1IDIuMzA3IDEuNDYzIDIuNTc2IDEuMDE0LjIzIDIuMzc4LS4zMDkgMi41NzYtMS40NjJsMi4yMjUtMTMuMDExYy4xODQtMS4wNzUtLjI4NS0yLjMwOC0xLjQ2My0yLjU3Ny0xLjAxNS0uMjMtMi4zOC4zMDgtMi41NzYgMS40NjRNNDUuMTU4IDUwLjM4NmMtLjE2LS4zMy0uMTAxLS40NzctLjA0NS0uODA2LS4xMTEuMTc1LS4xMjUuMjAxLS4wNDIuMDc3YS4zNy4zNyAwIDAgMSAuMjAzLS4xNzhjLS4yMi4xMTctLjIzNS4xMzgtLjA0Ny4wNjRhMy40MyAzLjQzIDAgMCAxLS4zOTMuMTE2Yy0uMDgyLjAyLS42NTkuMS0uMjY1LjA1Ny0xLjExNS4xMjQtMi4yNC4xOS0zLjM2LjI4NWwtNi44NzcuNTc3Yy0xLjA4OS4wOTItMi4xNDguODk3LTIuMDk1IDIuMDk0LjA0OCAxLjA1Ni45MjYgMi4xOTIgMi4wOTUgMi4wOTNsOC44NC0uNzRjMS40NS0uMTIzIDMuMDQxLS4xMyA0LjI4Ny0uOTggMS42LTEuMDkzIDIuMTYzLTMuMDI4IDEuMzE2LTQuNzcyLS40OC0uOTktMS45NjYtMS4zMzMtMi44NjYtLjc1Mi0xLjAxMy42NTQtMS4yNjMgMS44MDctLjc1IDIuODY1IiBmaWxsPSIjQ0REM0Q4Ii8+CiAgICA8L2c+Cjwvc3ZnPgo=&quot;); border: 1px solid rgb(221, 226, 230);"></span>
                                        </div>
                                    </div>
                                    <div class="FollowingCard-info"><p class="FollowingCard-name">로그인</p></div>
                                </a>
                                <div class="FollowingCard-rightPanel">
                                    <button class="Button-button-3MO4n Button-secondary" type="button">
                                        <span>
                                            <svg viewBox="0 0 48 48" focusable="false" role="presentation" class="withIcon-icon-2KxnX" aria-hidden="true" style="width: 14px; height: 14px;">
                                                <path d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path>
                                            </svg>
                                            <span class="Button-children">팔로잉</span>
                                        </span>
                                    </button>
                                </div>
                            </div>
                            <div class="FollowingCard-divider"></div>
                        </div> -->
<!-- 개수 -->
                    </div>
                </div>
            </div>
          </div>




        </div>
      </div>

      <div id="footer"></div>
    </div>
</body>
<script type="text/javascript"> 

/* 탭 효과 */ 
$(".Tabs-ul li").on("click",function(){
 $(".Tabs-ul li").not(this).removeClass('active');
 $(this).addClass('active')
})

/* 팔로우 리스트 */
const $listWrap  = $(".page-container")

start();
function start() {
	$.ajax({
		url:"follower.follow",
		type: "get",
		dataType:"json",
		success: function(followers) {
			let text ="";
			followers.forEach(follower =>{								
				text += followerList(follower);
			});
			$listWrap.html(text);
		}
	});
}
const followerList = (follower) =>{
	return (`<div class="FollowingCard-container-3">
				<div class="FollowingCard-contents-S">
				 <a href="/web/maker/detail/73485" class="FollowingCard-leftPanel">
				 	<div class="FollowingCard-avatarWrapper">
	                    <div class="Avatar-avatar-FollowingCard-avatar">
		                    <span class="Avatar-hasImage" style="background-image: url('${pageContext.request.contextPath}/upload/` + follower.memberimg + `'); border: 1px solid rgb(221, 226, 230);"></span>
		                </div>
	                </div>
                    <div class="FollowingCard-info"><p class="FollowingCard-name">` + follower.membernick + `</p></div>
                    <div class="FollowingCard-rightPanel">
                    <button class="Button-button-3MO4n Button-secondary" type="button">
                        <span>
                            <svg viewBox="0 0 48 48" focusable="false" role="presentation" class="withIcon-icon-2KxnX" aria-hidden="true" style="width: 14px; height: 14px;">
                                <path d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path>
                            </svg>
                            <span class="Button-children">팔로잉</span>
                        </span>
                    </button>
                </div>
                  </a>
                  
                  </div>
                  <div class="FollowingCard-divider"></div>
              </div>`
       		)}

/* 내 팔로잉 리스트 */
$("#following").on("click",function(){
	 
	$.ajax({
		url:"following.follow",
		type: "get",
		dataType:"json",
		success: function(followings) {
			let text ="";
			followings.forEach(following =>{								
				text += followingList(following);
			});
			$listWrap.html(text);
		}
	});
	

	 const followingList = (following) =>{
			return (`<div class="FollowingCard-container-3">
					<div class="FollowingCard-contents-S">
					 <a href="/web/maker/detail/73485" class="FollowingCard-leftPanel">
					 	<div class="FollowingCard-avatarWrapper">
		                    <div class="Avatar-avatar-FollowingCard-avatar">
			                    <span class="Avatar-hasImage" style="background-image: url('${pageContext.request.contextPath}/upload/` + following.memberimg + `'); border: 1px solid rgb(221, 226, 230);"></span>
			                </div>
		                </div>
	                    <div class="FollowingCard-info"><p class="FollowingCard-name">` + following.membernick + `</p></div>
	                    <div class="FollowingCard-rightPanel">
	                    <button class="Button-button-3MO4n Button-secondary" type="button">
	                        <span>
	                            <svg viewBox="0 0 48 48" focusable="false" role="presentation" class="withIcon-icon-2KxnX" aria-hidden="true" style="width: 14px; height: 14px;">
	                                <path d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path>
	                            </svg>
	                            <span class="Button-children">팔로우</span>
	                        </span>
	                    </button>
	                </div>
	                  </a>
	                  
	                  </div>
	                  <div class="FollowingCard-divider"></div>
	              </div>`
	)}
	 
})

 
  /* 내 피드 클릭 시 */
  $("#follower").on("click",function(){
	  start();
  });

</script>
</html>