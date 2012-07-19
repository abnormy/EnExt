console.log('Loading a web page');
var page = new WebPage();
var url = 'file:///' + phantom.args[0] + '/Tests/js/runner.htm';
page.onConsoleMessage = function(msg) {
	if (msg && msg.indexOf("##jasmine.reportRunnerResults") !== -1) {
        phantom.exit();
    }
	console.log(msg);
};
page.open(url, function (status) {
	if(status !== 'success') {
		console.log('Unable to load suite');
		phantom.exit();
	}
});