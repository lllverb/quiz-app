document.addEventListener("turbolinks:load", function() {
  $(document).on('change', '#quiz_category', function(e){
    e.preventDefault
    var category = $('#quiz_category option:selected').val();
    $.ajax({
      url: '/quizzes/category_children',
      type: 'GET',
      dataType: 'json',
      data: {category: category}
    })
    .done(function(children){
      $('.category-children').empty()
      buildChildrenSelect()
      children.forEach(function(child){
        buildChildrenOption(child)
      })
    })
    .fail(function(){
    })
  })
  function buildChildrenSelect() {
    childrenSelect = `<select name="quiz[category_id]" id="quizzes_category_children_id">
                        <option value="">---</option>
                      </select>`
    $('.category-children').append(childrenSelect);
  }
  function buildChildrenOption(child){
    childrenOption = `<option value="${child.id}">${child.name}</option>`
    $('#quizzes_category_children_id').append(childrenOption);
  }
})