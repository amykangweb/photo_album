$(document).ready(function(){
  $('.edit-post').click(function(){
    var post = $(this).data('post');
    $('.hidden-update' + "." + post).show();
    $('.error_explanation').html(" ");
    $('.hidden-menu').hide();
  });
  $('.remove-form').click(function(){
    $('.hidden-update').hide();
    $('.admin-menu').show();
  });
});
