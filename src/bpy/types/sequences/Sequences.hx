package bpy.types.sequences;
@:enum abstract Enum1(String) from String to String {
	var CROSS : String = "CROSS";
	var ADD : String = "ADD";
	var SUBTRACT : String = "SUBTRACT";
	var ALPHA_OVER : String = "ALPHA_OVER";
	var ALPHA_UNDER : String = "ALPHA_UNDER";
	var GAMMA_CROSS : String = "GAMMA_CROSS";
	var MULTIPLY : String = "MULTIPLY";
	var OVER_DROP : String = "OVER_DROP";
	var WIPE : String = "WIPE";
	var GLOW : String = "GLOW";
	var TRANSFORM : String = "TRANSFORM";
	var COLOR : String = "COLOR";
	var SPEED : String = "SPEED";
	var MULTICAM : String = "MULTICAM";
	var ADJUSTMENT : String = "ADJUSTMENT";
	var GAUSSIAN_BLUR : String = "GAUSSIAN_BLUR";
	var TEXT : String = "TEXT";
	var COLORMIX : String = "COLORMIX";
}/**
	Collection of Sequences
**/
@:pythonImport("bpy.types.Sequences") extern class Sequences {
	/**
		Add a new movie clip sequence
		@param name Name for the new sequence — string, (never None)
		@param clip Movie clip to add — MovieClip, (never None)
		@param channel Channel, The channel for the new sequence — int in [1, 32]
		@param frame_start The start frame for the new sequence — int in [-1048574, 1048574]
		
		@returns Sequence
	**/
	function new_clip(name:String, clip:bpy.types.movieclip.MovieClip, channel:Int, frame_start:Int):bpy.types.sequence.Sequence;
	/**
		Add a new mask sequence
		@param name Name for the new sequence — string, (never None)
		@param mask Mask to add — Mask, (never None)
		@param channel Channel, The channel for the new sequence — int in [1, 32]
		@param frame_start The start frame for the new sequence — int in [-1048574, 1048574]
		
		@returns Sequence
	**/
	function new_mask(name:String, mask:Dynamic, channel:Int, frame_start:Int):bpy.types.sequence.Sequence;
	/**
		Add a new scene sequence
		@param name Name for the new sequence — string, (never None)
		@param scene Scene to add — Scene, (never None)
		@param channel Channel, The channel for the new sequence — int in [1, 32]
		@param frame_start The start frame for the new sequence — int in [-1048574, 1048574]
		
		@returns Sequence
	**/
	function new_scene(name:String, scene:Dynamic, channel:Int, frame_start:Int):bpy.types.sequence.Sequence;
	/**
		Add a new image sequence
		@param name Name for the new sequence — string, (never None)
		@param filepath Filepath to image — string, (never None)
		@param channel Channel, The channel for the new sequence — int in [1, 32]
		@param frame_start The start frame for the new sequence — int in [-1048574, 1048574]
		
		@returns Sequence
	**/
	function new_image(name:String, filepath:String, channel:Int, frame_start:Int):bpy.types.sequence.Sequence;
	/**
		Add a new movie sequence
		@param name Name for the new sequence — string, (never None)
		@param filepath Filepath to movie — string, (never None)
		@param channel Channel, The channel for the new sequence — int in [1, 32]
		@param frame_start The start frame for the new sequence — int in [-1048574, 1048574]
		
		@returns Sequence
	**/
	function new_movie(name:String, filepath:String, channel:Int, frame_start:Int):bpy.types.sequence.Sequence;
	/**
		Add a new sound sequence
		@param name Name for the new sequence — string, (never None)
		@param filepath Filepath to movie — string, (never None)
		@param channel Channel, The channel for the new sequence — int in [1, 32]
		@param frame_start The start frame for the new sequence — int in [-1048574, 1048574]
		
		@returns Sequence
	**/
	function new_sound(name:String, filepath:String, channel:Int, frame_start:Int):bpy.types.sequence.Sequence;
	/**
		Add a new effect sequence
		@param name Name for the new sequence — string, (never None)
		@param type Type, type for the new sequence — enum in ['CROSS', 'ADD', 'SUBTRACT', 'ALPHA_OVER', 'ALPHA_UNDER', 'GAMMA_CROSS', 'MULTIPLY', 'OVER_DROP', 'WIPE', 'GLOW', 'TRANSFORM', 'COLOR', 'SPEED', 'MULTICAM', 'ADJUSTMENT', 'GAUSSIAN_BLUR', 'TEXT', 'COLORMIX']
		@param channel Channel, The channel for the new sequence — int in [1, 32]
		@param frame_start The start frame for the new sequence — int in [-inf, inf]
		@param frame_end The end frame for the new sequence — int in [-inf, inf], (optional)
		@param seq1 Sequence 1 for effect — Sequence, (optional)
		@param seq2 Sequence 2 for effect — Sequence, (optional)
		@param seq3 Sequence 3 for effect — Sequence, (optional)
		
		@returns Sequence
	**/
	function new_effect(name:String, type:bpy.types.sequences.Sequences.Enum1, channel:Int, frame_start:Int, frame_end:Int, seq1:bpy.types.sequence.Sequence, seq2:bpy.types.sequence.Sequence, seq3:bpy.types.sequence.Sequence):bpy.types.sequence.Sequence;
	/**
		Remove a Sequence
		@param sequence Sequence to remove — Sequence, (never None)
	**/
	function remove(sequence:bpy.types.sequence.Sequence):Void;
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