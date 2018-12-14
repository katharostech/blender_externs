package bpy.types.arraygpencilmodifier;
/**
	Create grid of duplicate instances
**/
@:pythonImport("bpy.types.ArrayGpencilModifier") extern class ArrayGpencilModifier {
	/**
		Number of items
		
		Type: int in [1, inf], default 0
	**/
	var count : Int;
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
		Keep the original stroke in front of new instances (only affect by layer)
		
		Type: boolean, default False
	**/
	var keep_on_top : Bool;
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
		Value for the distance between items
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var offset : Array<Float>;
	/**
		Use the location and rotation of another object to determine the distance and rotational change between arrayed items
		
		Type: Object
	**/
	var offset_object : bpy.types.object.Object;
	/**
		Pass index
		
		Type: int in [0, 100], default 0
	**/
	var pass_index : Int;
	/**
		Use random factors for rotation
		
		Type: boolean, default False
	**/
	var random_rot : Bool;
	/**
		Use random factors for scale
		
		Type: boolean, default False
	**/
	var random_scale : Bool;
	/**
		Index of the material used for generated strokes (0 keep original material)
		
		Type: int in [0, inf], default 0
	**/
	var replace_material : Int;
	/**
		Random factor for rotation
		
		Type: float in [-10, 10], default 0.0
	**/
	var rot_factor : Float;
	/**
		Value for changes in rotation
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var rotation : Array<Float>;
	/**
		Value for changes in scale
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var scale : Array<Float>;
	/**
		Random factor for scale
		
		Type: float in [-10, 10], default 0.0
	**/
	var scale_factor : Float;
	/**
		Shiftness value
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var shift : Array<Float>;
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