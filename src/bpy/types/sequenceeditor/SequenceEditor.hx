package bpy.types.sequenceeditor;
@:enum abstract Enum1(String) from String to String {
	var PER_STRIP : String = "PER_STRIP";
	var PROJECT : String = "PROJECT";
}/**
	Sequence editing data for a Scene data-block
**/
@:native("bpy.types.SequenceEditor") extern class SequenceEditor {
	/**
		Sequencer’s active strip
		
		Type: Sequence
	**/
	var active_strip : bpy.types.sequence.Sequence;
	/**
		Meta strip stack, last is currently edited meta strip
		
		Type: bpy_prop_collection of Sequence, (readonly)
	**/
	var meta_stack(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		
		
		Type: int in [-inf, inf], default 0
	**/
	var overlay_frame : Int;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var proxy_dir : String;
	/**
		How to store proxies for this project
		
		Type: enum in [‘PER_STRIP’, ‘PROJECT’], default ‘PER_STRIP’
	**/
	var proxy_storage : bpy.types.sequenceeditor.SequenceEditor.Enum1;
	/**
		Top-level strips only
		
		Type: Sequences bpy_prop_collection of Sequence, (readonly)
	**/
	var sequences(default, never) : bpy.types.sequences.Sequences;
	/**
		All strips, recursively including those inside metastrips
		
		Type: bpy_prop_collection of Sequence, (readonly)
	**/
	var sequences_all(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Partial overlay on top of the sequencer
		
		Type: boolean, default False
	**/
	var show_overlay : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var use_overlay_lock : Bool;
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