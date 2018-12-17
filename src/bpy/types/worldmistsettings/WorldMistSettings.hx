package bpy.types.worldmistsettings;
@:enum abstract Enum1(String) from String to String {
	var QUADRATIC : String = "QUADRATIC";
	var LINEAR : String = "LINEAR";
	var INVERSE_QUADRATIC : String = "INVERSE_QUADRATIC";
}/**
	Mist settings for a World data-block
**/
@:native("bpy.types.WorldMistSettings") extern class WorldMistSettings {
	/**
		Distance over which the mist effect fades in
		
		Type: float in [0, inf], default 0.0
	**/
	var depth : Float;
	/**
		Type of transition used to fade mist
		
		Type: enum in [‘QUADRATIC’, ‘LINEAR’, ‘INVERSE_QUADRATIC’], default ‘QUADRATIC’
	**/
	var falloff : bpy.types.worldmistsettings.WorldMistSettings.Enum1;
	/**
		Control how much mist density decreases with height
		
		Type: float in [0, 100], default 0.0
	**/
	var height : Float;
	/**
		Overall minimum intensity of the mist effect
		
		Type: float in [0, 1], default 0.0
	**/
	var intensity : Float;
	/**
		Starting distance of the mist, measured from the camera
		
		Type: float in [0, inf], default 0.0
	**/
	var start : Float;
	/**
		Occlude objects with the environment color as they are further away
		
		Type: boolean, default False
	**/
	var use_mist : Bool;
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