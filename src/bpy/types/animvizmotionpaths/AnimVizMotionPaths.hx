package bpy.types.animvizmotionpaths;
@:enum abstract Enum1(String) from String to String {
	var HEADS : String = "HEADS";
	var TAILS : String = "TAILS";
}@:enum abstract Enum2(String) from String to String {
	var CURRENT_FRAME : String = "CURRENT_FRAME";
	var RANGE : String = "RANGE";
}/**
	Motion Path settings for animation visualization
**/
@:native("bpy.types.AnimVizMotionPaths") extern class AnimVizMotionPaths {
	/**
		When calculating Bone Paths, use Head or Tips
		
		Type: enum in [‘HEADS’, ‘TAILS’], default ‘TAILS’
	**/
	var bake_location : bpy.types.animvizmotionpaths.AnimVizMotionPaths.Enum1;
	/**
		Number of frames to show after the current frame (only for ‘Around Current Frame’ Onion-skinning method)
		
		Type: int in [1, 524287], default 0
	**/
	var frame_after : Int;
	/**
		Number of frames to show before the current frame (only for ‘Around Current Frame’ Onion-skinning method)
		
		Type: int in [1, 524287], default 0
	**/
	var frame_before : Int;
	/**
		End frame of range of paths to display/calculate (not for ‘Around Current Frame’ Onion-skinning method)
		
		Type: int in [-inf, inf], default 0
	**/
	var frame_end : Int;
	/**
		Starting frame of range of paths to display/calculate (not for ‘Around Current Frame’ Onion-skinning method)
		
		Type: int in [-inf, inf], default 0
	**/
	var frame_start : Int;
	/**
		Number of frames between paths shown (not for ‘On Keyframes’ Onion-skinning method)
		
		Type: int in [1, 100], default 0
	**/
	var frame_step : Int;
	/**
		Are there any bone paths that will need updating (read-only)
		
		Type: boolean, default False, (readonly)
	**/
	var has_motion_paths(default, never) : Bool;
	/**
		Show frame numbers on Motion Paths
		
		Type: boolean, default False
	**/
	var show_frame_numbers : Bool;
	/**
		For bone motion paths, search whole Action for keyframes instead of in group with matching name only (is slower)
		
		Type: boolean, default False
	**/
	var show_keyframe_action_all : Bool;
	/**
		Emphasize position of keyframes on Motion Paths
		
		Type: boolean, default False
	**/
	var show_keyframe_highlight : Bool;
	/**
		Show frame numbers of Keyframes on Motion Paths
		
		Type: boolean, default False
	**/
	var show_keyframe_numbers : Bool;
	/**
		Type of range to show for Motion Paths
		
		Type: enum in [‘CURRENT_FRAME’, ‘RANGE’], default ‘RANGE’
	**/
	var type : bpy.types.animvizmotionpaths.AnimVizMotionPaths.Enum2;
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