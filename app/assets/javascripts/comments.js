$(document).ready(function() {
  $('.reply_button').click(function() {
    var form = $('#'+$(this).data("id"))
     if (form.hasClass( "ninja" )) {
       form.removeClass('ninja');//Form shows on button click
     } else {
       form.addClass('ninja')
     }
     return false;
   });
 });