document.addEventListener("turbolinks:load", function() {
  $('.open').click(function(){
    $('.modal').fadeIn();
  });
  var answer = 0
  i = 0
  while(i <= 8){
    answer += $(`#${i}`).data('id')
    i += 1
  }
  var clicked = 0
  var useranswer = []
  $(document).on('click', '.image', function(e){
    if ($(this)[0]['className'] != 'image opacity'){
      $(this).addClass('opacity')
      clicked += $(this).data('id')
      useranswer.push(1)
    } else {
      $(this).removeClass('opacity')
      clicked -= $(this).data('id')
      useranswer.pop()
    }
  })
  $('.not-robot').click(function(){
    if (clicked == 0 && useranswer.length == answer) {
      alert('やるやん')
      $('.modal').fadeOut();
      $('.image').removeClass('opacity')
      clicked = 0
      useranswer = []
    } else {
      alert('ロボットだな？')
    }
  });
})