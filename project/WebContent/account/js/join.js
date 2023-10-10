// 비밀번호 확인
const $pwBtn = $(".pw-view");
$pwBtn.on("click",function(){

    if($(this).find("i").hasClass("xi-eye-off")){
        $(this).prev().attr("type","password");
        $(this).find("i").attr("class","xi-eye")
    }else{
        $(this).prev().attr("type","text");
        $(this).find("i").attr("class","xi-eye-off")
    }
});
// 이메일 유효성검사
const $emailInput = $("#userEmail");
$(".emailBtn").on("click", function(){
    if($emailInput.val() == ""){
        console.log("dddddddd");
        $emailInput.addClass("error");
    }
})

// 약관확인 모달창
const $allAgree2 = $("#allAgree2");
const $allAgree = $("#allAgree");
const $allCheck = $(".all-check");
const $innerMoreBtn = $(".inner-agree .moreBtn");
const $modalCheck = $(".agree-list-wrap input[type=checkbox]");

$allAgree.on("click",()=>{
    if($allAgree.prop("checked")){
        $allAgree2.prop("checked", true);

        $modalCheck.each((idx, el)=>{
            $(el).prop("checked",true);
        });
    }else{
        $allAgree2.prop("checked", false);

        $modalCheck.each((idx, el)=>{
            $(el).prop("checked",false);
        });
    }
});


$allAgree2.on("click",()=>{
    if($allAgree2.prop("checked")){
        $allAgree.prop("checked", true);
        $allCheck.addClass("check")

        $modalCheck.each((idx, el)=>{
            $(el).prop("checked",true);
        });
    }else{
        $allCheck.removeClass("check")
        $allAgree.prop("checked", false);

        $modalCheck.each((idx, el)=>{
            $(el).prop("checked",false);
        });
    }
});

$modalCheck.change(function(){
    $modalCheck.each((idx, el)=>{
        if($(el).is("checked") == false){
            $allAgree2.prop("checked", false);
        }
    });
})



$(".main .mainMoreBtn").on("click",function(){
    $(this).parent().next().toggle();
})

$innerMoreBtn.on("click",(e)=>{
    $(e.target).parent().next(".agree-con").toggle();
})



