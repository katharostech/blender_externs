package bpy.types.animdata;
@:enum abstract Enum1(String) from String to String {
	var REPLACE : String = "REPLACE";
	var ADD : String = "ADD";
	var SUBTRACT : String = "SUBTRACT";
	var MULTIPLY : String = "MULTIPLY";
}@:enum abstract Enum2(String) from String to String {
	var NOTHING : String = "NOTHING";
	var HOLD : String = "HOLD";
	var HOLD_FORWARD : String = "HOLD_FORWARD";
}/**
	Animation data for data-block
**/
@:pythonImport("bpy.types.AnimData") extern class AnimData {
	/**
		Active Action for this data-block
		
		Type: Action
	**/
	var action : bpy.types.action.Action;
	/**
		Method used for combining Active Action’s result with result of NLA stack
		
		Type: enum in [‘REPLACE’, ‘ADD’, ‘SUBTRACT’, ‘MULTIPLY’], default ‘REPLACE’
	**/
	var action_blend_type : bpy.types.animdata.AnimData.Enum1;
	/**
		Action to take for gaps past the Active Action’s range (when evaluating with NLA)
		
		Type: enum in [‘NOTHING’, ‘HOLD’, ‘HOLD_FORWARD’], default ‘HOLD’
	**/
	var action_extrapolation : bpy.types.animdata.AnimData.Enum2;
	/**
		Amount the Active Action contributes to the result of the NLA stack
		
		Type: float in [0, 1], default 1.0
	**/
	var action_influence : Float;
	/**
		The Drivers/Expressions for this data-block
		
		Type: AnimDataDrivers bpy_prop_collection of FCurve, (readonly)
	**/
	var drivers(default, never) : bpy.types.animdatadrivers.AnimDataDrivers;
	/**
		NLA Tracks (i.e. Animation Layers)
		
		Type: NlaTracks bpy_prop_collection of NlaTrack, (readonly)
	**/
	var nla_tracks(default, never) : bpy.types.nlatracks.NlaTracks;
	/**
		NLA stack is evaluated when evaluating this block
		
		Type: boolean, default False
	**/
	var use_nla : Bool;
	/**
		Whether to enable or disable tweak mode in NLA
		
		Type: boolean, default False
	**/
	var use_tweak_mode : Bool;
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