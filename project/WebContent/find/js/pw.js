  const $emailInput = $("input[type=email]");
  const $findtBtn = $("#findBtn");

  
  $findtBtn.on("click",()=>{
    if($passwordInput.val() == ""){
      $passwordInput.addClass("error");
      $passwordInput.focus();
    }
    if($emailInput.val() == ""){
      $emailInput.addClass("error");
      $emailInput.focus();
    }
  });