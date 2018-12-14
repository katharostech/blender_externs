package bpy.types.hookgpencilmodifier;
@:enum abstract Enum1(String) from String to String {
	var NONE : String = "NONE";
	var CURVE : String = "CURVE";
	var SMOOTH : String = "SMOOTH";
	var SPHERE : String = "SPHERE";
	var ROOT : String = "ROOT";
	var INVERSE_SQUARE : String = "INVERSE_SQUARE";
	var SHARP : String = "SHARP";
	var LINEAR : String = "LINEAR";
	var CONSTANT : String = "CONSTANT";
}/**
	Hook modifier to modify the location of stroke points
**/
@:pythonImport("bpy.types.HookGpencilModifier") extern class HookGpencilModifier {
	/**
		
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var center : Array<Float>;
	/**
		Custom Lamp Falloff Curve
		
		Type: CurveMapping, (readonly)
	**/
	var falloff_curve(default, never) : bpy.types.curvemapping.CurveMapping;
	/**
		If not zero, the distance from the hook where influence ends
		
		Type: float in [0, inf], default 0.0
	**/
	var falloff_radius : Float;
	/**
		
		
		Type: enum in [‘NONE’, ‘CURVE’, ‘SMOOTH’, ‘SPHERE’, ‘ROOT’, ‘INVERSE_SQUARE’, ‘SHARP’, ‘LINEAR’, ‘CONSTANT’], default ‘NONE’
	**/
	var falloff_type : bpy.types.hookgpencilmodifier.HookGpencilModifier.Enum1;
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
		Inverse filter
		
		Type: boolean, default False
	**/
	var invert_vertex : Bool;
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
		Reverse the transformation between this object and its target
		
		Type: float multi-dimensional array of 4 * 4 items in [-inf, inf], default ((0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0))
	**/
	var matrix_inverse : Array<Float>;
	/**
		Parent Object for hook, also recalculates and clears offset
		
		Type: Object
	**/
	var object : bpy.types.object.Object;
	/**
		Pass index
		
		Type: int in [0, 100], default 0
	**/
	var pass_index : Int;
	/**
		Relative force of the hook
		
		Type: float in [0, 1], default 0.0
	**/
	var strength : Float;
	/**
		Name of Parent Bone for hook (if applicable), also recalculates and clears offset
		
		Type: string, default “”, (never None)
	**/
	var subtarget : String;
	/**
		Compensate for non-uniform object scale
		
		Type: boolean, default False
	**/
	var use_falloff_uniform : Bool;
	/**
		Vertex group name for modulating the deform
		
		Type: string, default “”, (never None)
	**/
	var vertex_group : String;
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