let mypage = `${mypage}`;
mypage = JSON.parse(mypage);

$("#nick").text(mypage.membernick);
$(".Avatar-hasImage").css("background-image",`url(${contextPath}/upload/` + mypage.memberimg + `)`);
console.log();