document.addEventListener("turbolinks:load", function() {
  var clicked = []
  $(document).on('click', '.keshimas-block', function(e){
    if (!this['className'].includes('background-blue')){
      $(this).addClass('background-blue')
      clicked.push($(this).parent())
    } else {
      var thisText = $(this).text()
      var i = 0
      clicked.forEach(function(e){
        if (String(thisText) == String(e.text().replace(/\r?\n/g, ''))){
          clicked.splice(i, 1)
        }
        i += 1
      })
      $(this).removeClass('background-blue')
    }
  })
  $(document).on('click', 'button', function(e){
    e.preventDefault
    clicked.forEach(function(e){
      e.remove();
    })
    var remaning = []
    getRemaining(remaning)
  })
  function getRemaining(remaning){
    remaning.push($('p'))
    if (remaning[0].length == 0){
      $('.keshimas').remove()
      $('.button-area').remove()
      $('.clear').removeClass('hidden')
    }
  }
})