$(function() {
	$(".error").hide();
  $(".alert").hide().fadeIn('slow', function() {
    $(this).delay(1000).fadeOut('slow');
  });
  $('.wodry').wodry({
    animation: 'rotateX',
    delay: 2000,
    animationDuration: 800
	});
});

