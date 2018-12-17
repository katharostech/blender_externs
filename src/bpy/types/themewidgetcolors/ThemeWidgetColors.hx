package bpy.types.themewidgetcolors;
/**
	Theme settings for widget color sets
**/
@:native("bpy.types.ThemeWidgetColors") extern class ThemeWidgetColors {
	/**
		
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var inner : Array<Float>;
	/**
		
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var inner_sel : Array<Float>;
	/**
		
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var item : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var outline : Array<Float>;
	/**
		Amount of edge rounding
		
		Type: float in [0, 1], default 0.0
	**/
	var roundness : Float;
	/**
		
		
		Type: int in [-100, 100], default 0
	**/
	var shadedown : Int;
	/**
		
		
		Type: int in [-100, 100], default 0
	**/
	var shadetop : Int;
	/**
		
		
		Type: boolean, default False
	**/
	var show_shaded : Bool;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var text : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var text_sel : Array<Float>;
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