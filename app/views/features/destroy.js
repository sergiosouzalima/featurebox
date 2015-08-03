$('.delete-feature').bind('ajax:success', function() {
  $(this).parent().parent().remove();
});
