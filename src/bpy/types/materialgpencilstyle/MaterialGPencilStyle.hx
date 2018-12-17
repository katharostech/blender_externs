package bpy.types.materialgpencilstyle;
@:enum abstract Enum1(String) from String to String {
	var SOLID : String = "SOLID";
	var GRADIENT : String = "GRADIENT";
	var CHESSBOARD : String = "CHESSBOARD";
	var TEXTURE : String = "TEXTURE";
}@:enum abstract Enum2(String) from String to String {
	var LINEAR : String = "LINEAR";
	var RADIAL : String = "RADIAL";
}@:enum abstract Enum3(String) from String to String {
	var LINE : String = "LINE";
	var DOTS : String = "DOTS";
	var BOX : String = "BOX";
}@:enum abstract Enum4(String) from String to String {
	var SOLID : String = "SOLID";
	var TEXTURE : String = "TEXTURE";
}@:native("bpy.types.MaterialGPencilStyle") extern class MaterialGPencilStyle {
	/**
		
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var color : Array<Float>;
	/**
		Color for filling region bounded by each stroke
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var fill_color : Array<Float>;
	/**
		
		
		Type: Image
	**/
	var fill_image : bpy.types.image.Image;
	/**
		Select style used to fill strokes
		
		Type: enum in [‘SOLID’, ‘GRADIENT’, ‘CHESSBOARD’, ‘TEXTURE’], default ‘SOLID’
	**/
	var fill_style : bpy.types.materialgpencilstyle.MaterialGPencilStyle.Enum1;
	/**
		Flip filling colors
		
		Type: boolean, default False
	**/
	var flip : Bool;
	/**
		Display strokes using this color when showing onion skins
		
		Type: boolean, default False
	**/
	var ghost : Bool;
	/**
		Select type of gradient used to fill strokes
		
		Type: enum in [‘LINEAR’, ‘RADIAL’], default ‘LINEAR’
	**/
	var gradient_type : bpy.types.materialgpencilstyle.MaterialGPencilStyle.Enum2;
	/**
		Set color Visibility
		
		Type: boolean, default False
	**/
	var hide : Bool;
	/**
		True when opacity of fill is set high enough to be visible
		
		Type: boolean, default False, (readonly)
	**/
	var is_fill_visible(default, never) : Bool;
	/**
		True when opacity of stroke is set high enough to be visible
		
		Type: boolean, default False, (readonly)
	**/
	var is_stroke_visible(default, never) : Bool;
	/**
		Protect color from further editing and/or frame changes
		
		Type: boolean, default False
	**/
	var lock : Bool;
	/**
		Color for mixing with primary filling color
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var mix_color : Array<Float>;
	/**
		Mix Adjustment Factor
		
		Type: float in [0, 1], default 0.0
	**/
	var mix_factor : Float;
	/**
		Select draw mode for stroke
		
		Type: enum in [‘LINE’, ‘DOTS’, ‘BOX’], default ‘LINE’
	**/
	var mode : bpy.types.materialgpencilstyle.MaterialGPencilStyle.Enum3;
	/**
		Index number for the “Color Index” pass
		
		Type: int in [0, 32767], default 0
	**/
	var pass_index : Int;
	/**
		Pattern Orientation Angle
		
		Type: float in [-inf, inf], default 0.0
	**/
	var pattern_angle : Float;
	/**
		Box Size
		
		Type: float in [0.0001, 10], default 0.0
	**/
	var pattern_gridsize : Float;
	/**
		Pattern Radius
		
		Type: float in [0.0001, 10], default 0.0
	**/
	var pattern_radius : Float;
	/**
		Scale Factor for UV coordinates
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var pattern_scale : Array<Float>;
	/**
		Shift filling pattern in 2d space
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var pattern_shift : Array<Float>;
	/**
		Texture Pixel Size factor along the stroke
		
		Type: float in [1, 5000], default 0.0
	**/
	var pixel_size : Float;
	/**
		Show stroke fills of this material
		
		Type: boolean, default False
	**/
	var show_fill : Bool;
	/**
		Show stroke lines of this material
		
		Type: boolean, default False
	**/
	var show_stroke : Bool;
	/**
		
		
		Type: Image
	**/
	var stroke_image : bpy.types.image.Image;
	/**
		Select style used to draw strokes
		
		Type: enum in [‘SOLID’, ‘TEXTURE’], default ‘SOLID’
	**/
	var stroke_style : bpy.types.materialgpencilstyle.MaterialGPencilStyle.Enum4;
	/**
		Texture Orientation Angle
		
		Type: float in [-inf, inf], default 0.0
	**/
	var texture_angle : Float;
	/**
		Do not repeat texture and clamp to one instance only
		
		Type: boolean, default False
	**/
	var texture_clamp : Bool;
	/**
		Mix texture image with filling colors
		
		Type: boolean, default False
	**/
	var texture_mix : Bool;
	/**
		Shift Texture in 2d Space
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var texture_offset : Array<Float>;
	/**
		Texture Opacity
		
		Type: float in [0, 1], default 0.0
	**/
	var texture_opacity : Float;
	/**
		Scale Factor for Texture
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var texture_scale : Array<Float>;
	/**
		Use Fill Texture as a pattern to apply color
		
		Type: boolean, default False
	**/
	var use_fill_pattern : Bool;
	/**
		Use Stroke Texture as a pattern to apply color
		
		Type: boolean, default False
	**/
	var use_stroke_pattern : Bool;
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