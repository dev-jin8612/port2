function idcheck() {
	let id = $("input#memberid").val();

	$.ajax({
		url: "idCheck.member",
		type: "post",
		data: "memberid=" + id,
		dataType: "json",
		success: function(checkId) {
			if (checkId) {
				alert("사용 가능한 아이디 입니다.");
				document.getElementById("membername").focus();
				document.querySelector("#com").disabled = false;
			} else {
				alert("중복된 아이디 입니다.");
			};
		}
	});
};

// 완료 버튼 누르면 join request 실행
function send() {
	document.getElementById("form1").submit();
}
