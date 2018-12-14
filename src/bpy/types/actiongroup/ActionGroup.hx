package bpy.types.actiongroup;
@:enum abstract Enum1(String) from String to String {
	var DEFAULT : String = "DEFAULT";
	var THEME01 : String = "THEME01";
	var THEME02 : String = "THEME02";
	var THEME03 : String = "THEME03";
	var THEME04 : String = "THEME04";
	var THEME05 : String = "THEME05";
	var THEME06 : String = "THEME06";
	var THEME07 : String = "THEME07";
	var THEME08 : String = "THEME08";
	var THEME09 : String = "THEME09";
	var THEME10 : String = "THEME10";
	var THEME11 : String = "THEME11";
	var THEME12 : String = "THEME12";
	var THEME13 : String = "THEME13";
	var THEME14 : String = "THEME14";
	var THEME15 : String = "THEME15";
	var THEME16 : String = "THEME16";
	var THEME17 : String = "THEME17";
	var THEME18 : String = "THEME18";
	var THEME19 : String = "THEME19";
	var THEME20 : String = "THEME20";
	var CUSTOM : String = "CUSTOM";
}/**
	Groups of F-Curves
**/
@:pythonImport("bpy.types.ActionGroup") extern class ActionGroup {
	/**
		F-Curves in this group
		
		Type: bpy_prop_collection of FCurve, (readonly)
	**/
	var channels(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Custom color set to use
		
		Type: enum in [‘DEFAULT’, ‘THEME01’, ‘THEME02’, ‘THEME03’, ‘THEME04’, ‘THEME05’, ‘THEME06’, ‘THEME07’, ‘THEME08’, ‘THEME09’, ‘THEME10’, ‘THEME11’, ‘THEME12’, ‘THEME13’, ‘THEME14’, ‘THEME15’, ‘THEME16’, ‘THEME17’, ‘THEME18’, ‘THEME19’, ‘THEME20’, ‘CUSTOM’], default ‘DEFAULT’
	**/
	var color_set : bpy.types.actiongroup.ActionGroup.Enum1;
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
		Action group is locked
		
		Type: boolean, default False
	**/
	var lock : Bool;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Action group is selected
		
		Type: boolean, default False
	**/
	var select : Bool;
	/**
		Action group is expanded
		
		Type: boolean, default False
	**/
	var show_expanded : Bool;
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