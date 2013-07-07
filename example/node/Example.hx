/**
 * Haxe + Firebase + Node.js Example
 * untyped __js__ magic can be replaced for real Node.js externs of your choice
 **/
class Example {

	/** Main */
	public static function main():Void {
		var args:Array<String> = untyped __js__("process.argv");
		if (args.length != 3) {
			trace("Usage: node example.js <firebase_url>");
			return;
		}
		untyped __js__("var Firebase = require('firebase')");
		var root:Firebase = new Firebase(args[2]);
		root.on(Firebase.TYPE_VALUE, function(snapshot:FirebaseDataSnapshot, eventType:String):Void {
			trace(snapshot.val());
		});
	}
}