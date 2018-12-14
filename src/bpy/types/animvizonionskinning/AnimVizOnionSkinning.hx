package bpy.types.animvizonionskinning;
@:enum abstract Enum1(String) from String to String {
	var NONE : String = "NONE";
	var CURRENT_FRAME : String = "CURRENT_FRAME";
	var RANGE : String = "RANGE";
	var KEYS : String = "KEYS";
}/**
	Onion Skinning settings for animation visualization
**/
@:pythonImport("bpy.types.AnimVizOnionSkinning") extern class AnimVizOnionSkinning {
	/**
		Number of frames to show after the current frame (only for ‘Around Current Frame’ Onion-skinning method)
		
		Type: int in [0, 30], default 0
	**/
	var frame_after : Int;
	/**
		Number of frames to show before the current frame (only for ‘Around Current Frame’ Onion-skinning method)
		
		Type: int in [0, 30], default 0
	**/
	var frame_before : Int;
	/**
		End frame of range of Ghosts to display (not for ‘Around Current Frame’ Onion-skinning method)
		
		Type: int in [-inf, inf], default 0
	**/
	var frame_end : Int;
	/**
		Starting frame of range of Ghosts to display (not for ‘Around Current Frame’ Onion-skinning method)
		
		Type: int in [-inf, inf], default 0
	**/
	var frame_start : Int;
	/**
		Number of frames between ghosts shown (not for ‘On Keyframes’ Onion-skinning method)
		
		Type: int in [1, 20], default 0
	**/
	var frame_step : Int;
	/**
		For Pose-Mode drawing, only draw ghosts for selected bones
		
		Type: boolean, default False
	**/
	var show_only_selected : Bool;
	/**
		Method used for determining what ghosts get drawn
		
		Type: enum in [‘NONE’, ‘CURRENT_FRAME’, ‘RANGE’, ‘KEYS’], default ‘NONE’
	**/
	var type : bpy.types.animvizonionskinning.AnimVizOnionSkinning.Enum1;
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