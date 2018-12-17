package bpy.types.function;
/**
	RNA function definition
**/
@:native("bpy.types.Function") extern class Function {
	/**
		Description of the Function’s purpose
		
		Type: string, default “”, (readonly, never None)
	**/
	var description(default, never) : String;
	/**
		Unique name used in the code and scripting
		
		Type: string, default “”, (readonly, never None)
	**/
	var identifier(default, never) : String;
	/**
		Function is registered as callback as part of type registration
		
		Type: boolean, default False, (readonly)
	**/
	var is_registered(default, never) : Bool;
	/**
		Function is optionally registered as callback part of type registration
		
		Type: boolean, default False, (readonly)
	**/
	var is_registered_optional(default, never) : Bool;
	/**
		Parameters for the function
		
		Type: bpy_prop_collection of Property, (readonly)
	**/
	var parameters(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Function does not pass its self as an argument (becomes a static method in python)
		
		Type: boolean, default False, (readonly)
	**/
	var use_self(default, never) : Bool;
	/**
		Function passes its self type as an argument (becomes a class method in python if use_self is false)
		
		Type: boolean, default False, (readonly)
	**/
	var use_self_type(default, never) : Bool;
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