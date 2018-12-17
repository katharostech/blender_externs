package bpy.types.maskparent;
@:enum abstract Enum1(String) from String to String {
	var MOVIECLIP : String = "MOVIECLIP";
}@:enum abstract Enum2(String) from String to String {
	var POINT_TRACK : String = "POINT_TRACK";
	var PLANE_TRACK : String = "PLANE_TRACK";
}/**
	Parenting settings for masking element
**/
@:native("bpy.types.MaskParent") extern class MaskParent {
	/**
		ID-block to which masking element would be parented to or to it’s property
		
		Type: ID
	**/
	var id : bpy.types.id.ID;
	/**
		Type of ID-block that can be used
		
		Type: enum in [‘MOVIECLIP’], default ‘MOVIECLIP’
	**/
	var id_type : bpy.types.maskparent.MaskParent.Enum1;
	/**
		Name of parent object in specified data-block to which parenting happens
		
		Type: string, default “”, (never None)
	**/
	var parent : String;
	/**
		Name of parent sub-object in specified data-block to which parenting happens
		
		Type: string, default “”, (never None)
	**/
	var sub_parent : String;
	/**
		Parent Type
		
		Type: enum in [‘POINT_TRACK’, ‘PLANE_TRACK’], default ‘POINT_TRACK’
	**/
	var type : bpy.types.maskparent.MaskParent.Enum2;
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