package bpy.types.objectbase;
/**
	An object instance in a render layer
**/
@:pythonImport("bpy.types.ObjectBase") extern class ObjectBase {
	/**
		Object this base links to
		
		Type: Object, (readonly)
	**/
	var object(default, never) : bpy.types.object.Object;
	/**
		Object base selection state
		
		Type: boolean, default False
	**/
	var select : Bool;
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