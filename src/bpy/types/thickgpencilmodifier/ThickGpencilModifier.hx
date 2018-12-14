package bpy.types.thickgpencilmodifier;
/**
	Subdivide and Smooth Stroke modifier
**/
@:pythonImport("bpy.types.ThickGpencilModifier") extern class ThickGpencilModifier {
	/**
		Custom Thickness Curve
		
		Type: CurveMapping, (readonly)
	**/
	var curve(default, never) : bpy.types.curvemapping.CurveMapping;
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
		Normalize the full stroke to modifier thickness
		
		Type: boolean, default False
	**/
	var normalize_thickness : Bool;
	/**
		Pass index
		
		Type: int in [0, 100], default 0
	**/
	var pass_index : Int;
	/**
		Factor of thickness change
		
		Type: int in [-100, 500], default 0
	**/
	var thickness : Int;
	/**
		Use a custom curve to define thickness changes
		
		Type: boolean, default False
	**/
	var use_custom_curve : Bool;
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