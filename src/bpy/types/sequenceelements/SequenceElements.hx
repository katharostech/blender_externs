package bpy.types.sequenceelements;
/**
	Collection of SequenceElement
**/
@:native("bpy.types.SequenceElements") extern class SequenceElements {
	/**
		Push an image from ImageSequence.directory
		@param filename Filepath to image — string, (never None)
		
		@returns SequenceElement
	**/
	function append(filename:String):bpy.types.sequenceelement.SequenceElement;
	/**
		Pop an image off the collection
		@param index Index of image to remove — int in [-inf, inf]
	**/
	function pop(index:Int):Void;
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