package bpy.types.meshuvlooplayer;
@:native("bpy.types.MeshUVLoopLayer") extern class MeshUVLoopLayer {
	/**
		Set the map as active for display and editing
		
		Type: boolean, default False
	**/
	var active : Bool;
	/**
		Set the map as active for cloning
		
		Type: boolean, default False
	**/
	var active_clone : Bool;
	/**
		Set the map as active for rendering
		
		Type: boolean, default False
	**/
	var active_render : Bool;
	/**
		
		
		Type: bpy_prop_collection of MeshUVLoop, (readonly)
	**/
	var data(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Name of UV map
		
		Type: string, default “”, (never None)
	**/
	var name : String;
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