// kill the address bar in mobile Safari (iOS < 7.0)
window.addEventListener("load",function() {
	setTimeout(function(){
		window.scrollTo(0, 1);
	}, 0);
});

// Utility functions

(function ($) {

	// force the language button to navigate to the same page
	// but in the opposite language
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

}(jQuery))

