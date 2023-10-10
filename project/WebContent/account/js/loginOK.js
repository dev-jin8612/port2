/** 로그인 request를 보내기 위한 js파일 입니다.
 * 삭제하기 말아주세요
 */
// id 태그 정보 가져오기, 태그 명 변경해야됨
const $id = $("input#id");
// 비번 태그 정보 가져오기, 태그 명 변경해야됨
const $password = $("input#memberpw");


function send() {
	// 아이디 공간이 비어 있다면
	if (!$id.val()) {
		return;
	}
	// 비번 공간이 비어 있다면
	if (!$password.val()) {
		return;
	}
	// 서브밋
	document.getElementById("form1").submit();
}
