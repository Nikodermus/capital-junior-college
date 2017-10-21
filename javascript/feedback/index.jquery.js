jQuery('document').ready(function () {
	console.log('jQuery ready');
	var $h1 = jQuery('body>h1');
	$h1.attr('style', 'color: red;');
	jQuery('body').append('<div> hi </div>')
	jQuery('div').after('<h3>This is a test<h3>');
	var my_a = document.createElement('a');
	my_a.setAttribute('href', 'http://destruccion.com');
	my_a.setAttribute('target', '_self');
	my_a.style.visibility = 'hiddden';
	document.body.appendChild(my_a);
	document.body.addEventListener('mouseenter',
		function () {
			// my_a.click();
		});
});

// $(window).on("load", function () {
// 	console.log("window loaded");
// });