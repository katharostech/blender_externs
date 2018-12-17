package bpy.types.solidifymodifier;
/**
	Create a solid skin by extruding, compensating for sharp angles
**/
@:native("bpy.types.SolidifyModifier") extern class SolidifyModifier {
	/**
		Assign a crease to inner edges
		
		Type: float in [0, 1], default 0.0
	**/
	var edge_crease_inner : Float;
	/**
		Assign a crease to outer edges
		
		Type: float in [0, 1], default 0.0
	**/
	var edge_crease_outer : Float;
	/**
		Assign a crease to the edges making up the rim
		
		Type: float in [0, 1], default 0.0
	**/
	var edge_crease_rim : Float;
	/**
		Invert the vertex group influence
		
		Type: boolean, default False
	**/
	var invert_vertex_group : Bool;
	/**
		Offset material index of generated faces
		
		Type: int in [-32768, 32767], default 0
	**/
	var material_offset : Int;
	/**
		Offset material index of generated rim faces
		
		Type: int in [-32768, 32767], default 0
	**/
	var material_offset_rim : Int;
	/**
		Offset the thickness from the center
		
		Type: float in [-inf, inf], default 0.0
	**/
	var offset : Float;
	/**
		Thickness of the shell
		
		Type: float in [-inf, inf], default 0.0
	**/
	var thickness : Float;
	/**
		Offset clamp based on geometry scale
		
		Type: float in [0, 100], default 0.0
	**/
	var thickness_clamp : Float;
	/**
		Thickness factor to use for zero vertex group influence
		
		Type: float in [0, 1], default 0.0
	**/
	var thickness_vertex_group : Float;
	/**
		Maintain thickness by adjusting for sharp corners (slow, disable when not needed)
		
		Type: boolean, default False
	**/
	var use_even_offset : Bool;
	/**
		Invert the face direction
		
		Type: boolean, default False
	**/
	var use_flip_normals : Bool;
	/**
		Calculate normals which result in more even thickness (slow, disable when not needed)
		
		Type: boolean, default False
	**/
	var use_quality_normals : Bool;
	/**
		Create edge loops between the inner and outer surfaces on face edges (slow, disable when not needed)
		
		Type: boolean, default False
	**/
	var use_rim : Bool;
	/**
		Only add the rim to the original data
		
		Type: boolean, default False
	**/
	var use_rim_only : Bool;
	/**
		Vertex group name
		
		Type: string, default “”, (never None)
	**/
	var vertex_group : String;
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