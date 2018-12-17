package bpy.types.unitsettings;
@:enum abstract Enum1(String) from String to String {
	var DEFAULT : String = "DEFAULT";
}@:enum abstract Enum2(String) from String to String {
	var DEFAULT : String = "DEFAULT";
}@:enum abstract Enum3(String) from String to String {
	var NONE : String = "NONE";
	var METRIC : String = "METRIC";
	var IMPERIAL : String = "IMPERIAL";
}@:enum abstract Enum4(String) from String to String {
	var DEGREES : String = "DEGREES";
	var RADIANS : String = "RADIANS";
}@:enum abstract Enum5(String) from String to String {
	var DEFAULT : String = "DEFAULT";
}@:native("bpy.types.UnitSettings") extern class UnitSettings {
	/**
		Unit that will be used to display length values
		
		Type: enum in [‘DEFAULT’], default ‘DEFAULT’
	**/
	var length_unit : bpy.types.unitsettings.UnitSettings.Enum1;
	/**
		Unit that will be used to display mass values
		
		Type: enum in [‘DEFAULT’], default ‘DEFAULT’
	**/
	var mass_unit : bpy.types.unitsettings.UnitSettings.Enum2;
	/**
		Scale to use when converting between blender units and dimensions. When working at microscopic or astronomical scale, a small or large unit scale respectively can be used to avoid numerical precision problems
		
		Type: float in [1e-05, 100000], default 0.0
	**/
	var scale_length : Float;
	/**
		The unit system to use for button display
		
		Type: enum in [‘NONE’, ‘METRIC’, ‘IMPERIAL’], default ‘NONE’
	**/
	var system : bpy.types.unitsettings.UnitSettings.Enum3;
	/**
		Unit to use for displaying/editing rotation values
		
		Type: enum in [‘DEGREES’, ‘RADIANS’], default ‘DEGREES’
	**/
	var system_rotation : bpy.types.unitsettings.UnitSettings.Enum4;
	/**
		Unit that will be used to display time values
		
		Type: enum in [‘DEFAULT’], default ‘DEFAULT’
	**/
	var time_unit : bpy.types.unitsettings.UnitSettings.Enum5;
	/**
		Display units in pairs (e.g. 1m 0cm)
		
		Type: boolean, default False
	**/
	var use_separate : Bool;
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