// Utility functions

(function ($) {

	// force the language button to navigate to the same page
	// but in the appropriate language
	(function () {
		$('#lang').click(function (ev) {
			var loc = window.location;
			ev.preventDefault();
			if (loc.pathname.match(/\/cn\//gi)) {
				loc.href = loc.origin + loc.pathname.slice(3);
			} else {
				loc.href = loc.origin + "/cn" + loc.pathname;
		  }
		});
	}());	

	// add the 'active' class the 'li' element of active linked list anchor
	(function () {
		var selector = 'li a[href$="' + window.location.pathname + '"]';
		$(selector).parent().addClass('active');
	}());

}(jQuery))

