package ;

/** https://www.firebase.com/docs/javascript/firebase/ */
extern class Firebase {
	public static inline var TYPE_VALUE:String = "value";
	public static inline var TYPE_CHILD_ADDED:String = "child_added";
	public static inline var TYPE_CHILD_CHANGED:String = "child_changed";
	public static inline var TYPE_CHILD_REMOVED:String = "child_removed";
	public static inline var TYPE_CHILD_MOVED:String = "child_moved";

	public function new(firebaseURL:String):Void;
	public function auth(authToken:String, ?onComplete:Dynamic->Dynamic->Void, ?onCancel:Dynamic->Void):Void; // Dynamic?
	public function unauth():Void;
	public function child(childPath:String):Firebase;
	public function parent():Firebase;
	public function root():Firebase;
	public function name():String;
	public function toString():String;
	public function set(value:Dynamic, ?onComplete:Dynamic->Void):Void; // Dynamic Error object
	public function update(value:Dynamic, ?onComplete:Dynamic->Void):Void; // Dynamic Error object
	public function remove(?onComplete:Dynamic->Void):Void; // Dynamic Error object
	public function push(value:Dynamic, ?onComplete:Dynamic->Void):Void; // Dynamic Error object
	public function setWithPriority(value:Dynamic, priority:Dynamic, ?onComplete:Dynamic->Void):Void; // Dynamic Error object
	public function setPriority(priority:Dynamic, ?onComplete:Dynamic->Void):Void; // Dynamic Error object
	public function transaction(updateFunction:Dynamic->Dynamic, ?onComplete:Dynamic->Void, ?applyLocally:Bool):Void;
	public function on(eventType:String, successCallback:FirebaseDataSnapshot->String->Void, ?cancelCallback:Void->Void, ?context:Dynamic):Void;
	public function off(?eventType:String, ?successCallback:FirebaseDataSnapshot->String->Void, ?context:Dynamic):Void;
	public function once(eventType:String, successCallback:FirebaseDataSnapshot->String->Void, ?failureCallback:Void->Void, ?context:Dynamic):Void;
	public function limit(limit:Int):Firebase;
	public function startAt(?priority:Dynamic, ?name:String):Firebase;
  	public function endAt(?priority:Dynamic, ?name:String):Void;
	public function onDisconnect():FirebaseDisconnect;
}