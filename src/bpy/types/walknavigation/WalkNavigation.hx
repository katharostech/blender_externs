package bpy.types.walknavigation;
/**
	Walk navigation settings
**/
@:pythonImport("bpy.types.WalkNavigation") extern class WalkNavigation {
	/**
		Maximum height of a jump
		
		Type: float in [0.1, 100], default 0.0
	**/
	var jump_height : Float;
	/**
		Speed factor for when looking around, high values mean faster mouse movement
		
		Type: float in [0.01, 10], default 0.0
	**/
	var mouse_speed : Float;
	/**
		Interval of time warp when teleporting in navigation mode
		
		Type: float in [0, 10], default 0.0
	**/
	var teleport_time : Float;
	/**
		Walk with gravity, or free navigate
		
		Type: boolean, default False
	**/
	var use_gravity : Bool;
	/**
		Reverse the vertical movement of the mouse
		
		Type: boolean, default False
	**/
	var use_mouse_reverse : Bool;
	/**
		View distance from the floor when walking
		
		Type: float in [0, 1000], default 0.0
	**/
	var view_height : Float;
	/**
		Base speed for walking and flying
		
		Type: float in [0.01, 100], default 0.0
	**/
	var walk_speed : Float;
	/**
		Multiplication factor when using the fast or slow modifiers
		
		Type: float in [0.01, 10], default 0.0
	**/
	var walk_speed_factor : Float;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns bpy.types.Struct subclass
	**/
	static function bl_rna_get_subclass(id:Dynamic):bpy.types.struct.Struct;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns type
	**/
	static function bl_rna_get_subclass_py(id:Dynamic):Dynamic;
}