package bpy.types.nlastrip;
@:enum abstract Enum1(String) from String to String {
	var REPLACE : String = "REPLACE";
	var ADD : String = "ADD";
	var SUBTRACT : String = "SUBTRACT";
	var MULTIPLY : String = "MULTIPLY";
}@:enum abstract Enum2(String) from String to String {
	var NOTHING : String = "NOTHING";
	var HOLD : String = "HOLD";
	var HOLD_FORWARD : String = "HOLD_FORWARD";
}@:enum abstract Enum3(String) from String to String {
	var CLIP : String = "CLIP";
	var TRANSITION : String = "TRANSITION";
	var META : String = "META";
	var SOUND : String = "SOUND";
}/**
	A container referencing an existing Action
**/
@:pythonImport("bpy.types.NlaStrip") extern class NlaStrip {
	/**
		Action referenced by this strip
		
		Type: Action
	**/
	var action : bpy.types.action.Action;
	/**
		Last frame from action to use
		
		Type: float in [-inf, inf], default 0.0
	**/
	var action_frame_end : Float;
	/**
		First frame from action to use
		
		Type: float in [-inf, inf], default 0.0
	**/
	var action_frame_start : Float;
	/**
		NLA Strip is active
		
		Type: boolean, default False, (readonly)
	**/
	var active(default, never) : Bool;
	/**
		Number of frames at start of strip to fade in influence
		
		Type: float in [-inf, inf], default 0.0
	**/
	var blend_in : Float;
	/**
		
		
		Type: float in [-inf, inf], default 0.0
	**/
	var blend_out : Float;
	/**
		Method used for combining strip’s result with accumulated result
		
		Type: enum in [‘REPLACE’, ‘ADD’, ‘SUBTRACT’, ‘MULTIPLY’], default ‘REPLACE’
	**/
	var blend_type : bpy.types.nlastrip.NlaStrip.Enum1;
	/**
		Action to take for gaps past the strip extents
		
		Type: enum in [‘NOTHING’, ‘HOLD’, ‘HOLD_FORWARD’], default ‘HOLD’
	**/
	var extrapolation : bpy.types.nlastrip.NlaStrip.Enum2;
	/**
		F-Curves for controlling the strip’s influence and timing
		
		Type: NlaStripFCurves bpy_prop_collection of FCurve, (readonly)
	**/
	var fcurves(default, never) : bpy.types.nlastripfcurves.NlaStripFCurves;
	/**
		
		
		Type: float in [-inf, inf], default 0.0
	**/
	var frame_end : Float;
	/**
		
		
		Type: float in [-inf, inf], default 0.0
	**/
	var frame_start : Float;
	/**
		Amount the strip contributes to the current result
		
		Type: float in [0, 1], default 0.0
	**/
	var influence : Float;
	/**
		Modifiers affecting all the F-Curves in the referenced Action
		
		Type: bpy_prop_collection of FModifier, (readonly)
	**/
	var modifiers(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		NLA Strip is not evaluated
		
		Type: boolean, default False
	**/
	var mute : Bool;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Number of times to repeat the action range
		
		Type: float in [0.1, 1000], default 0.0
	**/
	var repeat : Float;
	/**
		Scaling factor for action
		
		Type: float in [0.0001, 1000], default 0.0
	**/
	var scale : Float;
	/**
		NLA Strip is selected
		
		Type: boolean, default False
	**/
	var select : Bool;
	/**
		Frame of referenced Action to evaluate
		
		Type: float in [-inf, inf], default 0.0
	**/
	var strip_time : Float;
	/**
		NLA Strips that this strip acts as a container for (if it is of type Meta)
		
		Type: bpy_prop_collection of NlaStrip, (readonly)
	**/
	var strips(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Type of NLA Strip
		
		Type: enum in [‘CLIP’, ‘TRANSITION’, ‘META’, ‘SOUND’], default ‘CLIP’, (readonly)
	**/
	var type(default, never) : bpy.types.nlastrip.NlaStrip.Enum3;
	/**
		Influence setting is controlled by an F-Curve rather than automatically determined
		
		Type: boolean, default False
	**/
	var use_animated_influence : Bool;
	/**
		Strip time is controlled by an F-Curve rather than automatically determined
		
		Type: boolean, default False
	**/
	var use_animated_time : Bool;
	/**
		Cycle the animated time within the action start &amp; end
		
		Type: boolean, default False
	**/
	var use_animated_time_cyclic : Bool;
	/**
		Number of frames for Blending In/Out is automatically determined from overlapping strips
		
		Type: boolean, default False
	**/
	var use_auto_blend : Bool;
	/**
		NLA Strip is played back in reverse order (only when timing is automatically determined)
		
		Type: boolean, default False
	**/
	var use_reverse : Bool;
	/**
		Update range of frames referenced from action after tweaking strip and its keyframes
		
		Type: boolean, default False
	**/
	var use_sync_length : Bool;
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