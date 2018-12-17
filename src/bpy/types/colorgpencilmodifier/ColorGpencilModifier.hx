package bpy.types.colorgpencilmodifier;
@:enum abstract Enum1(String) from String to String {
	var BOTH : String = "BOTH";
	var STROKE : String = "STROKE";
	var FILL : String = "FILL";
}/**
	Change Hue/Saturation modifier
**/
@:native("bpy.types.ColorGpencilModifier") extern class ColorGpencilModifier {
	/**
		When apply modifier, create new material
		
		Type: boolean, default False
	**/
	var create_materials : Bool;
	/**
		Color Hue
		
		Type: float in [0, 2], default 0.0
	**/
	var hue : Float;
	/**
		Inverse filter
		
		Type: boolean, default False
	**/
	var invert_layer_pass : Bool;
	/**
		Inverse filter
		
		Type: boolean, default False
	**/
	var invert_layers : Bool;
	/**
		Inverse filter
		
		Type: boolean, default False
	**/
	var invert_material_pass : Bool;
	/**
		Layer name
		
		Type: string, default “”, (never None)
	**/
	var layer : String;
	/**
		Layer pass index
		
		Type: int in [0, 100], default 0
	**/
	var layer_pass : Int;
	/**
		Set what colors of the stroke are affected
		
		Type: enum in [‘BOTH’, ‘STROKE’, ‘FILL’], default ‘BOTH’
	**/
	var modify_color : bpy.types.colorgpencilmodifier.ColorGpencilModifier.Enum1;
	/**
		Pass index
		
		Type: int in [0, 100], default 0
	**/
	var pass_index : Int;
	/**
		Color Saturation
		
		Type: float in [0, 2], default 0.0
	**/
	var saturation : Float;
	/**
		Color Value
		
		Type: float in [0, 2], default 0.0
	**/
	var value : Float;
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
	/**
		Modifier name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		
		
		Type: enum in [‘GP_ARRAY’, ‘GP_BUILD’, ‘GP_MIRROR’, ‘GP_SIMPLIFY’, ‘GP_SUBDIV’, ‘GP_ARMATURE’, ‘GP_HOOK’, ‘GP_LATTICE’, ‘GP_NOISE’, ‘GP_OFFSET’, ‘GP_SMOOTH’, ‘GP_THICK’, ‘GP_TIME’, ‘GP_COLOR’, ‘GP_OPACITY’, ‘GP_TINT’], default ‘GP_ARRAY’, (readonly)
	**/
	var type(default, never) : bpy.types.gpencilmodifier.GpencilModifier.Enum1;
	/**
		Display modifier in viewport
		
		Type: boolean, default False
	**/
	var show_viewport : Bool;
	/**
		Use modifier during render
		
		Type: boolean, default False
	**/
	var show_render : Bool;
	/**
		Display modifier in Edit mode
		
		Type: boolean, default False
	**/
	var show_in_editmode : Bool;
	/**
		Set modifier expanded in the user interface
		
		Type: boolean, default False
	**/
	var show_expanded : Bool;
}