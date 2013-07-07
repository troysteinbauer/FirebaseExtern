(function () { "use strict";
var Example = function() { }
Example.main = function() {
	var args = process.argv;
	if(args.length != 3) {
		console.log("Usage: node example.js <firebase_url>");
		return;
	}
	var Firebase = require('firebase');
	var root = new Firebase(args[2]);
	root.on("value",function(snapshot,eventType) {
		console.log(snapshot.val());
	});
}
Example.main();
})();
