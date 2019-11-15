document.addEventListener("turbolinks:load", function() {
  $('.open').click(function(){
    $('.modal').fadeIn();
  });
  var answer = 9
  i = 0
  while(i <= 8){
    answer -= $(`#${i}`).data('id')
    i += 1
  }
  var clicked = 0
  var useranswer = 0
  $(document).on('click', '.image', function(){
    if ($(this)[0]['className'] != 'image opacity'){
      $(this).addClass('opacity')
      clicked += $(this).data('id')
      useranswer += 1
    } else {
      $(this).removeClass('opacity')
      clicked -= $(this).data('id')
      useranswer -= 1
    }
  })
  $('.not-robot').click(function(){
    if (clicked == 0 && useranswer == answer) {
      alert('やるやん')
      $('.modal').fadeOut();
      $('.image').removeClass('opacity')
      clicked = 0
      useranswer = 0
    } else {
      alert('ロボットだな？')
    }
  });
})