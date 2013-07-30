// Cheap and ugly 'fix' for navbar collapse bug (might be an isolated issue)
// $('.navbar-toggle')'s data-toggle attribute changed to 'true' from 'collapse',
// and mobile navbar toggle now controlled purely by javascript API, as follows:
(function () {
	var open = false;
	$('.navbar-toggle').click(function () {
		if (!open) {
			$('.nav-collapse').collapse('show');
			open = true;
		} else {
			$('.nav-collapse').collapse('hide');
			open = false;
		}
	});
}());