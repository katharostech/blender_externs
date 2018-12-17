package bpy.types.greasepencillayers;
@:enum abstract Enum1(String) from String to String {
	var DEFAULT : String = "DEFAULT";
}@:enum abstract Enum2(String) from String to String {
	var UP : String = "UP";
	var DOWN : String = "DOWN";
}/**
	Collection of grease pencil layers
**/
@:native("bpy.types.GreasePencilLayers") extern class GreasePencilLayers {
	/**
		Active grease pencil layer
		
		Type: GPencilLayer
	**/
	var active : bpy.types.gpencillayer.GPencilLayer;
	/**
		Index of active grease pencil layer
		
		Type: int in [0, inf], default 0
	**/
	var active_index : Int;
	/**
		Note/Layer to add annotation strokes to
		
		Type: enum in [‘DEFAULT’], default ‘DEFAULT’
	**/
	var active_note : bpy.types.greasepencillayers.GreasePencilLayers.Enum1;
	/**
		Add a new grease pencil layer
		@param name Name, Name of the layer — string, (never None)
		@param set_active Set Active, Set the newly created layer to the active layer — boolean, (optional)
		
		@returns GPencilLayer
	**/
	function pyNew(name:String, set_active:Bool):bpy.types.gpencillayer.GPencilLayer;
	/**
		Remove a grease pencil layer
		@param layer The layer to remove — GPencilLayer, (never None)
	**/
	function remove(layer:bpy.types.gpencillayer.GPencilLayer):Void;
	/**
		Move a grease pencil layer in the layer stack
		@param layer The layer to move — GPencilLayer, (never None)
		@param type Direction of movement — enum in ['UP', 'DOWN']
	**/
	function move(layer:bpy.types.gpencillayer.GPencilLayer, type:bpy.types.greasepencillayers.GreasePencilLayers.Enum2):Void;
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