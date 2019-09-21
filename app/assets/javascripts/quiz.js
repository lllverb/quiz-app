document.addEventListener("turbolinks:load", function() {
  $(".choice").on('click', function(e){
    e.preventDefault();
    if ($(this).parent().data("id") == 1 ){
      $(this).parent().parent().parent().removeClass("quiz-bg").addClass("correct");
      $(this).parent().parent().prev('.hidden').removeClass("hidden");
      $(this).parent().parent().children('.achoice').children().off();
    } else {
      $(this).parent().parent().parent().removeClass("quiz-bg").addClass("incorrect");
      $(this).parent().parent().prev('.hidden').removeClass("hidden");
      $(this).parent().parent().children('.achoice').children().off();
    }
  })
  
  $(document).on('click', '.addfavorite', function(e){
    e.preventDefault();
    var favorite = $(this).parent();
    buildfavHTML(favorite);
    function buildfavHTML(favorite){
      var html = `<a class="removefavorite" rel="nofollow" data-method="delete" href="/quizzes/${favorite.data('id')}/favorites/${favorite.data('id')}">お気に入り解除</a>`;
      $(favorite).append(html);
    }
    $(this).remove();
  })

  $(document).on('click','.removefavorite', function(e){
    e.preventDefault();
    var favorite = $(this).parent();
    buildfavHTML(favorite);
    function buildfavHTML(favorite){
      var html = `<a class="addfavorite" rel="nofollow" data-method="post" href="/quizzes/${favorite.data('id')}/favorites">お気に入りに追加</a>`
      $(favorite).append(html);
    }
    $(this).remove();
  })
})