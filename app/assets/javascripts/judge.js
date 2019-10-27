document.addEventListener("turbolinks:load", function() {
  $(document).on('click', '.judge-yet', function(e){
    e.preventDefault;
    $(this).addClass('judged')
    $(this).removeClass('judge-yet')
  })
})