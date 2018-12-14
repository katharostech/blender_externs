package bpy.types.meshuvloop;
@:pythonImport("bpy.types.MeshUVLoop") extern class MeshUVLoop {
	/**
		
		
		Type: boolean, default False
	**/
	var pin_uv : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var select : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var select_edge : Bool;
	/**
		
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var uv : Array<Float>;
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