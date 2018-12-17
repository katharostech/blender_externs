package bpy.types.simpledeformmodifier;
@:enum abstract Enum1(String) from String to String {
	var X : String = "X";
	var Y : String = "Y";
	var Z : String = "Z";
}@:enum abstract Enum2(String) from String to String {
	var TWIST : String = "TWIST";
	var BEND : String = "BEND";
	var TAPER : String = "TAPER";
	var STRETCH : String = "STRETCH";
}/**
	Simple deformation modifier to apply effects such as twisting and bending
**/
@:native("bpy.types.SimpleDeformModifier") extern class SimpleDeformModifier {
	/**
		Angle of deformation
		
		Type: float in [-inf, inf], default 0.785398
	**/
	var angle : Float;
	/**
		Deform around local axis
		
		Type: enum in [‘X’, ‘Y’, ‘Z’], default ‘X’
	**/
	var deform_axis : bpy.types.simpledeformmodifier.SimpleDeformModifier.Enum1;
	/**
		
		
		Type: enum in [‘TWIST’, ‘BEND’, ‘TAPER’, ‘STRETCH’], default ‘TWIST’
	**/
	var deform_method : bpy.types.simpledeformmodifier.SimpleDeformModifier.Enum2;
	/**
		Amount to deform object
		
		Type: float in [-inf, inf], default 0.0
	**/
	var factor : Float;
	/**
		Invert vertex group influence
		
		Type: boolean, default False
	**/
	var invert_vertex_group : Bool;
	/**
		Lower/Upper limits for deform
		
		Type: float array of 2 items in [0, 1], default (0.0, 0.0)
	**/
	var limits : Array<Float>;
	/**
		Do not allow deformation along the X axis
		
		Type: boolean, default False
	**/
	var lock_x : Bool;
	/**
		Do not allow deformation along the Y axis
		
		Type: boolean, default False
	**/
	var lock_y : Bool;
	/**
		Do not allow deformation along the Z axis
		
		Type: boolean, default False
	**/
	var lock_z : Bool;
	/**
		Offset the origin and orientation of the deformation
		
		Type: Object
	**/
	var origin : bpy.types.object.Object;
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