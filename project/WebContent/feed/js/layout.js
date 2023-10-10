// 전체카테고리 오픈
function fn_allCate_open() {
	$(".all-category").toggleClass('on');

	$(".layer-bg").on("click", function() {
		(".all-category").removeClass('on');
	})
}
// 검색 레이어창 오픈
function fn_shcLayer_open() {
	$(".search-layer").show();
}
// 외부 클릭 시 모달창 닫기
$(document).mouseup(function(e) {
	if ($('.search-layer').has(e.target)) {
		$('.search-layer').hide();
	}
})
function fn_layerOpen(e) {
	$(e).fadeIn();
}
function fn_layerClose(e) {
	$(e).fadeOut();
}

// 로그인을 한 상태라면 로그아웃이 보이게 만들 예정
$(document).ready(function() {
	let xhr = new XMLHttpRequest();

	/*xhr.open("GET", "/session.member", true);*/
	xhr.send();

	xhr.onreadystatechange = function() {
		if (xhr.readyState === 4 && xhr.status === 200) {
			console.log(xhr.responseText);
			// 서버로부터 받아온 세션 값을 사용
			if (xhr.responseText != "null") {
				// 세션 값이 존재할 경우 처리
				$("#login").css('display', 'inline-block');
				$("#outlog").hide();
			} else {
				$("#login").hide();
				$("#outlog").css('display', 'inline-block');
			}
		}
	};
});