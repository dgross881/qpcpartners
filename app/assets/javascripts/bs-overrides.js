// Cheap 'fix' for navbar collapse bug (might be an isolated issue)
// $('.navbar-toggle')'s data-toggle attribute changed to 'true' from 'collapse',
// and mobile navbar toggle now controlled purely by javascript API, as follows:
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

// add the 'active' class the 'li' element of active linked list anchor
// basically a fallback, or go to, rather, instead of built in bootstrap method
(function ($) {
	var selector = 'li a[href$="' + window.location.pathname + '"]';
	$(selector).parent().addClass('active');
	$('.navbar-wrapper .container').on('click', 'a', function (e) {
		$(e.target).addClass('navigating');
	});
}(jQuery));