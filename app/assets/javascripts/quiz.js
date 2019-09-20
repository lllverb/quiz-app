document.addEventListener("turbolinks:load", function() {
    $(".dropdown-item").on('click', function(e){
      e.preventDefault();
      if ($(this).data("id") == 1 ){
        alert('正解です!');
        $(this).parent().parent().parent().parent().removeClass("quiz-bg").addClass("correct");
        $(this).parent().parent().parent().prev('.hidden').removeClass("hidden");
      } else {
        alert('残念!');
        $(this).parent().parent().parent().parent().removeClass("quiz-bg").addClass("incorrect");
        $(this).parent().parent().parent().prev('.hidden').removeClass("hidden");
      }
    })
})