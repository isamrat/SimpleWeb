$( document ).ready(function() {
    $('.home').click(function() {
    	$('.nav-home').removeClass('active');
    	$('.home').addClass('active');
    });
    $('.about').click(function() {
    	$('.nav-home').removeClass('active');
    	$('.about').addClass('active');
    });
    $('.users').click(function() {
    	$('.nav-home').removeClass('active');
    	$('.users').addClass('active');
    });
    $('.contact').click(function() {
    	$('.nav-home').removeClass('active');
    	$('.contact').addClass('active');
    });
});