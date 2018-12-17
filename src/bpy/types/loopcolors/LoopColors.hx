package bpy.types.loopcolors;
/**
	Collection of vertex colors
**/
@:native("bpy.types.LoopColors") extern class LoopColors {
	/**
		Active vertex color layer
		
		Type: MeshLoopColorLayer
	**/
	var active : bpy.types.meshloopcolorlayer.MeshLoopColorLayer;
	/**
		Active vertex color index
		
		Type: int in [0, inf], default 0
	**/
	var active_index : Int;
	/**
		Add a vertex color layer to Mesh
		@param name Vertex color name — string, (optional, never None)
		
		@returns MeshLoopColorLayer
	**/
	function pyNew(name:String):bpy.types.meshloopcolorlayer.MeshLoopColorLayer;
	/**
		Remove a vertex color layer
		@param layer The layer to remove — MeshLoopColorLayer, (never None)
	**/
	function remove(layer:bpy.types.meshloopcolorlayer.MeshLoopColorLayer):Void;
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