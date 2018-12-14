package bpy.types.datatransfermodifier;
@:enum abstract Enum1(String) from String to String {
	var TOPOLOGY : String = "TOPOLOGY";
	var VERT_NEAREST : String = "VERT_NEAREST";
	var NEAREST : String = "NEAREST";
	var POLY_NEAREST : String = "POLY_NEAREST";
	var EDGEINTERP_VNORPROJ : String = "EDGEINTERP_VNORPROJ";
}@:enum abstract Enum2(String) from String to String {
	var ACTIVE : String = "ACTIVE";
	var NAME : String = "NAME";
	var INDEX : String = "INDEX";
}@:enum abstract Enum3(String) from String to String {
	var ACTIVE : String = "ACTIVE";
	var ALL : String = "ALL";
	var BONE_SELECT : String = "BONE_SELECT";
	var BONE_DEFORM : String = "BONE_DEFORM";
}@:enum abstract Enum4(String) from String to String {
	var ACTIVE : String = "ACTIVE";
	var NAME : String = "NAME";
	var INDEX : String = "INDEX";
}@:enum abstract Enum5(String) from String to String {
	var ACTIVE : String = "ACTIVE";
	var ALL : String = "ALL";
	var BONE_SELECT : String = "BONE_SELECT";
	var BONE_DEFORM : String = "BONE_DEFORM";
}@:enum abstract Enum6(String) from String to String {
	var ACTIVE : String = "ACTIVE";
	var NAME : String = "NAME";
	var INDEX : String = "INDEX";
}@:enum abstract Enum7(String) from String to String {
	var ACTIVE : String = "ACTIVE";
	var ALL : String = "ALL";
	var BONE_SELECT : String = "BONE_SELECT";
	var BONE_DEFORM : String = "BONE_DEFORM";
}@:enum abstract Enum8(String) from String to String {
	var TOPOLOGY : String = "TOPOLOGY";
	var NEAREST_NORMAL : String = "NEAREST_NORMAL";
	var NEAREST_POLYNOR : String = "NEAREST_POLYNOR";
	var NEAREST_POLY : String = "NEAREST_POLY";
	var POLYINTERP_NEAREST : String = "POLYINTERP_NEAREST";
	var POLYINTERP_LNORPROJ : String = "POLYINTERP_LNORPROJ";
}@:enum abstract Enum9(String) from String to String {
	var REPLACE : String = "REPLACE";
	var ABOVE_THRESHOLD : String = "ABOVE_THRESHOLD";
	var BELOW_THRESHOLD : String = "BELOW_THRESHOLD";
	var MIX : String = "MIX";
	var ADD : String = "ADD";
	var SUB : String = "SUB";
	var MUL : String = "MUL";
}@:enum abstract Enum10(String) from String to String {
	var TOPOLOGY : String = "TOPOLOGY";
	var NEAREST : String = "NEAREST";
	var NORMAL : String = "NORMAL";
	var POLYINTERP_PNORPROJ : String = "POLYINTERP_PNORPROJ";
}@:enum abstract Enum11(String) from String to String {
	var TOPOLOGY : String = "TOPOLOGY";
	var NEAREST : String = "NEAREST";
	var EDGE_NEAREST : String = "EDGE_NEAREST";
	var EDGEINTERP_NEAREST : String = "EDGEINTERP_NEAREST";
	var POLY_NEAREST : String = "POLY_NEAREST";
	var POLYINTERP_NEAREST : String = "POLYINTERP_NEAREST";
	var POLYINTERP_VNORPROJ : String = "POLYINTERP_VNORPROJ";
}/**
	Modifier transferring some data from a source mesh
**/
@:pythonImport("bpy.types.DataTransferModifier") extern class DataTransferModifier {
	/**
		Which edge data layers to transfer
		
		Type: enum set in {‘SHARP_EDGE’, ‘SEAM’, ‘CREASE’, ‘BEVEL_WEIGHT_EDGE’, ‘FREESTYLE_EDGE’}, default {‘SHARP_EDGE’}
	**/
	var data_types_edges : Dynamic;
	/**
		Which face corner data layers to transfer
		
		Type: enum set in {‘CUSTOM_NORMAL’, ‘VCOL’, ‘UV’}, default {‘CUSTOM_NORMAL’}
	**/
	var data_types_loops : Dynamic;
	/**
		Which poly data layers to transfer
		
		Type: enum set in {‘SMOOTH’, ‘FREESTYLE_FACE’}, default {‘SMOOTH’}
	**/
	var data_types_polys : Dynamic;
	/**
		Which vertex data layers to transfer
		
		Type: enum set in {‘VGROUP_WEIGHTS’, ‘BEVEL_WEIGHT_VERT’}, default {‘VGROUP_WEIGHTS’}
	**/
	var data_types_verts : Dynamic;
	/**
		Method used to map source edges to destination ones
		
		Type: enum in [‘TOPOLOGY’, ‘VERT_NEAREST’, ‘NEAREST’, ‘POLY_NEAREST’, ‘EDGEINTERP_VNORPROJ’], default ‘NEAREST’
	**/
	var edge_mapping : bpy.types.datatransfermodifier.DataTransferModifier.Enum1;
	/**
		Invert vertex group influence
		
		Type: boolean, default False
	**/
	var invert_vertex_group : Bool;
	/**
		Factor controlling precision of islands handling (typically, 0.1 should be enough, higher values can make things really slow)
		
		Type: float in [0, 1], default 0.0
	**/
	var islands_precision : Float;
	/**
		How to match source and destination layers
		
		Type: enum in [‘ACTIVE’, ‘NAME’, ‘INDEX’], default ‘NAME’
	**/
	var layers_uv_select_dst : bpy.types.datatransfermodifier.DataTransferModifier.Enum2;
	/**
		Which layers to transfer, in case of multi-layers types
		
		Type: enum in [‘ACTIVE’, ‘ALL’, ‘BONE_SELECT’, ‘BONE_DEFORM’], default ‘ALL’
	**/
	var layers_uv_select_src : bpy.types.datatransfermodifier.DataTransferModifier.Enum3;
	/**
		How to match source and destination layers
		
		Type: enum in [‘ACTIVE’, ‘NAME’, ‘INDEX’], default ‘NAME’
	**/
	var layers_vcol_select_dst : bpy.types.datatransfermodifier.DataTransferModifier.Enum4;
	/**
		Which layers to transfer, in case of multi-layers types
		
		Type: enum in [‘ACTIVE’, ‘ALL’, ‘BONE_SELECT’, ‘BONE_DEFORM’], default ‘ALL’
	**/
	var layers_vcol_select_src : bpy.types.datatransfermodifier.DataTransferModifier.Enum5;
	/**
		How to match source and destination layers
		
		Type: enum in [‘ACTIVE’, ‘NAME’, ‘INDEX’], default ‘NAME’
	**/
	var layers_vgroup_select_dst : bpy.types.datatransfermodifier.DataTransferModifier.Enum6;
	/**
		Which layers to transfer, in case of multi-layers types
		
		Type: enum in [‘ACTIVE’, ‘ALL’, ‘BONE_SELECT’, ‘BONE_DEFORM’], default ‘ALL’
	**/
	var layers_vgroup_select_src : bpy.types.datatransfermodifier.DataTransferModifier.Enum7;
	/**
		Method used to map source faces’ corners to destination ones
		
		Type: enum in [‘TOPOLOGY’, ‘NEAREST_NORMAL’, ‘NEAREST_POLYNOR’, ‘NEAREST_POLY’, ‘POLYINTERP_NEAREST’, ‘POLYINTERP_LNORPROJ’], default ‘NEAREST_POLYNOR’
	**/
	var loop_mapping : bpy.types.datatransfermodifier.DataTransferModifier.Enum8;
	/**
		Maximum allowed distance between source and destination element, for non-topology mappings
		
		Type: float in [0, inf], default 1.0
	**/
	var max_distance : Float;
	/**
		Factor to use when applying data to destination (exact behavior depends on mix mode)
		
		Type: float in [0, 1], default 1.0
	**/
	var mix_factor : Float;
	/**
		How to affect destination elements with source values
		
		Type: enum in [‘REPLACE’, ‘ABOVE_THRESHOLD’, ‘BELOW_THRESHOLD’, ‘MIX’, ‘ADD’, ‘SUB’, ‘MUL’], default ‘REPLACE’
	**/
	var mix_mode : bpy.types.datatransfermodifier.DataTransferModifier.Enum9;
	/**
		Object to transfer data from
		
		Type: Object
	**/
	var object : bpy.types.object.Object;
	/**
		Method used to map source faces to destination ones
		
		Type: enum in [‘TOPOLOGY’, ‘NEAREST’, ‘NORMAL’, ‘POLYINTERP_PNORPROJ’], default ‘NEAREST’
	**/
	var poly_mapping : bpy.types.datatransfermodifier.DataTransferModifier.Enum10;
	/**
		‘Width’ of rays (especially useful when raycasting against vertices or edges)
		
		Type: float in [0, inf], default 0.0
	**/
	var ray_radius : Float;
	/**
		Enable edge data transfer
		
		Type: boolean, default False
	**/
	var use_edge_data : Bool;
	/**
		Enable face corner data transfer
		
		Type: boolean, default False
	**/
	var use_loop_data : Bool;
	/**
		Source elements must be closer than given distance from destination one
		
		Type: boolean, default False
	**/
	var use_max_distance : Bool;
	/**
		Evaluate source and destination meshes in global space
		
		Type: boolean, default True
	**/
	var use_object_transform : Bool;
	/**
		Enable face data transfer
		
		Type: boolean, default False
	**/
	var use_poly_data : Bool;
	/**
		Enable vertex data transfer
		
		Type: boolean, default False
	**/
	var use_vert_data : Bool;
	/**
		Method used to map source vertices to destination ones
		
		Type: enum in [‘TOPOLOGY’, ‘NEAREST’, ‘EDGE_NEAREST’, ‘EDGEINTERP_NEAREST’, ‘POLY_NEAREST’, ‘POLYINTERP_NEAREST’, ‘POLYINTERP_VNORPROJ’], default ‘NEAREST’
	**/
	var vert_mapping : bpy.types.datatransfermodifier.DataTransferModifier.Enum11;
	/**
		Vertex group name for selecting the affected areas
		
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