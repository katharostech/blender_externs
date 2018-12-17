package bpy.types.blenddatacurves;
@:enum abstract Enum1(String) from String to String {
	var CURVE : String = "CURVE";
	var SURFACE : String = "SURFACE";
	var FONT : String = "FONT";
}/**
	Collection of curves
**/
@:native("bpy.types.BlendDataCurves") extern class BlendDataCurves {
	/**
		Add a new curve to the main database
		@param name New name for the data-block — string, (never None)
		@param type Type, The type of curve to add — enum in ['CURVE', 'SURFACE', 'FONT']
		
		@returns Curve
	**/
	function pyNew(name:String, type:bpy.types.blenddatacurves.BlendDataCurves.Enum1):bpy.types.curve.Curve;
	/**
		Remove a curve from the current blendfile
		@param curve Curve to remove — Curve, (never None)
		@param do_unlink Unlink all usages of this curve before deleting it (WARNING: will also delete objects instancing that curve data) — boolean, (optional)
		@param do_id_user Decrement user counter of all datablocks used by this curve data — boolean, (optional)
		@param do_ui_user Make sure interface does not reference this curve data — boolean, (optional)
	**/
	function remove(curve:Dynamic, do_unlink:Bool, do_id_user:Bool, do_ui_user:Bool):Void;
	/**
		tag
		@param value Value — boolean
	**/
	function tag(value:Bool):Void;
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