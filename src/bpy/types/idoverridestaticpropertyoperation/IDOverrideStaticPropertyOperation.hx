package bpy.types.idoverridestaticpropertyoperation;
@:enum abstract Enum1(String) from String to String {
	var MANDATORY : String = "MANDATORY";
	var LOCKED : String = "LOCKED";
}@:enum abstract Enum2(String) from String to String {
	var NOOP : String = "NOOP";
	var REPLACE : String = "REPLACE";
	var DIFF_ADD : String = "DIFF_ADD";
	var DIFF_SUB : String = "DIFF_SUB";
	var FACT_MULTIPLY : String = "FACT_MULTIPLY";
	var INSERT_AFTER : String = "INSERT_AFTER";
	var INSERT_BEFORE : String = "INSERT_BEFORE";
}/**
	Description of an override operation over an overridden property
**/
@:pythonImport("bpy.types.IDOverrideStaticPropertyOperation") extern class IDOverrideStaticPropertyOperation {
	/**
		Optional flags (NOT USED)
		
		Type: enum in [‘MANDATORY’, ‘LOCKED’], default ‘MANDATORY’, (readonly)
	**/
	var flag(default, never) : bpy.types.idoverridestaticpropertyoperation.IDOverrideStaticPropertyOperation.Enum1;
	/**
		What override operation is performed
		
		Type: enum in [‘NOOP’, ‘REPLACE’, ‘DIFF_ADD’, ‘DIFF_SUB’, ‘FACT_MULTIPLY’, ‘INSERT_AFTER’, ‘INSERT_BEFORE’], default ‘REPLACE’, (readonly)
	**/
	var operation(default, never) : bpy.types.idoverridestaticpropertyoperation.IDOverrideStaticPropertyOperation.Enum2;
	/**
		Used to handle insertions into collection
		
		Type: int in [-1, inf], default -1, (readonly)
	**/
	var subitem_local_index(default, never) : Int;
	/**
		Used to handle insertions into collection
		
		Type: string, default “”, (readonly, never None)
	**/
	var subitem_local_name(default, never) : String;
	/**
		Used to handle insertions into collection
		
		Type: int in [-1, inf], default -1, (readonly)
	**/
	var subitem_reference_index(default, never) : Int;
	/**
		Used to handle insertions into collection
		
		Type: string, default “”, (readonly, never None)
	**/
	var subitem_reference_name(default, never) : String;
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