package bpy.types.struct;
/**
	RNA structure definition
**/
@:pythonImport("bpy.types.Struct") extern class Struct {
	/**
		Struct definition this is derived from
		
		Type: Struct, (readonly)
	**/
	var base(default, never) : bpy.types.struct.Struct;
	/**
		Description of the Struct’s purpose
		
		Type: string, default “”, (readonly, never None)
	**/
	var description(default, never) : String;
	/**
		
		
		Type: bpy_prop_collection of Function, (readonly)
	**/
	var functions(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Unique name used in the code and scripting
		
		Type: string, default “”, (readonly, never None)
	**/
	var identifier(default, never) : String;
	/**
		Human readable name
		
		Type: string, default “”, (readonly, never None)
	**/
	var name(default, never) : String;
	/**
		Property that gives the name of the struct
		
		Type: StringProperty, (readonly)
	**/
	var name_property(default, never) : bpy.types.stringproperty.StringProperty;
	/**
		Struct in which this struct is always nested, and to which it logically belongs
		
		Type: Struct, (readonly)
	**/
	var nested(default, never) : bpy.types.struct.Struct;
	/**
		Properties in the struct
		
		Type: bpy_prop_collection of Property, (readonly)
	**/
	var properties(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Tags that properties can use to influence behavior
		
		Type: bpy_prop_collection of EnumPropertyItem, (readonly)
	**/
	var property_tags(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Translation context of the struct’s name
		
		Type: string, default “”, (readonly, never None)
	**/
	var translation_context(default, never) : String;
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