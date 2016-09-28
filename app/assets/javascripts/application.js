//= require jquery
//= require jquery_ujs
//= require jquery.cookie
//= require phrasing
//= require bootstrap/dropdown
//= require bootstrap/transition
//= require bootstrap/carousel
//= require bootstrap/collapse
//= require bootstrap/tab
//= require bs_overrides
//= require utils.js
//= require misc.js

$(function() {
  $(document).on('click', 'a', function(e) {
    if ($(this).find('.phrasable_on').length) {
      if (e.preventDefault()) {
        e.preventDefault();
      } else if (window.event) {
        window.event.returnValue = false;
      } else {
        return false;
      }
    }
  });
});
