package bpy.types.fcurvekeyframepoints;
@:enum abstract Enum1(String) from String to String {
	var KEYFRAME : String = "KEYFRAME";
	var BREAKDOWN : String = "BREAKDOWN";
	var MOVING_HOLD : String = "MOVING_HOLD";
	var EXTREME : String = "EXTREME";
	var JITTER : String = "JITTER";
}/**
	Collection of keyframe points
**/
@:native("bpy.types.FCurveKeyframePoints") extern class FCurveKeyframePoints {
	/**
		Add a keyframe point to a F-Curve
		@param frame X Value of this keyframe point — float in [-inf, inf]
		@param value Y Value of this keyframe point — float in [-inf, inf]
		@param options Keyframe optionsREPLACE Replace, Don’t add any new keyframes, but just replace existing ones.NEEDED Needed, Only adds keyframes that are needed.FAST Fast, Fast keyframe insertion to avoid recalculating the curve each time. — enum set in {'REPLACE', 'NEEDED', 'FAST'}, (optional)
		@param keyframe_type Type of keyframe to insertKEYFRAME Keyframe, Normal keyframe - e.g. for key poses.BREAKDOWN Breakdown, A breakdown pose - e.g. for transitions between key poses.MOVING_HOLD Moving Hold, A keyframe that is part of a moving hold.EXTREME Extreme, An ‘extreme’ pose, or some other purpose as needed.JITTER Jitter, A filler or baked keyframe for keying on ones, or some other purpose as needed. — enum in ['KEYFRAME', 'BREAKDOWN', 'MOVING_HOLD', 'EXTREME', 'JITTER'], (optional)
		
		@returns Keyframe
	**/
	function insert(frame:Float, value:Float, options:Dynamic, keyframe_type:bpy.types.fcurvekeyframepoints.FCurveKeyframePoints.Enum1):bpy.types.keyframe.Keyframe;
	/**
		Add a keyframe point to a F-Curve
		@param count Number, Number of points to add to the spline — int in [0, inf]
	**/
	function add(count:Int):Void;
	/**
		Remove keyframe from an F-Curve
		@param keyframe Keyframe to remove — Keyframe, (never None)
		@param fast Fast, Fast keyframe removal to avoid recalculating the curve each time — boolean, (optional)
	**/
	function remove(keyframe:bpy.types.keyframe.Keyframe, fast:Bool):Void;
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