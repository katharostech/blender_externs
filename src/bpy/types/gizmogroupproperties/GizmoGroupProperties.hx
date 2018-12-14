package bpy.types.gizmogroupproperties;
/**
	Input properties of a Gizmo Group
**/
@:pythonImport("bpy.types.GizmoGroupProperties") extern class GizmoGroupProperties {
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