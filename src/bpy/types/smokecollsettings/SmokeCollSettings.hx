package bpy.types.smokecollsettings;
@:enum abstract Enum1(String) from String to String {
	var COLLSTATIC : String = "COLLSTATIC";
	var COLLRIGID : String = "COLLRIGID";
	var COLLANIMATED : String = "COLLANIMATED";
}/**
	Smoke collision settings
**/
@:pythonImport("bpy.types.SmokeCollSettings") extern class SmokeCollSettings {
	/**
		Collision type
		
		Type: enum in [‘COLLSTATIC’, ‘COLLRIGID’, ‘COLLANIMATED’], default ‘COLLSTATIC’
	**/
	var collision_type : bpy.types.smokecollsettings.SmokeCollSettings.Enum1;
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