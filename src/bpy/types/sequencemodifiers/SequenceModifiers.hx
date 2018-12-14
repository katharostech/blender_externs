package bpy.types.sequencemodifiers;
@:enum abstract Enum1(String) from String to String {
	var COLOR_BALANCE : String = "COLOR_BALANCE";
	var CURVES : String = "CURVES";
	var HUE_CORRECT : String = "HUE_CORRECT";
	var BRIGHT_CONTRAST : String = "BRIGHT_CONTRAST";
	var MASK : String = "MASK";
	var WHITE_BALANCE : String = "WHITE_BALANCE";
	var TONEMAP : String = "TONEMAP";
}/**
	Collection of strip modifiers
**/
@:pythonImport("bpy.types.SequenceModifiers") extern class SequenceModifiers {
	/**
		Add a new modifier
		@param name New name for the modifier — string, (never None)
		@param type Modifier type to add — enum in ['COLOR_BALANCE', 'CURVES', 'HUE_CORRECT', 'BRIGHT_CONTRAST', 'MASK', 'WHITE_BALANCE', 'TONEMAP']
		
		@returns SequenceModifier
	**/
	function new(name:String, type:bpy.types.sequencemodifiers.SequenceModifiers.Enum1):bpy.types.sequencemodifier.SequenceModifier;
	/**
		Remove an existing modifier from the sequence
		@param modifier Modifier to remove — SequenceModifier, (never None)
	**/
	function remove(modifier:bpy.types.sequencemodifier.SequenceModifier):Void;
	/**
		Remove all modifiers from the sequence
	**/
	function clear():Void;
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