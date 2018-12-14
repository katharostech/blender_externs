package bpy.types.colormanagedsequencercolorspacesettings;
@:enum abstract Enum1(String) from String to String {
	var F : String = "F";
	var L : String = "L";
	var L : String = "L";
	var N : String = "N";
	var R : String = "R";
	var RGB : String = "RGB";
	var VD16 : String = "VD16";
	var XYZ : String = "XYZ";
}/**
	Input color space settings
**/
@:pythonImport("bpy.types.ColorManagedSequencerColorspaceSettings") extern class ColorManagedSequencerColorspaceSettings {
	/**
		Color space that the sequencer operates in
		
		Type: enum in [‘Filmic Log’, ‘Linear’, ‘Linear ACES’, ‘Non-Color’, ‘Raw’, ‘sRGB’, ‘VD16’, ‘XYZ’], default ‘NONE’
	**/
	var name : bpy.types.colormanagedsequencercolorspacesettings.ColorManagedSequencerColorspaceSettings.Enum1;
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