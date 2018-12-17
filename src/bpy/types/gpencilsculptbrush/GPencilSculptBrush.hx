package bpy.types.gpencilsculptbrush;
@:enum abstract Enum1(String) from String to String {
	var ADD : String = "ADD";
	var SUBTRACT : String = "SUBTRACT";
}/**
	Stroke editing brush
**/
@:native("bpy.types.GPencilSculptBrush") extern class GPencilSculptBrush {
	/**
		Color for the cursor for addition
		
		Type: float array of 3 items in [0, 1], default (1.0, 0.6, 0.6)
	**/
	var cursor_color_add : Array<Float>;
	/**
		Color for the cursor for substration
		
		Type: float array of 3 items in [0, 1], default (0.6, 0.6, 1.0)
	**/
	var cursor_color_sub : Array<Float>;
	/**
		
		
		Type: enum in [‘ADD’, ‘SUBTRACT’], default ‘ADD’
	**/
	var direction : bpy.types.gpencilsculptbrush.GPencilSculptBrush.Enum1;
	/**
		Radius of the brush in pixels
		
		Type: int in [1, 1000], default 0
	**/
	var size : Int;
	/**
		Brush strength
		
		Type: float in [0.001, 1], default 0.0
	**/
	var strength : Float;
	/**
		Target weight
		
		Type: float in [0, 1], default 0.0
	**/
	var target_weight : Float;
	/**
		Enable cursor on screen
		
		Type: boolean, default True
	**/
	var use_cursor : Bool;
	/**
		Affect pressure values as well when smoothing strokes
		
		Type: boolean, default False
	**/
	var use_edit_pressure : Bool;
	/**
		Strength of brush decays with distance from cursor
		
		Type: boolean, default False
	**/
	var use_falloff : Bool;
	/**
		Enable tablet pressure sensitivity for radius
		
		Type: boolean, default False
	**/
	var use_pressure_radius : Bool;
	/**
		Enable tablet pressure sensitivity for strength
		
		Type: boolean, default False
	**/
	var use_pressure_strength : Bool;
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