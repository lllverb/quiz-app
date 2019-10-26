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
    $(this).remove();
  });


  // 覚えたボタンを押した時
  $(document).on('click', '.removemistake', function(e){
    e.preventDefault();
    $(this).parent().remove();
  })

// 乗せた///////////
  $(document).on('mouseenter', '.category-first', function(e){
    e.preventDefault();
    // $('.category-second').removeClass('hidden')
    buildCHTML();
  })
  // $(document).on('mouseenter', '.category-second', function(e){
  //   e.preventDefault();
  //   $('.category-third').removeClass('hidden')
  // })

// 外した////////////
  // $(document).on('mouseleave', '.category-area', function(e){
  //   e.preventDefault();
  //   console.log('a')
  //   $('.category-second').addClass('hidden')
  //   $('.category-third').addClass('hidden')
  // })
  // $(document).on('mouseleave', '.category-second', function(e){
  //   e.preventDefault();
  //   console.log('a')
  //   $('.category-second').addClass('hidden')
  //   $('.category-third').addClass('hidden')
  // })
  // $(document).on('mouseleave', '.category-second', function(e){
  //   e.preventDefault();
  //   console.log('a')
  //   $('.category-second').addClass('hidden')
  //   $('.category-third').addClass('hidden')
  // })

  function buildCHTML(){
    html = `<div class="category-second margin">
              <p>漢字</p>
              <p>古典</p>
              <p>漢文</p>
              <p>現代文</p>
              <p>数Ⅰ</p>
              <p>数Ⅱ</p>
              <p>数Ⅲ</p>
              <p>化学</p>
              <p>物理</p>
              <p>生物</p>
              <p>地学</p>
            </div>`
    $('.category-area').append(html)
  }
  // $(document).on('mouseout', '.category-second', function(e){
  //   e.preventDefault();
  //   $('.category-third').addClass('hidden')
  // })
  
})