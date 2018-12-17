package bpy.types.objectgpencilmodifiers;
@:enum abstract Enum1(String) from String to String {
	var GP_ARRAY : String = "GP_ARRAY";
	var GP_BUILD : String = "GP_BUILD";
	var GP_MIRROR : String = "GP_MIRROR";
	var GP_SIMPLIFY : String = "GP_SIMPLIFY";
	var GP_SUBDIV : String = "GP_SUBDIV";
	var GP_ARMATURE : String = "GP_ARMATURE";
	var GP_HOOK : String = "GP_HOOK";
	var GP_LATTICE : String = "GP_LATTICE";
	var GP_NOISE : String = "GP_NOISE";
	var GP_OFFSET : String = "GP_OFFSET";
	var GP_SMOOTH : String = "GP_SMOOTH";
	var GP_THICK : String = "GP_THICK";
	var GP_TIME : String = "GP_TIME";
	var GP_COLOR : String = "GP_COLOR";
	var GP_OPACITY : String = "GP_OPACITY";
	var GP_TINT : String = "GP_TINT";
}/**
	Collection of object grease pencil modifiers
**/
@:native("bpy.types.ObjectGpencilModifiers") extern class ObjectGpencilModifiers {
	/**
		Add a new greasepencil_modifier
		@param name New name for the greasepencil_modifier — string, (never None)
		@param type Modifier type to addGP_ARRAY Array, Create array of duplicate instances.GP_BUILD Build, Create duplication of strokes.GP_MIRROR Mirror, Duplicate strokes like a mirror.GP_SIMPLIFY Simplify, Simplify stroke reducing number of points.GP_SUBDIV Subdivide, Subdivide stroke adding more control points.GP_ARMATURE Armature, Deform stroke points using armature object.GP_HOOK Hook, Deform stroke points using objects.GP_LATTICE Lattice, Deform strokes using lattice.GP_NOISE Noise, Add noise to strokes.GP_OFFSET Offset, Change stroke location, rotation or scale.GP_SMOOTH Smooth, Smooth stroke.GP_THICK Thickness, Change stroke thickness.GP_TIME Time Offset, Offset keyframes.GP_COLOR Hue/Saturation, Apply changes to stroke colors.GP_OPACITY Opacity, Opacity of the strokes.GP_TINT Tint, Tint strokes with new color. — enum in ['GP_ARRAY', 'GP_BUILD', 'GP_MIRROR', 'GP_SIMPLIFY', 'GP_SUBDIV', 'GP_ARMATURE', 'GP_HOOK', 'GP_LATTICE', 'GP_NOISE', 'GP_OFFSET', 'GP_SMOOTH', 'GP_THICK', 'GP_TIME', 'GP_COLOR', 'GP_OPACITY', 'GP_TINT']
		
		@returns GpencilModifier
	**/
	function pyNew(name:String, type:bpy.types.objectgpencilmodifiers.ObjectGpencilModifiers.Enum1):bpy.types.gpencilmodifier.GpencilModifier;
	/**
		Remove an existing greasepencil_modifier from the object
		@param greasepencil_modifier Modifier to remove — GpencilModifier, (never None)
	**/
	function remove(greasepencil_modifier:bpy.types.gpencilmodifier.GpencilModifier):Void;
	/**
		Remove all grease pencil modifiers from the object
	**/
	function clear():Void;
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