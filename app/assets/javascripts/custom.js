$(function() {
	$(".error").hide();
  $(".alert").hide().fadeIn('slow', function() {
    $(this).delay(1000).fadeOut('slow');
  });
});