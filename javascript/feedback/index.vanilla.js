document.addEventListener('DOMContentLoaded', function () {
	console.log('Vanilla ready');
	var h1 = document.querySelector('body>h1');
	h1.setAttribute('style', 'color: blue;');
	var h2 = document.createElement('h2');
});