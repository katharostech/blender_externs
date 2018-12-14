package bpy.types.themebonecolorset;
/**
	Theme settings for bone color sets
**/
@:pythonImport("bpy.types.ThemeBoneColorSet") extern class ThemeBoneColorSet {
	/**
		Color used for active bones
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var active : Array<Float>;
	/**
		Color used for the surface of bones
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var normal : Array<Float>;
	/**
		Color used for selected bones
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var select : Array<Float>;
	/**
		Allow the use of colors indicating constraints/keyed status
		
		Type: boolean, default False
	**/
	var show_colored_constraints : Bool;
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