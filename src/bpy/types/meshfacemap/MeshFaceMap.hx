package bpy.types.meshfacemap;
@:native("bpy.types.MeshFaceMap") extern class MeshFaceMap {
	/**
		
		
		Type: int in [-inf, inf], default 0
	**/
	var value : Int;
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