package bpy.types.operatoroptions;
/**
	Runtime options
**/
@:pythonImport("bpy.types.OperatorOptions") extern class OperatorOptions {
	/**
		True when the cursor is grabbed
		
		Type: boolean, default False, (readonly)
	**/
	var is_grab_cursor(default, never) : Bool;
	/**
		True when invoked (even if only the execute callbacks available)
		
		Type: boolean, default False, (readonly)
	**/
	var is_invoke(default, never) : Bool;
	/**
		True when run from the redo panel
		
		Type: boolean, default False, (readonly)
	**/
	var is_repeat(default, never) : Bool;
	/**
		Enable to use the region under the cursor for modal execution
		
		Type: boolean, default False
	**/
	var use_cursor_region : Bool;
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