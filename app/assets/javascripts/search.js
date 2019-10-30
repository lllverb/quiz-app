document.addEventListener("turbolinks:load", function() {
  $('.fa-search').on('click', function(e){
    e.preventDefault;
    var keyword = $('#search').val()
    $.ajax({
      url: '/quizzes/search',
      type: 'GET',
      dataType: 'json',
      data: {keyword: keyword}
    })
    .done(function(quizzes){
      i = 1
      $('.quiz-container').empty()
      quizzes.forEach(function(quiz){
        buildQuiz(quiz)
        i += 1
      })
    })
    .fail(function(){
    })
  })
  $('.search-by-category').on('click', function(e){
    e.preventDefault;
    var categoryParentID = $('#selectparent').val()
    var categoryChildrenID = $('#selectchildren_id').val()
    if (categoryChildrenID){
      location.href = `/quizzes/${categoryChildrenID}/find_by_children`
    } else {
      location.href = `/quizzes/${categoryParentID}/find_by_parent`
    }
  })
  function buildQuiz(quiz){
    quiz = `<div class='quiz-content quiz-bg'>
              <div class='quiz-title'>
                Q.
                ${i}
              </div>
              <div class='quiz-quiz'>
                ${quiz.quiz}
              </div>
              <div class='explanation'>
                <div class='explanationp'>
                  ${quiz.explanation}
                </div>
              </div>
            </div>`
    $('.quiz-container').append(quiz)
  }
  var enter = 0;
  // キーボード押した
  function keydown(event){
    if(event.keyCode == 13){
      enter = 1
    }
    search() 
  }
  // キーボード離した
  function keyup(event){
    if(event.keyCode == 13){
      enter = 0
    }
  }
  function search(){
    if(enter == 1){
      $('.fa-search').click()
    }
  }
  document.onkeydown = keydown
  document.onkeyup   = keyup
})