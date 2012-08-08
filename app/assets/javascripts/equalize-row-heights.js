$(document).ready(function () {
  $('.row-fluid').each(function() {
      var height = 0;
      $(this).find('.well').each(function() {
          if(height < $(this).height()) {
              height = $(this).height();
          }
      }).each(function() {
          $(this).height(height);
      });
  });
});
