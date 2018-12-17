package bpy.types.keyingsetpath;
@:enum abstract Enum1(String) from String to String {
	var NAMED : String = "NAMED";
	var NONE : String = "NONE";
	var KEYINGSET : String = "KEYINGSET";
}@:enum abstract Enum2(String) from String to String {
	var ACTION : String = "ACTION";
	var ARMATURE : String = "ARMATURE";
	var BRUSH : String = "BRUSH";
	var CAMERA : String = "CAMERA";
	var CACHEFILE : String = "CACHEFILE";
	var CURVE : String = "CURVE";
	var FONT : String = "FONT";
	var GREASEPENCIL : String = "GREASEPENCIL";
	var COLLECTION : String = "COLLECTION";
	var IMAGE : String = "IMAGE";
	var KEY : String = "KEY";
	var LIGHT : String = "LIGHT";
	var LIBRARY : String = "LIBRARY";
	var LINESTYLE : String = "LINESTYLE";
	var LATTICE : String = "LATTICE";
	var MASK : String = "MASK";
	var MATERIAL : String = "MATERIAL";
	var META : String = "META";
	var MESH : String = "MESH";
	var MOVIECLIP : String = "MOVIECLIP";
	var NODETREE : String = "NODETREE";
	var OBJECT : String = "OBJECT";
	var PAINTCURVE : String = "PAINTCURVE";
	var PALETTE : String = "PALETTE";
	var PARTICLE : String = "PARTICLE";
	var LIGHT_PROBE : String = "LIGHT_PROBE";
	var SCENE : String = "SCENE";
	var SOUND : String = "SOUND";
	var SPEAKER : String = "SPEAKER";
	var TEXT : String = "TEXT";
	var TEXTURE : String = "TEXTURE";
	var WINDOWMANAGER : String = "WINDOWMANAGER";
	var WORLD : String = "WORLD";
	var WORKSPACE : String = "WORKSPACE";
}/**
	Path to a setting for use in a Keying Set
**/
@:native("bpy.types.KeyingSetPath") extern class KeyingSetPath {
	/**
		Index to the specific setting if applicable
		
		Type: int in [-inf, inf], default 0
	**/
	var array_index : Int;
	/**
		Path to property setting
		
		Type: string, default “”, (never None)
	**/
	var data_path : String;
	/**
		Name of Action Group to assign setting(s) for this path to
		
		Type: string, default “”, (never None)
	**/
	var group : String;
	/**
		Method used to define which Group-name to use
		
		Type: enum in [‘NAMED’, ‘NONE’, ‘KEYINGSET’], default ‘NAMED’
	**/
	var group_method : bpy.types.keyingsetpath.KeyingSetPath.Enum1;
	/**
		ID-Block that keyframes for Keying Set should be added to (for Absolute Keying Sets only)
		
		Type: ID
	**/
	var id : bpy.types.id.ID;
	/**
		Type of ID-block that can be used
		
		Type: enum in [‘ACTION’, ‘ARMATURE’, ‘BRUSH’, ‘CAMERA’, ‘CACHEFILE’, ‘CURVE’, ‘FONT’, ‘GREASEPENCIL’, ‘COLLECTION’, ‘IMAGE’, ‘KEY’, ‘LIGHT’, ‘LIBRARY’, ‘LINESTYLE’, ‘LATTICE’, ‘MASK’, ‘MATERIAL’, ‘META’, ‘MESH’, ‘MOVIECLIP’, ‘NODETREE’, ‘OBJECT’, ‘PAINTCURVE’, ‘PALETTE’, ‘PARTICLE’, ‘LIGHT_PROBE’, ‘SCENE’, ‘SOUND’, ‘SPEAKER’, ‘TEXT’, ‘TEXTURE’, ‘WINDOWMANAGER’, ‘WORLD’, ‘WORKSPACE’], default ‘OBJECT’
	**/
	var id_type : bpy.types.keyingsetpath.KeyingSetPath.Enum2;
	/**
		When an ‘array/vector’ type is chosen (Location, Rotation, Color, etc.), entire array is to be used
		
		Type: boolean, default False
	**/
	var use_entire_array : Bool;
	/**
		Only insert keyframes where they’re needed in the relevant F-Curves
		
		Type: boolean, default False
	**/
	var use_insertkey_needed : Bool;
	/**
		Override default setting to only insert keyframes where they’re needed in the relevant F-Curves
		
		Type: boolean, default False
	**/
	var use_insertkey_override_needed : Bool;
	/**
		Override default setting to insert keyframes based on ‘visual transforms’
		
		Type: boolean, default False
	**/
	var use_insertkey_override_visual : Bool;
	/**
		Override default setting to set color for newly added transformation F-Curves (Location, Rotation, Scale) to be based on the transform axis
		
		Type: boolean, default False
	**/
	var use_insertkey_override_xyz_to_rgb : Bool;
	/**
		Insert keyframes based on ‘visual transforms’
		
		Type: boolean, default False
	**/
	var use_insertkey_visual : Bool;
	/**
		Color for newly added transformation F-Curves (Location, Rotation, Scale) is based on the transform axis
		
		Type: boolean, default False
	**/
	var use_insertkey_xyz_to_rgb : Bool;
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