package bpy.types.meshskinvertex;
/**
	Per-vertex skin data for use with the Skin modifier
**/
@:native("bpy.types.MeshSkinVertex") extern class MeshSkinVertex {
	/**
		Radius of the skin
		
		Type: float array of 2 items in [0, inf], default (0.0, 0.0)
	**/
	var radius : Array<Float>;
	/**
		If vertex has multiple adjacent edges, it is hulled to them directly
		
		Type: boolean, default False
	**/
	var use_loose : Bool;
	/**
		Vertex is a root for rotation calculations and armature generation, setting this flag does not clear other roots in the same mesh island
		
		Type: boolean, default False
	**/
	var use_root : Bool;
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