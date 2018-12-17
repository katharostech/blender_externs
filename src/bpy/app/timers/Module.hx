package bpy.app.timers;
/**
	Application Timers (bpy.app.timers)
**/
@:pythonImport("bpy.app.timers") extern class Module {
	/**
		Check if this function is registered as a timer.
		@param function Function to check. — int
		
		@returns bool
	**/
	static function is_registered(function:Int):Dynamic;
	/**
		Add a new function that will be called after the specified amount of seconds.
		The function gets no arguments and is expected to return either None or a float.
		If None is returned, the timer will be unregistered.
		A returned number specifies the delay until the function is called again.
		functools.partial can be used to assign some parameters.
		@param function The function that should called. — Callable[[], Union[float, None]]
		@param first_interval Seconds until the callback should be called the first time. — float
		@param persistent Don’t remove timer when a new file is loaded. — bool
	**/
	static function register(function:Dynamic, first_interval:Float, persistent:Dynamic):Void;
	/**
		Unregister timer.
		@param function Function to unregister. — function
	**/
	static function unregister(function:Dynamic):Void;
}