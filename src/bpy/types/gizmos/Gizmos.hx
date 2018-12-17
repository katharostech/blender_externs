package bpy.types.gizmos;
/**
	Collection of gizmos
**/
@:native("bpy.types.Gizmos") extern class Gizmos {
	/**
		Add gizmo
		@param type Gizmo identifier — string, (never None)
		
		@returns Gizmo
	**/
	function pyNew(type:String):bpy.types.gizmo.Gizmo;
	/**
		Delete gizmo
		@param gizmo New gizmo — Gizmo, (never None)
	**/
	function remove(gizmo:bpy.types.gizmo.Gizmo):Void;
	/**
		Delete all gizmos
	**/
	function clear():Void;
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