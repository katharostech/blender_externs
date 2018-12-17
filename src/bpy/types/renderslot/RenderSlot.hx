package bpy.types.renderslot;
/**
	Parameters defining the render slot
**/
@:native("bpy.types.RenderSlot") extern class RenderSlot {
	/**
		Render slot name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Clear the render slot
		@param iuser ImageUser — ImageUser
	**/
	function clear(iuser:bpy.types.imageuser.ImageUser):Void;
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