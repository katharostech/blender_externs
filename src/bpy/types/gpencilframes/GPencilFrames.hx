package bpy.types.gpencilframes;
/**
	Collection of grease pencil frames
**/
@:pythonImport("bpy.types.GPencilFrames") extern class GPencilFrames {
	/**
		Add a new grease pencil frame
		@param frame_number Frame Number, The frame on which this sketch appears — int in [-1048574, 1048574]
		
		@returns GPencilFrame
	**/
	function new(frame_number:Int):bpy.types.gpencilframe.GPencilFrame;
	/**
		Remove a grease pencil frame
		@param frame Frame, The frame to remove — GPencilFrame, (never None)
	**/
	function remove(frame:bpy.types.gpencilframe.GPencilFrame):Void;
	/**
		Copy a grease pencil frame
		@param source Source, The source frame — GPencilFrame, (never None)
		
		@returns GPencilFrame
	**/
	function copy(source:bpy.types.gpencilframe.GPencilFrame):bpy.types.gpencilframe.GPencilFrame;
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