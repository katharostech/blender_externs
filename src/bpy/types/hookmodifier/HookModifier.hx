package bpy.types.hookmodifier;
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
	Hook modifier to modify the location of vertices
**/
@:pythonImport("bpy.types.HookModifier") extern class HookModifier {
	/**
		
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var center : Array<Float>;
	/**
		Custom falloff curve
		
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
	var falloff_type : bpy.types.hookmodifier.HookModifier.Enum1;
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
		Name of Vertex Group which determines influence of modifier per point
		
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
		
		
		Type: enum in [‘DATA_TRANSFER’, ‘MESH_CACHE’, ‘MESH_SEQUENCE_CACHE’, ‘NORMAL_EDIT’, ‘WEIGHTED_NORMAL’, ‘UV_PROJECT’, ‘UV_WARP’, ‘VERTEX_WEIGHT_EDIT’, ‘VERTEX_WEIGHT_MIX’, ‘VERTEX_WEIGHT_PROXIMITY’, ‘ARRAY’, ‘BEVEL’, ‘BOOLEAN’, ‘BUILD’, ‘DECIMATE’, ‘EDGE_SPLIT’, ‘MASK’, ‘MIRROR’, ‘MULTIRES’, ‘REMESH’, ‘SCREW’, ‘SKIN’, ‘SOLIDIFY’, ‘SUBSURF’, ‘TRIANGULATE’, ‘WIREFRAME’, ‘ARMATURE’, ‘CAST’, ‘CURVE’, ‘DISPLACE’, ‘HOOK’, ‘LAPLACIANDEFORM’, ‘LATTICE’, ‘MESH_DEFORM’, ‘SHRINKWRAP’, ‘SIMPLE_DEFORM’, ‘SMOOTH’, ‘CORRECTIVE_SMOOTH’, ‘LAPLACIANSMOOTH’, ‘SURFACE_DEFORM’, ‘WARP’, ‘WAVE’, ‘CLOTH’, ‘COLLISION’, ‘DYNAMIC_PAINT’, ‘EXPLODE’, ‘FLUID_SIMULATION’, ‘OCEAN’, ‘PARTICLE_INSTANCE’, ‘PARTICLE_SYSTEM’, ‘SMOKE’, ‘SOFT_BODY’, ‘SURFACE’], default ‘DATA_TRANSFER’, (readonly)
	**/
	var type(default, never) : bpy.types.modifier.Modifier.Enum1;
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
		Adjust edit cage to modifier result
		
		Type: boolean, default False
	**/
	var show_on_cage : Bool;
	/**
		Set modifier expanded in the user interface
		
		Type: boolean, default False
	**/
	var show_expanded : Bool;
	/**
		Apply this and all preceding deformation modifiers on splines’ points rather than on filled curve/surface
		
		Type: boolean, default False
	**/
	var use_apply_on_spline : Bool;
}