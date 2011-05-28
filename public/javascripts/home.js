$(document).ready(function(){
  $('.apply').bind("ajaxSuccess", function(e, data, status, xhr){
    $('#new-form-tmpl').tmpl(xhr).appendTo('#content');
  });

  $('.title-link').click(function(){
    $('.nav-link').parent().removeClass('nav-selected');
    $('#content').removeClass('content-selected');  
  });


  $('.nav-link').click(function(){
    $('.nav-link').parent().removeClass('nav-selected');
    $(this).parent().addClass('nav-selected');  
    $('#content').addClass('content-selected');  
  });

  $('#submit-new-form').click(function(){
    $.post('forms', $('#new-form').serialize()); 
  });
});
