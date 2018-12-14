package bpy.types.gpencilframe;
/**
	Collection of related sketches on a particular frame
**/
@:pythonImport("bpy.types.GPencilFrame") extern class GPencilFrame {
	/**
		The frame on which this sketch appears
		
		Type: int in [-1048574, 1048574], default 0
	**/
	var frame_number : Int;
	/**
		Frame is being edited (painted on)
		
		Type: boolean, default False
	**/
	var is_edited : Bool;
	/**
		Frame is selected for editing in the Dope Sheet
		
		Type: boolean, default False
	**/
	var select : Bool;
	/**
		Freehand curves defining the sketch on this frame
		
		Type: GPencilStrokes bpy_prop_collection of GPencilStroke, (readonly)
	**/
	var strokes(default, never) : bpy.types.gpencilstrokes.GPencilStrokes;
	/**
		Remove all the grease pencil frame data
	**/
	function clear():Void;
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