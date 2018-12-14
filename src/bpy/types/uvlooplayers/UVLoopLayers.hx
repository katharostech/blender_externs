package bpy.types.uvlooplayers;
/**
	Collection of uv loop layers
**/
@:pythonImport("bpy.types.UVLoopLayers") extern class UVLoopLayers {
	/**
		Active UV loop layer
		
		Type: MeshUVLoopLayer
	**/
	var active : bpy.types.meshuvlooplayer.MeshUVLoopLayer;
	/**
		Active UV loop layer index
		
		Type: int in [0, inf], default 0
	**/
	var active_index : Int;
	/**
		Add a UV map layer to Mesh
		@param name UV map name — string, (optional, never None)
		
		@returns MeshUVLoopLayer
	**/
	function new(name:String):bpy.types.meshuvlooplayer.MeshUVLoopLayer;
	/**
		Remove a vertex color layer
		@param layer The layer to remove — MeshUVLoopLayer, (never None)
	**/
	function remove(layer:bpy.types.meshuvlooplayer.MeshUVLoopLayer):Void;
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