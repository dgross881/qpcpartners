// ##########################################################
// #####################		Slider   ########################
// ##########################################################
window.now = function() { return Date.now(); };

(function Slider() {
	if (document.getElementById('slider')) {
		var slides = document.getElementById('slider'),
		slideArray = slides.children,
		aSlides = [],
		cur = {index: 0, opacity: 1},
		nex = {index: 1, opacity: 0},
		time = {interval: 8000, duration: 2000, progress: 0, start: 0, last: 0, delta: 0},
		ids = {timer: 0, raf: 0},
		rAF = window.requestAnimationFrame;

		(function() {
			var i, j;
			for (i = 0, j = slideArray.length - 1; j > -1; i += 1, j -= 1) {
				aSlides.push(slideArray[j]);
				aSlides[i].style.opacity = (i > 0) ? 0 : 1;
				aSlides[i].style.display = (i > 0) ? "none" : "inline-block";
			}
		}());

		var fade = function( stamp ) {
			var current = aSlides[cur.index],
			next = aSlides[nex.index];
			
			if (time.start === 0) {
				time.start = +window.now();
				next.style.display = "inline-block";    // make the next slide visible, not just transparent.
			} else {
				time.start = time.start;
			}
			stamp = +window.now();

			time.progress = stamp - time.start;
			
			next.style.opacity = Math.pow(time.progress / time.duration, .4);
			current.style.opacity = 1 - Math.pow(time.progress / time.duration, .4);

			check: if (time.progress > time.duration) {
				ids.timer = window.setTimeout(fade, time.interval);
				current.style.display = "none";
				cur.index = (cur.index === aSlides.length - 1) ? 0 : cur.index + 1;
				nex.index = (cur.index === aSlides.length - 1) ? 0 : nex.index + 1;
				time.start = 0; time.progress = 0;
				cancelAnimationFrame(ids.raf);
				break check;
			} else {
				ids.raf = rAF(fade, slides);
			}
		}

		ids.timer = window.setTimeout(fade, time.interval);

	}
}());
