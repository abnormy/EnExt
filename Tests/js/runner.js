console.log('Loading a web page');
var page = new WebPage();
var url = phantom.args[0];
page.onConsoleMessage = function(msg) {console.log(msg);};
page.open(url, function (status) {
	if(status !== 'success') {
		console.log('Unable to load suite');
	}
	else {
		window.setTimeout(function() {
			phantom.exit();
		}, 200);
	}
});