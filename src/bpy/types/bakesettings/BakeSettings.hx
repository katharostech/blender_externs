package bpy.types.bakesettings;
@:enum abstract Enum1(String) from String to String {
	var POS_X : String = "POS_X";
	var POS_Y : String = "POS_Y";
	var POS_Z : String = "POS_Z";
	var NEG_X : String = "NEG_X";
	var NEG_Y : String = "NEG_Y";
	var NEG_Z : String = "NEG_Z";
}@:enum abstract Enum2(String) from String to String {
	var POS_X : String = "POS_X";
	var POS_Y : String = "POS_Y";
	var POS_Z : String = "POS_Z";
	var NEG_X : String = "NEG_X";
	var NEG_Y : String = "NEG_Y";
	var NEG_Z : String = "NEG_Z";
}@:enum abstract Enum3(String) from String to String {
	var POS_X : String = "POS_X";
	var POS_Y : String = "POS_Y";
	var POS_Z : String = "POS_Z";
	var NEG_X : String = "NEG_X";
	var NEG_Y : String = "NEG_Y";
	var NEG_Z : String = "NEG_Z";
}@:enum abstract Enum4(String) from String to String {
	var OBJECT : String = "OBJECT";
	var TANGENT : String = "TANGENT";
}@:enum abstract Enum5(String) from String to String {
	var INTERNAL : String = "INTERNAL";
	var EXTERNAL : String = "EXTERNAL";
}/**
	Bake data for a Scene data-block
**/
@:native("bpy.types.BakeSettings") extern class BakeSettings {
	/**
		Distance to use for the inward ray cast when using selected to active
		
		Type: float in [0, inf], default 0.0
	**/
	var cage_extrusion : Float;
	/**
		Object to use as cage instead of calculating the cage from the active object with cage extrusion
		
		Type: string, default “”, (never None)
	**/
	var cage_object : String;
	/**
		Image filepath to use when saving externally
		
		Type: string, default “”, (never None)
	**/
	var filepath : String;
	/**
		Vertical dimension of the baking map
		
		Type: int in [4, 10000], default 0
	**/
	var height : Int;
	/**
		
		
		Type: ImageFormatSettings, (readonly, never None)
	**/
	var image_settings(default, never) : bpy.types.imageformatsettings.ImageFormatSettings;
	/**
		Extends the baked result as a post process filter
		
		Type: int in [0, 32767], default 0
	**/
	var margin : Int;
	/**
		Axis to bake in blue channel
		
		Type: enum in [‘POS_X’, ‘POS_Y’, ‘POS_Z’, ‘NEG_X’, ‘NEG_Y’, ‘NEG_Z’], default ‘POS_X’
	**/
	var normal_b : bpy.types.bakesettings.BakeSettings.Enum1;
	/**
		Axis to bake in green channel
		
		Type: enum in [‘POS_X’, ‘POS_Y’, ‘POS_Z’, ‘NEG_X’, ‘NEG_Y’, ‘NEG_Z’], default ‘POS_X’
	**/
	var normal_g : bpy.types.bakesettings.BakeSettings.Enum2;
	/**
		Axis to bake in red channel
		
		Type: enum in [‘POS_X’, ‘POS_Y’, ‘POS_Z’, ‘NEG_X’, ‘NEG_Y’, ‘NEG_Z’], default ‘POS_X’
	**/
	var normal_r : bpy.types.bakesettings.BakeSettings.Enum3;
	/**
		Choose normal space for baking
		
		Type: enum in [‘OBJECT’, ‘TANGENT’], default ‘OBJECT’
	**/
	var normal_space : bpy.types.bakesettings.BakeSettings.Enum4;
	/**
		Passes to include in the active baking pass
		
		Type: enum set in {‘NONE’, ‘AO’, ‘EMIT’, ‘DIRECT’, ‘INDIRECT’, ‘COLOR’, ‘DIFFUSE’, ‘GLOSSY’, ‘TRANSMISSION’, ‘SUBSURFACE’}, default {}, (readonly)
	**/
	var pass_filter(default, never) : Dynamic;
	/**
		Choose how to save the baking map
		
		Type: enum in [‘INTERNAL’, ‘EXTERNAL’], default ‘INTERNAL’
	**/
	var save_mode : bpy.types.bakesettings.BakeSettings.Enum5;
	/**
		Automatically name the output file with the pass type (external only)
		
		Type: boolean, default False
	**/
	var use_automatic_name : Bool;
	/**
		Cast rays to active object from a cage
		
		Type: boolean, default False
	**/
	var use_cage : Bool;
	/**
		Clear Images before baking (internal only)
		
		Type: boolean, default False
	**/
	var use_clear : Bool;
	/**
		Add ambient occlusion contribution
		
		Type: boolean, default False
	**/
	var use_pass_ambient_occlusion : Bool;
	/**
		Color the pass
		
		Type: boolean, default False
	**/
	var use_pass_color : Bool;
	/**
		Add diffuse contribution
		
		Type: boolean, default False
	**/
	var use_pass_diffuse : Bool;
	/**
		Add direct lighting contribution
		
		Type: boolean, default False
	**/
	var use_pass_direct : Bool;
	/**
		Add emission contribution
		
		Type: boolean, default False
	**/
	var use_pass_emit : Bool;
	/**
		Add glossy contribution
		
		Type: boolean, default False
	**/
	var use_pass_glossy : Bool;
	/**
		Add indirect lighting contribution
		
		Type: boolean, default False
	**/
	var use_pass_indirect : Bool;
	/**
		Add subsurface contribution
		
		Type: boolean, default False
	**/
	var use_pass_subsurface : Bool;
	/**
		Add transmission contribution
		
		Type: boolean, default False
	**/
	var use_pass_transmission : Bool;
	/**
		Bake shading on the surface of selected objects to the active object
		
		Type: boolean, default False
	**/
	var use_selected_to_active : Bool;
	/**
		Split external images per material (external only)
		
		Type: boolean, default False
	**/
	var use_split_materials : Bool;
	/**
		Horizontal dimension of the baking map
		
		Type: int in [4, 10000], default 0
	**/
	var width : Int;
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