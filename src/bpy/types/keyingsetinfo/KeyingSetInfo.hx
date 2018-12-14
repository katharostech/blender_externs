package bpy.types.keyingsetinfo;
/**
	Callback function defines for builtin Keying Sets
**/
@:pythonImport("bpy.types.KeyingSetInfo") extern class KeyingSetInfo {
	/**
		A short description of the keying set
		
		Type: string, default “”, (never None)
	**/
	var bl_description : String;
	/**
		If this is set, the Keying Set gets a custom ID, otherwise it takes the name of the class used to define the Keying Set (for example, if the class name is “BUILTIN_KSI_location”, and bl_idname is not set by the script, then bl_idname = “BUILTIN_KSI_location”)
		
		Type: string, default “”, (never None)
	**/
	var bl_idname : String;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var bl_label : String;
	/**
		Keying Set options to use when inserting keyframes
		
		Type: enum set in {‘INSERTKEY_NEEDED’, ‘INSERTKEY_VISUAL’, ‘INSERTKEY_XYZ_TO_RGB’}, default {‘INSERTKEY_NEEDED’}
	**/
	var bl_options : Dynamic;
	/**
		Test if Keying Set can be used or not
		
		@returns boolean
	**/
	function poll():Dynamic;
	/**
		Call generate() on the structs which have properties to be keyframed
	**/
	function iterator():Void;
	/**
		Add Paths to the Keying Set to keyframe the properties of the given data
	**/
	function generate():Void;
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