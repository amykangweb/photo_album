$(document).ready(function(){
  $('.pagination a').on('click', function(){
    var url = $(this).attr('href');
    $(this).attr('href', url);
    $.get(this.href, null, null, 'script');
    return false;
  });
});
