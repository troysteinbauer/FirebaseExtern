package ;

/** https://www.firebase.com/docs/javascript/datasnapshot/ */
extern class FirebaseDataSnapshot {
	public function val():Dynamic;
	public function child(childPath:String):FirebaseDataSnapshot;
	public function forEach(childAction:FirebaseDataSnapshot->Bool):Bool;
	public function hasChild(childPath:String):Bool;
	public function hasChildren():Bool;
	public function name():String;
	public function numChildren():Int;
	public function ref():Firebase;
	public function getPriority():Dynamic;
	public function exportVal():Dynamic;
}