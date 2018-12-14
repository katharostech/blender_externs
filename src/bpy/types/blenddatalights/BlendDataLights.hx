package bpy.types.blenddatalights;
@:enum abstract Enum1(String) from String to String {
	var POINT : String = "POINT";
	var SUN : String = "SUN";
	var SPOT : String = "SPOT";
	var AREA : String = "AREA";
}/**
	Collection of lights
**/
@:pythonImport("bpy.types.BlendDataLights") extern class BlendDataLights {
	/**
		Add a new light to the main database
		@param name New name for the data-block — string, (never None)
		@param type Type, The type of texture to addPOINT Point, Omnidirectional point light source.SUN Sun, Constant direction parallel ray light source.SPOT Spot, Directional cone light source.AREA Area, Directional area light source. — enum in ['POINT', 'SUN', 'SPOT', 'AREA']
		
		@returns Light
	**/
	function new(name:String, type:bpy.types.blenddatalights.BlendDataLights.Enum1):bpy.types.light.Light;
	/**
		Remove a light from the current blendfile
		@param light Light to remove — Light, (never None)
		@param do_unlink Unlink all usages of this Light before deleting it (WARNING: will also delete objects instancing that light data) — boolean, (optional)
		@param do_id_user Decrement user counter of all datablocks used by this light data — boolean, (optional)
		@param do_ui_user Make sure interface does not reference this light data — boolean, (optional)
	**/
	function remove(light:bpy.types.light.Light, do_unlink:Bool, do_id_user:Bool, do_ui_user:Bool):Void;
	/**
		tag
		@param value Value — boolean
	**/
	function tag(value:Dynamic):Void;
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