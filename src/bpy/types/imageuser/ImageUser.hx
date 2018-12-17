package bpy.types.imageuser;
/**
	Parameters defining how an Image data-block is used by another data-block
**/
@:native("bpy.types.ImageUser") extern class ImageUser {
	/**
		Current frame number in image sequence or movie
		
		Type: int in [-1048574, 1048574], default 0
	**/
	var frame_current : Int;
	/**
		Number of images of a movie to use
		
		Type: int in [0, 1048574], default 0
	**/
	var frame_duration : Int;
	/**
		Offset the number of the frame to use in the animation
		
		Type: int in [-inf, inf], default 0
	**/
	var frame_offset : Int;
	/**
		Global starting frame of the movie/sequence, assuming first picture has a #1
		
		Type: int in [-1048574, 1048574], default 0
	**/
	var frame_start : Int;
	/**
		Layer in multilayer image
		
		Type: int in [0, 32767], default 0, (readonly)
	**/
	var multilayer_layer(default, never) : Int;
	/**
		Pass in multilayer image
		
		Type: int in [0, 32767], default 0, (readonly)
	**/
	var multilayer_pass(default, never) : Int;
	/**
		View in multilayer image
		
		Type: int in [0, 32767], default 0, (readonly)
	**/
	var multilayer_view(default, never) : Int;
	/**
		Always refresh image on frame changes
		
		Type: boolean, default False
	**/
	var use_auto_refresh : Bool;
	/**
		Cycle the images in the movie
		
		Type: boolean, default False
	**/
	var use_cyclic : Bool;
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