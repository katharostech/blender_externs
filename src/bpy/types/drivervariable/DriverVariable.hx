package bpy.types.drivervariable;
@:enum abstract Enum1(String) from String to String {
	var SINGLE_PROP : String = "SINGLE_PROP";
	var TRANSFORMS : String = "TRANSFORMS";
	var ROTATION_DIFF : String = "ROTATION_DIFF";
	var LOC_DIFF : String = "LOC_DIFF";
}/**
	Variable from some source/target for driver relationship
**/
@:native("bpy.types.DriverVariable") extern class DriverVariable {
	/**
		Is this a valid name for a driver variable
		
		Type: boolean, default False, (readonly)
	**/
	var is_name_valid(default, never) : Bool;
	/**
		Name to use in scripted expressions/functions (no spaces or dots are allowed, and must start with a letter)
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Sources of input data for evaluating this variable
		
		Type: bpy_prop_collection of DriverTarget, (readonly)
	**/
	var targets(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Driver variable type
		
		Type: enum in [‘SINGLE_PROP’, ‘TRANSFORMS’, ‘ROTATION_DIFF’, ‘LOC_DIFF’], default ‘SINGLE_PROP’
	**/
	var type : bpy.types.drivervariable.DriverVariable.Enum1;
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