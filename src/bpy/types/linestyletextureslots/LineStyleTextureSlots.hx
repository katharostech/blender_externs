package bpy.types.linestyletextureslots;
/**
	Collection of texture slots
**/
@:native("bpy.types.LineStyleTextureSlots") extern class LineStyleTextureSlots {
	/**
		add
		
		@returns LineStyleTextureSlot
	**/
	static function add():bpy.types.linestyletextureslot.LineStyleTextureSlot;
	/**
		create
		@param index Index, Slot index to initialize — int in [0, inf]
		
		@returns LineStyleTextureSlot
	**/
	static function create(index:Int):bpy.types.linestyletextureslot.LineStyleTextureSlot;
	/**
		clear
		@param index Index, Slot index to clear — int in [0, inf]
	**/
	static function clear(index:Int):Void;
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