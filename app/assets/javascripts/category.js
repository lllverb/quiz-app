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
      var selectAppendArea = $('.category-children')
      var selectID = 'quizzes_category_children_id'
      selectAppendArea.empty()
      buildChildrenSelect(selectAppendArea, selectID)
      var optionApendArea = $('#quizzes_category_children_id')
      children.forEach(function(child){
        buildChildrenOption(child, optionApendArea)
      })
    })
    .fail(function(){
    })
  })
  $(document).on('change', '#selectparent', function(e){
    e.preventDefault
    var category = $('#selectparent option:selected').val();
    $.ajax({
      url: '/users/category_children',
      type: 'GET',
      dataType: 'json',
      data: {category: category}
    })
    .done(function(children){
      var selectAppendArea = $('#selectchildren')
      var selectID = 'selectchildren_id'
      selectAppendArea.empty()
      buildChildrenSelect(selectAppendArea, selectID)
      var optionApendArea = $(`#${selectID}`)
      children.forEach(function(child){
        buildChildrenOption(child, optionApendArea)
      })
    })
    .fail(function(){
    })
  })
  function buildChildrenSelect(selectAppendArea, selectID) {
    childrenSelect = `<select name="quiz[category_id]" id="${selectID}">
                        <option value="">---</option>
                      </select>`
    selectAppendArea.append(childrenSelect);
  }
  function buildChildrenOption(child, optionApendArea){
    childrenOption = `<option value="${child.id}">${child.name}</option>`
    optionApendArea.append(childrenOption);
  }
})