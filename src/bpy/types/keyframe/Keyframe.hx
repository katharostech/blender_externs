package bpy.types.keyframe;
@:enum abstract Enum1(String) from String to String {
	var AUTO : String = "AUTO";
	var EASE_IN : String = "EASE_IN";
	var EASE_OUT : String = "EASE_OUT";
	var EASE_IN_OUT : String = "EASE_IN_OUT";
}@:enum abstract Enum2(String) from String to String {
	var FREE : String = "FREE";
	var ALIGNED : String = "ALIGNED";
	var VECTOR : String = "VECTOR";
	var AUTO : String = "AUTO";
	var AUTO_CLAMPED : String = "AUTO_CLAMPED";
}@:enum abstract Enum3(String) from String to String {
	var FREE : String = "FREE";
	var ALIGNED : String = "ALIGNED";
	var VECTOR : String = "VECTOR";
	var AUTO : String = "AUTO";
	var AUTO_CLAMPED : String = "AUTO_CLAMPED";
}@:enum abstract Enum4(String) from String to String {
	var CONSTANT : String = "CONSTANT";
	var LINEAR : String = "LINEAR";
	var BEZIER : String = "BEZIER";
	var SINE : String = "SINE";
	var QUAD : String = "QUAD";
	var CUBIC : String = "CUBIC";
	var QUART : String = "QUART";
	var QUINT : String = "QUINT";
	var EXPO : String = "EXPO";
	var CIRC : String = "CIRC";
	var BACK : String = "BACK";
	var BOUNCE : String = "BOUNCE";
	var ELASTIC : String = "ELASTIC";
}@:enum abstract Enum5(String) from String to String {
	var KEYFRAME : String = "KEYFRAME";
	var BREAKDOWN : String = "BREAKDOWN";
	var MOVING_HOLD : String = "MOVING_HOLD";
	var EXTREME : String = "EXTREME";
	var JITTER : String = "JITTER";
}/**
	Bezier curve point with two handles defining a Keyframe on an F-Curve
**/
@:native("bpy.types.Keyframe") extern class Keyframe {
	/**
		Amount to boost elastic bounces for ‘elastic’ easing
		
		Type: float in [0, inf], default 0.0
	**/
	var amplitude : Float;
	/**
		Amount of overshoot for ‘back’ easing
		
		Type: float in [-inf, inf], default 0.0
	**/
	var back : Float;
	/**
		Coordinates of the control point
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var co : Array<Float>;
	/**
		Which ends of the segment between this and the next keyframe easing interpolation is applied to
		
		Type: enum in [‘AUTO’, ‘EASE_IN’, ‘EASE_OUT’, ‘EASE_IN_OUT’], default ‘AUTO’
	**/
	var easing : bpy.types.keyframe.Keyframe.Enum1;
	/**
		Coordinates of the left handle (before the control point)
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var handle_left : Array<Float>;
	/**
		Handle types
		
		Type: enum in [‘FREE’, ‘ALIGNED’, ‘VECTOR’, ‘AUTO’, ‘AUTO_CLAMPED’], default ‘FREE’
	**/
	var handle_left_type : bpy.types.keyframe.Keyframe.Enum2;
	/**
		Coordinates of the right handle (after the control point)
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var handle_right : Array<Float>;
	/**
		Handle types
		
		Type: enum in [‘FREE’, ‘ALIGNED’, ‘VECTOR’, ‘AUTO’, ‘AUTO_CLAMPED’], default ‘FREE’
	**/
	var handle_right_type : bpy.types.keyframe.Keyframe.Enum3;
	/**
		Interpolation method to use for segment of the F-Curve from this Keyframe until the next Keyframe
		
		Type: enum in [‘CONSTANT’, ‘LINEAR’, ‘BEZIER’, ‘SINE’, ‘QUAD’, ‘CUBIC’, ‘QUART’, ‘QUINT’, ‘EXPO’, ‘CIRC’, ‘BACK’, ‘BOUNCE’, ‘ELASTIC’], default ‘CONSTANT’
	**/
	var interpolation : bpy.types.keyframe.Keyframe.Enum4;
	/**
		Time between bounces for elastic easing
		
		Type: float in [-inf, inf], default 0.0
	**/
	var period : Float;
	/**
		Control point selection status
		
		Type: boolean, default False
	**/
	var select_control_point : Bool;
	/**
		Left handle selection status
		
		Type: boolean, default False
	**/
	var select_left_handle : Bool;
	/**
		Right handle selection status
		
		Type: boolean, default False
	**/
	var select_right_handle : Bool;
	/**
		Type of keyframe (for visual purposes only)
		
		Type: enum in [‘KEYFRAME’, ‘BREAKDOWN’, ‘MOVING_HOLD’, ‘EXTREME’, ‘JITTER’], default ‘KEYFRAME’
	**/
	var type : bpy.types.keyframe.Keyframe.Enum5;
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