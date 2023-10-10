$(document).ready(function () {
  $('.Modal button').click(function () {
    $('#ch-plugin').removeClass('visibility');
    $('.Modal').addClass('visibility');
  });

  $(document).click(function (event) {
    if (
      !$(event.target).closest('#ch-plugin').length &&
      !$(event.target).closest('.Modal').length
    ) {
      console.log('작동');
      $('#ch-plugin').addClass('visibility');
      $('.Modal').removeClass('visibility');
      stauts = 0;
    }
  });
});
