
// Utility functions

(function ($) {

	function getLangURI (loc) {
		var check = window.location.pathname.match(/cn/i);
		if (check) {
			return loc.href.split('/cn').join('')
		} else {
			return loc.origin + '/cn' + loc.pathname
		}
	}

	// force the language button to navigate to the same page
	// but in the opposite language
	$('#lang').click(function (ev) {
		var loc = window.location;
		ev.preventDefault();
		loc.href = getLangURI(loc);
	});	

}(jQuery))

