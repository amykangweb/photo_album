$(document).ready(function(){
  $('.new-post').click(function(){
    $('.hidden-form').show();
    $('.hidden-menu').hide();
  });
  $('.hidden-form-bg').click(function(){
    $('.hidden-form').hide();
    $('.admin-menu').show();
  });
});
