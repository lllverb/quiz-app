document.addEventListener("turbolinks:load", function() {
  // 選択肢を押した時
  $(".choice").on('click', function(e){
    e.preventDefault();
    if ($(this).parent().data("id") == 1 ){
      $(this).parent().parent().parent().removeClass("quiz-bg").addClass('correct');
      $(this).parent().parent().prev('.answer').prev('.explanation').children('.hiddench').removeClass("hiddench");
    } else {
      $(this).parent().parent().parent().removeClass("quiz-bg").addClass("incorrect");
      $(this).parent().parent().prev('.answer').prev('.explanation').children('.explanationih').removeClass("hiddenih");
      $(this).parent().parent().children('.cchoice').addClass('correct')
      $(this).parent().parent().prev('.answer').removeClass("hidden");
    }
    $(this).parent().parent().prev('.answer').prev('.hidden').removeClass("hidden");
    $(this).parent().parent().children('.ichoice').addClass('hidden')
    $(this).parent().parent().children('.cchoice').children('.choice').off('click');
  })
  
  
  // お気に入り追加ボタンを押した時
  $(document).on('click', '.addfavorite', function(e){
    e.preventDefault();
    const favorite = $(this).parent();
    buildfavHTML(favorite);
    function buildfavHTML(favorite){
      const html = `<a class="removefavorite" rel="nofollow" data-method="delete" href="/quizzes/${favorite.data('id')}/favorites/${favorite.data('id')}">お気に入り解除</a>`;
      $(favorite).append(html);
    }
    $(this).remove();
  });
  // お気に入り解除ボタンを押した時
  $(document).on('click','.removefavorite', function(e){
    e.preventDefault();
    const favorite = $(this).parent();
    buildfavHTML(favorite);
    function buildfavHTML(favorite){
      const html = `<a class="addfavorite" rel="nofollow" data-method="post" href="/quizzes/${favorite.data('id')}/favorites">お気に入りに追加</a>`
      $(favorite).append(html);
    }
    $(this).parent().parent().remove();
  });


  // 覚えたボタンを押した時
  $(document).on('click', '.removemistake', function(e){
    e.preventDefault();
    $(this).parent().remove();
  })
})