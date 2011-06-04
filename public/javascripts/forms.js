$(document).ready(function(){
  success = function(data, textStatus, jqXHR){
    $('#content').empty();
    $('#create-form-tmpl').tmpl(data).appendTo('#content');    
  };

  $('#content').delegate("#submit-new-form", "click", function(){
    $.post(
      'forms', 
      $('#new-form').serialize(),
     success); 
  });
});
