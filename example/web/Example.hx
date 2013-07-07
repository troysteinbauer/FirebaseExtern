/**
 * Haxe + Firebase + Javascript Web Example
 **/
import js.Browser;
import js.html.InputElement;
import js.html.ButtonElement;
import js.html.Element;
class Example {

	/** Main */
	public static function main() {
		var input:InputElement = cast(Browser.document.getElementById('input'), InputElement);
		var button:ButtonElement = cast(Browser.document.getElementById('button'), ButtonElement);
		var output:Element = Browser.document.getElementById('output');
		button.onclick = function(e):Void {
			button.disabled = true;
			input.disabled = true;
			var url:String = input.value;
			var root:Firebase = new Firebase(url);
			root.on(Firebase.TYPE_VALUE, function(snapshot:FirebaseDataSnapshot, eventType:String):Void {
				var json:String = haxe.Json.stringify(snapshot.val());
				trace(json);
				output.innerHTML = '<li>'+json+'</li>'+output.innerHTML;
			});
		};
	}
}