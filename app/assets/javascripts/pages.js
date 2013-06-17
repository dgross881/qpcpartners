// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

// 'better' requestAnimationFrame polyfill c/o: http://www.makeitgo.ws/articles/animationframe/
// this was found after experiencing significant frustration with the same issue...
(function() {
  var lastFrame, method, now, queue, requestAnimationFrame, timer, vendor, _i, _len, _ref, _ref1;
  method = 'native';
  now = Date.now || function() {
    return new Date().getTime();
  };
  requestAnimationFrame = window.requestAnimationFrame;
  _ref = ['webkit', 'moz', 'o', 'ms'];
  for (_i = 0, _len = _ref.length; _i < _len; _i++) {
    vendor = _ref[_i];
    if (!(requestAnimationFrame != null)) {
      requestAnimationFrame = window[vendor + "RequestAnimationFrame"];
      // throw in polyfill for cancelAnimationFrame while we're at it...
      cancelAnimationFrame = window[vendor + 'CancelAnimationFrame'] || 
      												 window[vendor + 'CancelAnimationFrame'];
    }
  }
  if (!(requestAnimationFrame != null)) {
    method = 'timer';
    lastFrame = 0;
    queue = timer = null;
    requestAnimationFrame = function(callback) {
      var fire, nextFrame, time;
      if (queue != null) {
        queue.push(callback);
        return;
      }
      time = now();
      nextFrame = Math.max(0, 16.66 - (time - lastFrame));
      queue = [callback];
      lastFrame = time + nextFrame;
      fire = function() {
        var cb, q, _j, _len1;
        q = queue;
        queue = null;
        for (_j = 0, _len1 = q.length; _j < _len1; _j++) {
          cb = q[_j];
          cb(lastFrame);
        }
      };
      timer = setTimeout(fire, nextFrame);
    };
  }
  requestAnimationFrame(function(time) {
    var _ref1;
    if ((((_ref1 = window.performance) != null ? _ref1.now : void 0) != null) && time < 1e12) {
      requestAnimationFrame.now = function() {
        return window.performance.now();
      };
      requestAnimationFrame.method = 'native-highres';
    } else {
      requestAnimationFrame.now = now;
    }
  });
  requestAnimationFrame.now = ((_ref1 = window.performance) != null ? _ref1.now : void 0) != null ? (function() {
    return window.performance.now();
  }) : now;
  requestAnimationFrame.method = method;
  window.requestAnimationFrame = requestAnimationFrame;
})();


jQuery(function($) {

	var the_list = {
		0:'Yangzi River Delta Region –– Shanghai, Suzhou, Nanjing, Hangzhou and Ningbo',
		1:'Northeast Region –– New York, Boston, Washington DC, Philadelphia and Chicago',
		2:'Accounting and law firms, as well as financial services providers',
		3:'Book-keeping and auditing',
		4:'Legal, financial and operational',
		5:'Regulatory advice for specific investment fields',
		6:'Facilitated through strategic partnerships',
		7:'360º due diligence',
		8:'Deals negotiated on individual basis',
		9:'Guide clients to successful agreement',
		10:'Execution of Action Plan services'
	},

	color_list = {
		0:'red',
		1:'blue',
		2:'red',
		3:'blue',
		4:'red',
		5:'blue',
		6:'red',
		7:'blue',
		8:'red',
		9:'blue',
		10:'red'
	};

	$('#strategy ul li').hover(function(e) {
		var l = e.target ? e.target.attributes.name.value : e.targetSrc.name.value;
		$('h2.right').text(the_list[l]);
		$(this).css('background-color', color_list[l]);
	}, function() {
		$('h2.right').text('Comprehensive Action Plans');
		$(this).css('background-color', "white");
	}).focus(function(e) {
		var l = e.target.attributes.name.value;
		$('h2.right').text(the_list[l]);
		$(this).css('background-color', color_list[l]);
	}, function() {
		$('h2.right').text('Comprehensive Action Plans');
		$(this).css('background-color', "white");
	});
	$('#services_list ul li').hover(function(e) {
		var l = e.target.attributes.name.value;
		$('h2.right').text(the_list[l]);
		$(this).css('background-color', color_list[l]);
	}, function() {
		$('h2.right').text('Comprehensive Action Plans');
		$(this).css('background-color', 'black');
	}).focus(function(e) {
		var l = e.target.attributes.name.value;
		$('h2.right').text(the_list[l]);
		$(this).css('background-color', color_list[l]);
	}, function() {
		$('h2.right').text('Comprehensive Action Plans');
		$(this).css('background-color', 'black');
	});
});