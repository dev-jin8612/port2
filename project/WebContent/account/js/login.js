  const $emailInput = $("input[type=email]");
  const $passwordInput = $("#memberpw");
  const $emailInputVal = $emailInput.val();
  const $logintBtn = $(".login-btn-area button");
  const $emailFilter =  /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;

  
  $logintBtn.on("click",()=>{
    if($passwordInput.val() == ""){
      $passwordInput.addClass("error");
      $passwordInput.focus();
    }
    if($emailInput.val() == ""){
      $emailInput.addClass("error");
      $emailInput.focus();
    }
  });