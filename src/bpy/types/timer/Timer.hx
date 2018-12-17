package bpy.types.timer;
/**
	Window event timer
**/
@:native("bpy.types.Timer") extern class Timer {
	/**
		Time since last step in seconds
		
		Type: float in [-inf, inf], default 0.0, (readonly)
	**/
	var time_delta(default, never) : Float;
	/**
		Time since last step in seconds
		
		Type: float in [-inf, inf], default 0.0, (readonly)
	**/
	var time_duration(default, never) : Float;
	/**
		
		
		Type: float in [-inf, inf], default 0.0, (readonly)
	**/
	var time_step(default, never) : Float;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns bpy.types.Struct subclass
	**/
	static function bl_rna_get_subclass(id:String):bpy.types.struct.Struct;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns type
	**/
	static function bl_rna_get_subclass_py(id:String):Dynamic;
}