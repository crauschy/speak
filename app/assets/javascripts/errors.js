$(document).ready(function() {

  $('.sign-up-btn').on('click', function(event){
    event.preventDefault();
    var form = $(this).parent().parent().find("form")
    $.ajax({
      url: '/users',
      type: 'POST',
      data: form.serialize()
    })
    .done(function(response){
      $('div.form-errors').html(response);
    })
  })

  $('.login-btn').on('click', function(event){
    event.preventDefault();
    var form = $(this).parent().parent().find("form")
    $.ajax({
      url: '/login',
      type: 'POST',
      data: form.serialize()
    })
    .done(function(response){
      $('div.form-errors').html(response);
    })
  })

})


