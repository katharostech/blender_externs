package bpy.types.studiolights;
@:enum abstract Enum1(String) from String to String {
	var STUDIO : String = "STUDIO";
	var WORLD : String = "WORLD";
	var MATCAP : String = "MATCAP";
}/**
	Collection of studio lights
**/
@:native("bpy.types.StudioLights") extern class StudioLights {
	/**
		Load studiolight from file
		@param path File Path, File path where the studio light file can be found — string, (never None)
		@param type Type, The type for the new studio light — enum in ['STUDIO', 'WORLD', 'MATCAP']
		
		@returns StudioLight
	**/
	function load(path:String, type:bpy.types.studiolights.StudioLights.Enum1):bpy.types.studiolight.StudioLight;
	/**
		Create studiolight from default lighting
		@param path Path, Path to the file that will contain the lighing info (without extension) — string, (never None)
		
		@returns StudioLight
	**/
	function pyNew(path:String):bpy.types.studiolight.StudioLight;
	/**
		Remove a studio light
		@param studio_light The studio light to remove — StudioLight, (never None)
	**/
	function remove(studio_light:bpy.types.studiolight.StudioLight):Void;
	/**
		Refresh Studio Lights from disk
	**/
	function refresh():Void;
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