// 퀵메뉴 active
$(".feed-quick li").on("click",function(){
  $(".feed-quick li").not(this).removeClass('active');
  $(this).addClass('active')
})

// 스크롤 내릴 시 유저필터 숨기기
$(window).on("wheel", function (event){
  if (event.originalEvent.deltaY < 0) {
    // wheeled up
    $('.user-filter').addClass('scroll-on');
  }
  else {
    // wheeled down
    $('.user-filter').removeClass('scroll-on');
  }
});



// 슬라이드 ul의 넓이를 li의 개수만큼 설정
let $thumbUl =$(".thumb ul");
let $listUl =$(".list-wrap");

$thumbUl.each((idx,el)=>{
  let ulWidth = 100 * ($(el).children("li").length) + "%"
  $(el).css("width", ulWidth);
})


// 페이지네이션 생성
const $feedList = $(".list-wrap>li");
const $pagination = $(".page ul");
const $paginationLi = $(".page ul li");
const $sildeLi = $(".thumb ul li");
const $maxSlide = $sildeLi.length;

$feedList.each((idx,el)=>{
  const $page = $(el).find(".page");
  const $pageLi = $(el).find(".thumb ul li") 
	let $liCount = $(el).find(".thumb ul li").length;
  let $html = "";
  if($(el).find(".page")){
    console.log($liCount);
    if($liCount > 1){
      $pageLi.each((idx,el)=>{
        if (idx === 0) $html += `<li class="active"><span class="sound-only">${idx + 1}</span></li>`;
        else $html += `<li><span class="sound-only">${idx + 1}</span></li>`;
      })
    }

    $page.find("ul").html($html);
  }
})


// 버튼 엘리먼트 선택하기
const btnPrev = document.querySelector(".arrow.left");
const btnNext = document.querySelector(".arrow.right");

let count = 0;

btnNext.addEventListener("click",(el)=>{
    const thisThumb = el.target.previousSibling.previousSibling.previousSibling.previousSibling;
    const thisThumbUl = thisThumb.children[0];
    const thisThumbLi = thisThumbUl.children;
    const gap = thisThumbLi[1].offsetLeft - thisThumbLi[0].offsetLeft;
    const $pagenation = $(btnNext).next().find("li");


	if(count >= thisThumbLi.length-1){
    	count = -1;
   	} 
	++ count
	
    const goto = (-gap * count) + "px";
    thisThumbUl.style.left = goto;   

    $pagenation.not(count).removeClass("active")
    $pagenation.eq(count).addClass("active");

})

btnPrev.addEventListener("click",(el)=>{
    const thisThumb = el.target.previousSibling.previousSibling;
    const thisThumbUl = thisThumb.children[0];
    const thisThumbLi = thisThumbUl.children;
    const gap = thisThumbLi[1].offsetLeft - thisThumbLi[0].offsetLeft;
    const $pagenation = $(btnPrev).next().next().find("li");
  

	 if(count <= 0){
        count = thisThumbLi.length;
    };

    -- count

  	const goto = (-gap * count) + "px";
    thisThumbUl.style.left = goto;

    $pagenation.not(count).removeClass("active")
    $pagenation.eq(count).addClass("active");
    
})

// 페이지네이션 클릭
// const $pageUlLi = 
$(".page ul li").on('click',function(){
  const $thisIdx = $(this).index();
  const $liThumb = $(this).parent().parent().prev().prev().prev();
  const $thisThumbUl = $liThumb.find("ul");
  const $thisThumbLi = $thisThumbUl.find("li")
  const $gap = $thisThumbLi.eq(1).offset().left - $thisThumbLi.eq(0).offset().left;
  const $goto = (-$gap * $thisIdx) + "px";
  console.log($gap);

  $thisThumbUl.css("left",$goto);
  $(this).addClass("active");
  $(".page ul li").not(this).removeClass("active");
})