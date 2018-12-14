package bpy.types.fcurve;
@:enum abstract Enum1(String) from String to String {
	var NONE : String = "NONE";
	var CONT_ACCEL : String = "CONT_ACCEL";
}@:enum abstract Enum2(String) from String to String {
	var AUTO_RAINBOW : String = "AUTO_RAINBOW";
	var AUTO_RGB : String = "AUTO_RGB";
	var AUTO_YRGB : String = "AUTO_YRGB";
	var CUSTOM : String = "CUSTOM";
}@:enum abstract Enum3(String) from String to String {
	var CONSTANT : String = "CONSTANT";
	var LINEAR : String = "LINEAR";
}/**
	F-Curve defining values of a period of time
**/
@:pythonImport("bpy.types.FCurve") extern class FCurve {
	/**
		Index to the specific property affected by F-Curve if applicable
		
		Type: int in [-inf, inf], default 0
	**/
	var array_index : Int;
	/**
		Algorithm used to compute automatic handles
		
		Type: enum in [‘NONE’, ‘CONT_ACCEL’], default ‘NONE’
	**/
	var auto_smoothing : bpy.types.fcurve.FCurve.Enum1;
	/**
		Color of the F-Curve in the Graph Editor
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var color : Array<Float>;
	/**
		Method used to determine color of F-Curve in Graph Editor
		
		Type: enum in [‘AUTO_RAINBOW’, ‘AUTO_RGB’, ‘AUTO_YRGB’, ‘CUSTOM’], default ‘AUTO_RAINBOW’
	**/
	var color_mode : bpy.types.fcurve.FCurve.Enum2;
	/**
		RNA Path to property affected by F-Curve
		
		Type: string, default “”, (never None)
	**/
	var data_path : String;
	/**
		Channel Driver (only set for Driver F-Curves)
		
		Type: Driver, (readonly)
	**/
	var driver(default, never) : bpy.types.driver.Driver;
	/**
		Method used for evaluating value of F-Curve outside first and last keyframes
		
		Type: enum in [‘CONSTANT’, ‘LINEAR’], default ‘CONSTANT’
	**/
	var extrapolation : bpy.types.fcurve.FCurve.Enum3;
	/**
		Action Group that this F-Curve belongs to
		
		Type: ActionGroup
	**/
	var group : bpy.types.actiongroup.ActionGroup;
	/**
		F-Curve and its keyframes are hidden in the Graph Editor graphs
		
		Type: boolean, default False
	**/
	var hide : Bool;
	/**
		False when F-Curve could not be evaluated in past, so should be skipped when evaluating
		
		Type: boolean, default False
	**/
	var is_valid : Bool;
	/**
		User-editable keyframes
		
		Type: FCurveKeyframePoints bpy_prop_collection of Keyframe, (readonly)
	**/
	var keyframe_points(default, never) : bpy.types.fcurvekeyframepoints.FCurveKeyframePoints;
	/**
		F-Curve’s settings cannot be edited
		
		Type: boolean, default False
	**/
	var lock : Bool;
	/**
		Modifiers affecting the shape of the F-Curve
		
		Type: FCurveModifiers bpy_prop_collection of FModifier, (readonly)
	**/
	var modifiers(default, never) : bpy.types.fcurvemodifiers.FCurveModifiers;
	/**
		F-Curve is not evaluated
		
		Type: boolean, default False
	**/
	var mute : Bool;
	/**
		Sampled animation data
		
		Type: bpy_prop_collection of FCurveSample, (readonly)
	**/
	var sampled_points(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		F-Curve is selected for editing
		
		Type: boolean, default False
	**/
	var select : Bool;
	/**
		Evaluate F-Curve
		@param frame Frame, Evaluate F-Curve at given frame — float in [-inf, inf]
		
		@returns float in [-inf, inf]
	**/
	function evaluate(frame:Float):Float;
	/**
		Ensure keyframes are sorted in chronological order and handles are set correctly
	**/
	function update():Void;
	/**
		Get the time extents for F-Curve
		
		@returns float array of 2 items in [-inf, inf]
	**/
	function range():Array<Float>;
	/**
		Update FCurve flags set automatically from affected property (currently, integer/discrete flags set when the property is not a float)
		@param data Data, Data containing the property controlled by given FCurve — AnyType, (never None)
	**/
	function update_autoflags(data:bpy.types.anytype.AnyType):Void;
	/**
		Convert current FCurve from keyframes to sample points, if necessary
		@param start Start Frame — int in [-1048574, 1048574]
		@param end End Frame — int in [-1048574, 1048574]
	**/
	function convert_to_samples(start:Int, end:Int):Void;
	/**
		Convert current FCurve from sample points to keyframes (linear interpolation), if necessary
		@param start Start Frame — int in [-1048574, 1048574]
		@param end End Frame — int in [-1048574, 1048574]
	**/
	function convert_to_keyframes(start:Int, end:Int):Void;
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