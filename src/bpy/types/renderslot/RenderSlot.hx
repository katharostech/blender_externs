package bpy.types.renderslot;
/**
	Parameters defining the render slot
**/
@:pythonImport("bpy.types.RenderSlot") extern class RenderSlot {
	/**
		Render slot name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Clear the render slot
		@param iuser ImageUser — ImageUser
	**/
	function clear(iuser:Dynamic):Void;
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