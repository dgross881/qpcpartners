// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

var the_list = {
	0:'Yangzi River Delta Region –– Shanghai, Suzhou, Nanjing, Hangzhou and Ningbo',
	1:'Northeast Region –– New York, Boston, Washington DC, Philadelphia and Chicago',
	2:'Accounting and law firms, as well as financial services providers',
	3:'Book-keeping and auditing',
	4:'Legal, financial and operational',
	5:'Regulatory advice for specific investment fields',
	6:'Facilitated through strategic partnerships',
	7:'Mediate multiple negotiable options',
	8:'Deals negotiated on individual basis',
	9:'Bringing Company expertise to bear',
	10:'Execution of Action Plan services'
};

var color_list = {
	0:'purple',
	1:'maroon',
	2:'red',
	3:'orange',
	4:'yellow',
	5:'green',
	6:'blue',
	7:'navy',
	8:'purple',
	9:'maroon',
	10:'red'
};

$(function() {
	$('#strategy ul li').hover(function(e) {
		var l = e.target.attributes.name.value;
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