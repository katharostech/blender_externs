package bpy.types.meshfacemaplayers;
/**
	Collection of mesh face-maps
**/
@:native("bpy.types.MeshFaceMapLayers") extern class MeshFaceMapLayers {
	/**
		
		
		Type: MeshFaceMapLayer, (readonly)
	**/
	var active(default, never) : bpy.types.meshfacemaplayer.MeshFaceMapLayer;
	/**
		Add a float property layer to Mesh
		@param name Face map name — string, (optional, never None)
		
		@returns MeshFaceMapLayer
	**/
	function pyNew(name:String):bpy.types.meshfacemaplayer.MeshFaceMapLayer;
	/**
		Remove a face map layer
		@param layer The layer to remove — MeshFaceMapLayer, (never None)
	**/
	function remove(layer:bpy.types.meshfacemaplayer.MeshFaceMapLayer):Void;
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