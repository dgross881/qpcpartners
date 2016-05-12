(function ($) {
	var open = false;
	$('.navbar-toggle').click(function () {
		if (!open) {
			$('.nav-collapse').collapse('show'); open = true;
		} else {
			$('.nav-collapse').collapse('hide'); open = false;
		}
	});
}(jQuery));

(function ($) {
	var selector = 'li a[href$="' + window.location.pathname + '"]';
	$(selector).parent().addClass('active');
	$('.navbar-wrapper .container').on('click', 'a', function (e) {
		$(e.target).addClass('navigating');
	});
}(jQuery));
