// Cheap and ugly 'fix' for navbar collapse bug
// menu still opens with animation, but closes abruptly
// NEEDS OPTIMIZATION!!
$('.navbar-toggle').on('click', function (e) {
	var target = $('.nav-collapse');
	if (target.hasClass('collapsing')) {
		target.addClass('collapse').addClass('in').removeClass('collapsing');
	} else {
		target.addClass('collapsing').toggle();
	}
});