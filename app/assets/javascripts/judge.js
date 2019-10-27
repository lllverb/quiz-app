document.addEventListener("turbolinks:load", function() {
  $(document).on('click', '.goodbtn', function(e){
    e.preventDefault;
    var quizID = $(this).parent().parent().parent().parent().data('quiz_id')
    var judgeBtnArea = $(this).parent().parent();
    judgeBtnArea.empty();
    if (this['className'].includes('judged-good')){
      buildNormalPattern(judgeBtnArea, quizID)
    } else {
      buildGoodPattern(judgeBtnArea, quizID)
    }
  })
  $(document).on('click', '.badbtn', function(e){
    e.preventDefault;
    var quizID = $(this).parent().parent().parent().parent().data('quiz_id')
    var judgeBtnArea = $(this).parent().parent();
    judgeBtnArea.empty();
    if (this['className'].includes('judged-bad')){
      buildNormalPattern(judgeBtnArea, quizID)
    } else {
      buildBadPattern(judgeBtnArea, quizID)
    }
  })
  function buildGoodPattern(judgeBtnArea, quizID) {
    html = `<div class='judge-good'>
              <a class="judged-good goodbtn" rel="nofollow" data-method="delete" href="/quizzes/${quizID}/destroy_judge.-1">
                <i class="fa fa-thumbs-up"></i>
              </a>
            </div>
            <div class='judge-bad'>
              <a class="judge-yet badbtn" rel="nofollow" data-method="post" href="/quizzes/${quizID}/update_judge.-2">
                <i class="fa fa-thumbs-down"></i>
              </a>
            </div>`
    judgeBtnArea.append(html)
  }
  function buildBadPattern(judgeBtnArea, quizID) {
    html = `<div class='judge-good'>
              <a class="judge-yet goodbtn" rel="nofollow" data-method="post" href="/quizzes/${quizID}/update_judge.2">
                <i class="fa fa-thumbs-up"></i>
              </a>
            </div>
            <div class='judge-bad'>
              <a class="judged-bad badbtn" rel="nofollow" data-method="delete" href="/quizzes/${quizID}/destroy_judge.1">
                <i class="fa fa-thumbs-down"></i>
              </a>
            </div>`
    judgeBtnArea.append(html)
  }
  function buildNormalPattern(judgeBtnArea, quizID){
    html = `<div class='judge-good'>
              <a class="judge-yet goodbtn" rel="nofollow" data-method="post" href="/quizzes/${quizID}/create_judge.1">
                <i class="fa fa-thumbs-up"></i>
              </a>
            </div>
            <div class='judge-bad'>
              <a class="judge-yet badbtn" rel="nofollow" data-method="post" href="/quizzes/${quizID}/create_judge.-1">
                <i class="fa fa-thumbs-down"></i>
              </a>
            </div>`
    judgeBtnArea.append(html)
  }
})