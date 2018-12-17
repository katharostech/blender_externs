package bpy.types.drivertarget;
@:enum abstract Enum1(String) from String to String {
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
}@:enum abstract Enum2(String) from String to String {
	var WORLD_SPACE : String = "WORLD_SPACE";
	var TRANSFORM_SPACE : String = "TRANSFORM_SPACE";
	var LOCAL_SPACE : String = "LOCAL_SPACE";
}@:enum abstract Enum3(String) from String to String {
	var LOC_X : String = "LOC_X";
	var LOC_Y : String = "LOC_Y";
	var LOC_Z : String = "LOC_Z";
	var ROT_X : String = "ROT_X";
	var ROT_Y : String = "ROT_Y";
	var ROT_Z : String = "ROT_Z";
	var SCALE_X : String = "SCALE_X";
	var SCALE_Y : String = "SCALE_Y";
	var SCALE_Z : String = "SCALE_Z";
}/**
	Source of input values for driver variables
**/
@:native("bpy.types.DriverTarget") extern class DriverTarget {
	/**
		Name of PoseBone to use as target
		
		Type: string, default “”, (never None)
	**/
	var bone_target : String;
	/**
		RNA Path (from ID-block) to property used
		
		Type: string, default “”, (never None)
	**/
	var data_path : String;
	/**
		ID-block that the specific property used can be found from (id_type property must be set first)
		
		Type: ID
	**/
	var id : bpy.types.id.ID;
	/**
		Type of ID-block that can be used
		
		Type: enum in [‘ACTION’, ‘ARMATURE’, ‘BRUSH’, ‘CAMERA’, ‘CACHEFILE’, ‘CURVE’, ‘FONT’, ‘GREASEPENCIL’, ‘COLLECTION’, ‘IMAGE’, ‘KEY’, ‘LIGHT’, ‘LIBRARY’, ‘LINESTYLE’, ‘LATTICE’, ‘MASK’, ‘MATERIAL’, ‘META’, ‘MESH’, ‘MOVIECLIP’, ‘NODETREE’, ‘OBJECT’, ‘PAINTCURVE’, ‘PALETTE’, ‘PARTICLE’, ‘LIGHT_PROBE’, ‘SCENE’, ‘SOUND’, ‘SPEAKER’, ‘TEXT’, ‘TEXTURE’, ‘WINDOWMANAGER’, ‘WORLD’, ‘WORKSPACE’], default ‘OBJECT’
	**/
	var id_type : bpy.types.drivertarget.DriverTarget.Enum1;
	/**
		Space in which transforms are used
		
		Type: enum in [‘WORLD_SPACE’, ‘TRANSFORM_SPACE’, ‘LOCAL_SPACE’], default ‘WORLD_SPACE’
	**/
	var transform_space : bpy.types.drivertarget.DriverTarget.Enum2;
	/**
		Driver variable type
		
		Type: enum in [‘LOC_X’, ‘LOC_Y’, ‘LOC_Z’, ‘ROT_X’, ‘ROT_Y’, ‘ROT_Z’, ‘SCALE_X’, ‘SCALE_Y’, ‘SCALE_Z’], default ‘LOC_X’
	**/
	var transform_type : bpy.types.drivertarget.DriverTarget.Enum3;
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