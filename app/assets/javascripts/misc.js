
function centerTheTitlesInServicesPageBlueBox() {
	if (window.innerWidth < 768) $('.col-lg-5.text-right').addClass('text-left').removeClass('text-right')
	else $('.col-lg-5.text-left').removeClass('text-left').addClass('text-right')
}
window.addEventListener('resize', centerTheTitlesInServicesPageBlueBox);
centerTheTitlesInServicesPageBlueBox();
	