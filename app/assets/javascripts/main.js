$( document ).ready(function() {
	$('#login_modal').click(function(){$('#signinModal').modal('show');})
	$('#sign_up_modal').click(function(){$('#signupModal').modal('show');})
});
$('#login_modal').click(function(){$('#signinModal').modal('show');})
$('#sign_up_modal').click(function(){$('#signupModal').modal('show');})

$( document ).ready(function() {
	/* activate scrollspy menu  for search and  menu bar*/
	$('body').scrollspy({
		target: '#navbar-collapsible',
		offset: 50
	});

	/* smooth scrolling sections */
	$('a[href*=#]:not([href=#])').click(function() {
		if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
			var target = $(this.hash);
			target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
			if (target.length) {
				$('html,body').animate({
					scrollTop: target.offset().top - 50
				}, 1000);
				return false;
			}
		}
	});

	/* smooth scrolling for scroll to top */
	$('.scroll-top').click(function() {
		$('body,html').animate({
			scrollTop: 0
		}, 1000);
	})


	$('#myCarousel').carousel({
		interval: 3000
	});
	$('#myCarousel2').carousel({
		interval: 4050
	});
	$('#myCarousel3').carousel({
		interval: 5000
	});
	$('#myCarousel4').carousel({
		interval: 4500
	});
});