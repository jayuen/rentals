$(document).ready(function(){
  $('.apply').bind("ajax:success", function(e, data, status, xhr){
    $('#new-form-tmpl').tmpl(xhr).appendTo('#content');
  });

  $('.title-link').click(function(){
    $('.nav-link').parent().removeClass('nav-selected');
    $('#content').removeClass('content-selected');  
    $('#content').empty();
    $('#default-content-tmpl').tmpl().appendTo('#content');
  });

  $('.nav-link').click(function(){
    $('.nav-link').parent().removeClass('nav-selected');
    $(this).parent().addClass('nav-selected');  
    $('#content').addClass('content-selected');  
    $('#content').empty();
  });

  $('#default-content-tmpl').tmpl().appendTo('#content');

  $('#content').ajaxStart(function(){
    $('#wait').show();
  });

  $('#content').ajaxStop(function(){
    $('#wait').hide();
  });
});
