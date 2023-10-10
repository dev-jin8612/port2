// 텍스트 에어리어 오토사이즈
autosize($('textarea'));

/* 좋아요 버튼 클릭 시 active */
$(".comment-like button").on("click",function(){
  $(this).toggleClass("on");
});
/* 답글달기 버튼 클릭 시 답글창 on */
$(".reply button").on("click",function(){
	$(".reply-wrap").toggleClass("active");
})

/* 슬라이드 */

// 슬라이드 gallery의 넓이를 img의 개수만큼 설정
const $gallery = $(".gallery-img");
const $galleryWidth = 100 * ($gallery.find("li").length) + "%" 
$gallery.css("width",$galleryWidth)


// 버튼 엘리먼트 선택하기
let count = 0;
const btnPrev = document.querySelector(".arrow.left");
const btnNext = document.querySelector(".arrow.right");
const galleryUl = document.querySelector(".gallery-img")
const galleryLi = document.querySelectorAll(".gallery-img li")

/* 페이지네이션 */
const $galleryTotal = $gallery.find("li").length;
const $totalCount = $(".count-num");
const $currCount = $(".current-num");


btnNext.addEventListener("click",(el)=>{
	if(count >= galleryLi.length-1)count = -1;
	
	++ count
	const gap = galleryLi[1].offsetLeft - galleryLi[0].offsetLeft;
	const goto = (-gap * count) + "px";
    galleryUl.style.left = goto;   

	$currCount.text(count + 1);

})

btnPrev.addEventListener("click",(el)=>{
 	if(count <= 0) count = galleryLi.length;

    -- count
	const gap = galleryLi[1].offsetLeft - galleryLi[0].offsetLeft;
	const goto = (-gap * count) + "px";
    galleryUl.style.left = goto;

	$currCount.text(count + 1);

})
