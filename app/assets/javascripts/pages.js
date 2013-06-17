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

// add a Timers property (obj) to the global element for storing timers
window.Timers = {};

jQuery(function($) {

	var the_list = {
		0:['Investor Road Shows', 'Yangzi River Delta Region –– Shanghai, Suzhou, Nanjing, Hangzhou and Ningbo'],
		1:['Investment Targeting', 'Northeast Region –– New York, Boston, Washington DC, Philadelphia and Chicago'],
		2:['Strategic Partnerships', 'Accounting and law firms, as well as financial services providers'],
		3:['Due Diligence', 'Book-keeping and auditing'],
		4:['Government Regulations', 'Legal, financial and operational'],
		5:['Financial Services', 'Regulatory advice for specific investment fields'],
		6:['Legal Services','Facilitated through strategic partnerships'],
		7:['Deal Structuring', '360º due diligence'],
		8:['Negotiations','Deals negotiated on individual basis'],
		9:['Deal Finalization', 'Guide clients to successful agreement'],
		10:['Implementation', 'Execution of Action Plan services']
	},
  the_list_cn = {
    0:['客户/投资者巡回指导', '上海办事处在上海，杭州，苏州进行巡回指导，继而扩展到更多中国的二线城市'],
    1:['项目目标', '纽约办公室将集中发掘在美国东北部的三角:波士顿 - 华盛顿-芝加哥及相连地区范围内所有领域的潜在机会'],
    2:['战略合作伙伴关联', '已在美国确认第三方会计及律师事务所将对机遇提供的精确观点'],
    3:['尽职监督', '360º尽职监督'],
    4:['政府监管', '将从三方面入手，法律，财务和运营'],
    5:['财务服务', 'QPC将对部分特定业务或投资领域提供监管建议'],
    6:['司法咨询','QPC将进行多方促成，并为谈判创造各种机会'],
    7:['交易结构', '360º尽职监督'],
    8:['谈判','QPC将为个人提供谈判能力'],
    9:['并购交易', 'QPC的核心竞争力'],
    10:['执行', '谈判结束后，QPC为客户提供服务以执行交易']
  },
	color_list = { 0:'#eb001b', 1:"#044a90" };

  if (document.location.pathname.match(/^\/cn/)) {

    var timers = window.Timers;

    $('#strategy ul li').hover(function(e) {
      var l = e.target.attributes.name.value, c = parseInt(l, 10) % 2;
      $('h2.right').text(the_list_cn[l][1]);
      $(this).css('background-color', color_list[c]);
    }, function() {
      $('h2.right').text('Comprehensive Action Plans');
      $(this).css('background-color', "white");
    }).focus(function(e) {
      $('h2.right').text(the_list_cn[l][1]);
      $(this).css('background-color', color_list[c]);
    }, function() {
      $('h2.right').text('Comprehensive Action Plans');
      $(this).css('background-color', "white");
    });
    // defines mouseover and focus events
    $('#services_list ul li').hover(function(e) {
      var l = e.target.attributes.name.value, 
      c = parseInt(l, 10) % 2, 
      el = $(this);
      el.css({
        backgroundColor: color_list[c],
        width: "94rem"
      });
      if (the_list_cn[l][1].length < 17) { el.text(the_list_cn[l][1]); }
      else { 
        timers.hover = window.setTimeout(function() { 
          el.text(the_list_cn[l][1]);
        }, 180);
      }
    }, 
    function(e) {
      if (timers.hover) { window.clearTimeout(timers.hover); }
      var l = e.target.attributes.name.value, 
      c = parseInt(l, 10) % 2,
      aLis = $('#services_list ul')[0].children,
      el = $(aLis[l]);
      el.text(the_list_cn[l][0]).
      css({
        backgroundColor: "black",
        width: "32.4rem"
      });
    });
  } else {
    var timers = window.Timers;

    $('#strategy ul li').hover(function(e) {
      var l = e.target.attributes.name.value, c = parseInt(l, 10) % 2;
      $('h2.right').text(the_list[l]);
      $(this).css('background-color', color_list[c]);
    }, function() {
      $('h2.right').text('Comprehensive Action Plans');
      $(this).css('background-color', "white");
    }).focus(function(e) {
      $('h2.right').text(the_list[l]);
      $(this).css('background-color', color_list[c]);
    }, function() {
      $('h2.right').text('Comprehensive Action Plans');
      $(this).css('background-color', "white");
    });

    // defines mouseover and focus events
    $('#services_list ul li').hover(function(e) {
      var l = e.target.attributes.name.value, 
      c = parseInt(l, 10) % 2, 
      el = $(this);
      el.css({
        backgroundColor: color_list[c],
        width: "94rem"
      });
      if (the_list[l][1].length < 35) { el.text(the_list[l][1]); }
      else { 
        timers.hover = window.setTimeout(function() { 
          el.text(the_list[l][1]);
        }, 180);
      }
    }, 
    function(e) {
      if (timers.hover) { window.clearTimeout(timers.hover); }
      var l = e.target.attributes.name.value, 
      c = parseInt(l, 10) % 2,
      aLis = $('#services_list ul')[0].children,
      el = $(aLis[l]);
      el.text(the_list[l][0]).
      css({
        backgroundColor: "black",
        width: "32.4rem"
      });
    });
  }


// link the flag to the appropriate page in the desired language
  $('.language a').click(function(ev) {
    var loc = location, path;
    if (loc.pathname.search(/\/cn/) === 0) {
      ev.preventDefault();
      loc.href = loc.origin + loc.pathname.slice(3);
    } else {
      ev.preventDefault();
      path = loc.pathname;
      loc.href = loc.origin + "/cn" + path;
    }
  });
});