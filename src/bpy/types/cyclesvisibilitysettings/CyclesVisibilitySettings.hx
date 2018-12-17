package bpy.types.cyclesvisibilitysettings;
@:native("bpy.types.CyclesVisibilitySettings") extern class CyclesVisibilitySettings {
	/**
		Object visibility for camera rays
		
		Type: boolean, default True
	**/
	var camera : Bool;
	/**
		Object visibility for diffuse reflection rays
		
		Type: boolean, default True
	**/
	var diffuse : Bool;
	/**
		Object visibility for glossy reflection rays
		
		Type: boolean, default True
	**/
	var glossy : Bool;
	/**
		Object visibility for volume scatter rays
		
		Type: boolean, default True
	**/
	var scatter : Bool;
	/**
		Object visibility for shadow rays
		
		Type: boolean, default True
	**/
	var shadow : Bool;
	/**
		Object visibility for transmission rays
		
		Type: boolean, default True
	**/
	var transmission : Bool;
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