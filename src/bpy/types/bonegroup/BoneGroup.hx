package bpy.types.bonegroup;
@:enum abstract Enum1(String) from String to String {
	var DEFAULT : String = "DEFAULT";
	var pyTHEME01 : String = "THEME01";
	var pyTHEME02 : String = "THEME02";
	var pyTHEME03 : String = "THEME03";
	var pyTHEME04 : String = "THEME04";
	var pyTHEME05 : String = "THEME05";
	var pyTHEME06 : String = "THEME06";
	var pyTHEME07 : String = "THEME07";
	var pyTHEME08 : String = "THEME08";
	var pyTHEME09 : String = "THEME09";
	var pyTHEME10 : String = "THEME10";
	var pyTHEME11 : String = "THEME11";
	var pyTHEME12 : String = "THEME12";
	var pyTHEME13 : String = "THEME13";
	var pyTHEME14 : String = "THEME14";
	var pyTHEME15 : String = "THEME15";
	var pyTHEME16 : String = "THEME16";
	var pyTHEME17 : String = "THEME17";
	var pyTHEME18 : String = "THEME18";
	var pyTHEME19 : String = "THEME19";
	var pyTHEME20 : String = "THEME20";
	var CUSTOM : String = "CUSTOM";
}/**
	Groups of Pose Channels (Bones)
**/
@:native("bpy.types.BoneGroup") extern class BoneGroup {
	/**
		Custom color set to use
		
		Type: enum in [‘DEFAULT’, ‘THEME01’, ‘THEME02’, ‘THEME03’, ‘THEME04’, ‘THEME05’, ‘THEME06’, ‘THEME07’, ‘THEME08’, ‘THEME09’, ‘THEME10’, ‘THEME11’, ‘THEME12’, ‘THEME13’, ‘THEME14’, ‘THEME15’, ‘THEME16’, ‘THEME17’, ‘THEME18’, ‘THEME19’, ‘THEME20’, ‘CUSTOM’], default ‘DEFAULT’
	**/
	var color_set : bpy.types.bonegroup.BoneGroup.Enum1;
	/**
		Copy of the colors associated with the group’s color set
		
		Type: ThemeBoneColorSet, (readonly, never None)
	**/
	var colors(default, never) : bpy.types.themebonecolorset.ThemeBoneColorSet;
	/**
		Color set is user-defined instead of a fixed theme color set
		
		Type: boolean, default False, (readonly)
	**/
	var is_custom_color_set(default, never) : Bool;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var name : String;
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