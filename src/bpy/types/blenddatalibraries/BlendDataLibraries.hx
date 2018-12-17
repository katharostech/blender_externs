package bpy.types.blenddatalibraries;
/**
	Collection of libraries
**/
@:native("bpy.types.BlendDataLibraries") extern class BlendDataLibraries {
	/**
		tag
		@param value Value — boolean
	**/
	function tag(value:Bool):Void;
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
	/**
		Returns a context manager which exposes 2 library objects on entering.
		Each object has attributes matching bpy.data which are lists of strings to be linked.
		@param filepath The path to a blend file. — string
		@param link When False reference to the original file is lost. — bool
		@param relative When True the path is stored relative to the open blend file. — bool
	**/
	function load(filepath:String, link:Dynamic, relative:Dynamic):Void;
	/**
		Write data-blocks into a blend file.
		@param filepath The path to write the blend-file. — string
		@param datablocks set of data-blocks (bpy.types.ID instances). — set
		@param relative_remap When True, remap the paths relative to the current blend-file. — bool
		@param fake_user When True, data-blocks will be written with fake-user flag enabled. — bool
		@param compress When True, write a compressed blend file. — bool
	**/
	function write(filepath:String, datablocks:Dynamic, relative_remap:Dynamic, fake_user:Dynamic, compress:Dynamic):Void;
}