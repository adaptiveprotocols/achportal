$(document).ready(function(){
  (function(){
    $('.Adaptiva_Group tr').each(function() {
      if ( $(this).children('td').length > 2 ) {
        $(this).addClass('is-grid');
      }
    });
  })();
});