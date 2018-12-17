package bpy.types.renderslots;
/**
	Collection of render layers
**/
@:native("bpy.types.RenderSlots") extern class RenderSlots {
	/**
		Active render slot of the image
		
		Type: RenderSlot
	**/
	var active : bpy.types.renderslot.RenderSlot;
	/**
		Active render slot of the image
		
		Type: int in [0, 32767], default 0
	**/
	var active_index : Int;
	/**
		Add a render slot to the image
		@param name Name, New name for the render slot — string, (optional, never None)
		
		@returns RenderSlot
	**/
	function pyNew(name:String):bpy.types.renderslot.RenderSlot;
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