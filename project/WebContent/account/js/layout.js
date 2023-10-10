 // 전체카테고리 오픈
function fn_allCate_open() {
    $(".all-category").toggleClass('on');

    $(".layer-bg").on("click",function(){
        $(".all-category").removeClass('on');
    })
}
// 검색 레이어창 오픈
function fn_shcLayer_open() {
    $(".search-layer").show();        
}
// 외부 클릭 시 모달창 닫기
$(document).mouseup(function(e){
    if($('.search-layer').has(e.target)){
        $('.search-layer').hide();
    }
})
function fn_layerOpen(e) {
    $(e).fadeIn();
}
function fn_layerClose(e) {
    $(e).fadeOut();
}
