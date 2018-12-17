package bpy.types.depsgraphupdate;
/**
	Information about ID that was updated
**/
@:native("bpy.types.DepsgraphUpdate") extern class DepsgraphUpdate {
	/**
		Updated datablock
		
		Type: ID, (readonly)
	**/
	var id(default, never) : bpy.types.id.ID;
	/**
		Object geometry is not updated
		
		Type: boolean, default False, (readonly)
	**/
	var is_dirty_geometry(default, never) : Bool;
	/**
		Object transformation is not updated
		
		Type: boolean, default False, (readonly)
	**/
	var is_dirty_transform(default, never) : Bool;
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