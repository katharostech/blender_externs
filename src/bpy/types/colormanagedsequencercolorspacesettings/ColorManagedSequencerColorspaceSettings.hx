package bpy.types.colormanagedsequencercolorspacesettings;
@:enum abstract Enum1(String) from String to String {
	var FilmicLog : String = "Filmic Log";
	var Linear : String = "Linear";
	var LinearACES : String = "Linear ACES";
	var NonColor : String = "Non-Color";
	var Raw : String = "Raw";
	var sRGB : String = "sRGB";
	var pyVD16 : String = "VD16";
	var XYZ : String = "XYZ";
}/**
	Input color space settings
**/
@:native("bpy.types.ColorManagedSequencerColorspaceSettings") extern class ColorManagedSequencerColorspaceSettings {
	/**
		Color space that the sequencer operates in
		
		Type: enum in [‘Filmic Log’, ‘Linear’, ‘Linear ACES’, ‘Non-Color’, ‘Raw’, ‘sRGB’, ‘VD16’, ‘XYZ’], default ‘NONE’
	**/
	var name : bpy.types.colormanagedsequencercolorspacesettings.ColorManagedSequencerColorspaceSettings.Enum1;
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