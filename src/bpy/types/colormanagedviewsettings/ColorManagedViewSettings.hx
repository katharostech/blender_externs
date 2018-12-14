package bpy.types.colormanagedviewsettings;
@:enum abstract Enum1(String) from String to String {
	var NONE : String = "NONE";
}@:enum abstract Enum2(String) from String to String {
	var NONE : String = "NONE";
}/**
	Color management settings used for displaying images on the display
**/
@:pythonImport("bpy.types.ColorManagedViewSettings") extern class ColorManagedViewSettings {
	/**
		Color curve mapping applied before display transform
		
		Type: CurveMapping, (readonly)
	**/
	var curve_mapping(default, never) : bpy.types.curvemapping.CurveMapping;
	/**
		Exposure (stops) applied before display transform
		
		Type: float in [-32, 32], default 0.0
	**/
	var exposure : Float;
	/**
		Amount of gamma modification applied after display transform
		
		Type: float in [0, 5], default 1.0
	**/
	var gamma : Float;
	/**
		Additional transform applied before view transform for an artistic needs
		
		Type: enum in [‘NONE’], default ‘NONE’
	**/
	var look : bpy.types.colormanagedviewsettings.ColorManagedViewSettings.Enum1;
	/**
		Use RGB curved for pre-display transformation
		
		Type: boolean, default False
	**/
	var use_curve_mapping : Bool;
	/**
		View used when converting image to a display space
		
		Type: enum in [‘NONE’], default ‘NONE’
	**/
	var view_transform : bpy.types.colormanagedviewsettings.ColorManagedViewSettings.Enum2;
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