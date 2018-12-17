package bpy.types.masklayers;
/**
	Collection of layers used by mask
**/
@:native("bpy.types.MaskLayers") extern class MaskLayers {
	/**
		Active layer in this mask
		
		Type: MaskLayer
	**/
	var active : bpy.types.masklayer.MaskLayer;
	/**
		Add layer to this mask
		@param name Name, Name of new layer — string, (optional, never None)
		
		@returns MaskLayer
	**/
	function pyNew(name:String):bpy.types.masklayer.MaskLayer;
	/**
		Remove layer from this mask
		@param layer Shape to be removed — MaskLayer, (never None)
	**/
	function remove(layer:bpy.types.masklayer.MaskLayer):Void;
	/**
		Remove all mask layers
	**/
	function clear():Void;
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