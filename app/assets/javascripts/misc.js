// self-explanatory me thinks, though decidedly overkill and expensive
// they need to float left when in mobile view, and right otherwise
function fixServicePageBlueBoxTitles () {
	if (window.innerWidth < 1000) {
		if ($('.col-lg-5.text-right')) {
			$('.col-lg-5').removeClass('text-right').addClass('text-left')
		} 
	} else if ($('.col-lg-5.text-left')) {
		$('.col-lg-5').removeClass('text-left').addClass('text-right')
	}
}
window.addEventListener('resize', fixServicePageBlueBoxTitles);
fixServicePageBlueBoxTitles();