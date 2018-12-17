package bpy.types.materialslot;
@:enum abstract Enum1(String) from String to String {
	var OBJECT : String = "OBJECT";
	var DATA : String = "DATA";
}/**
	Material slot in an object
**/
@:native("bpy.types.MaterialSlot") extern class MaterialSlot {
	/**
		Link material to object or the object’s data
		
		Type: enum in [‘OBJECT’, ‘DATA’], default ‘DATA’
	**/
	var link : bpy.types.materialslot.MaterialSlot.Enum1;
	/**
		Material data-block used by this material slot
		
		Type: Material
	**/
	var material : bpy.types.material.Material;
	/**
		Material slot name
		
		Type: string, default “”, (readonly, never None)
	**/
	var name(default, never) : String;
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