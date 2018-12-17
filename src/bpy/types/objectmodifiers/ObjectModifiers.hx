package bpy.types.objectmodifiers;
@:enum abstract Enum1(String) from String to String {
	var DATA_TRANSFER : String = "DATA_TRANSFER";
	var MESH_CACHE : String = "MESH_CACHE";
	var MESH_SEQUENCE_CACHE : String = "MESH_SEQUENCE_CACHE";
	var NORMAL_EDIT : String = "NORMAL_EDIT";
	var WEIGHTED_NORMAL : String = "WEIGHTED_NORMAL";
	var UV_PROJECT : String = "UV_PROJECT";
	var UV_WARP : String = "UV_WARP";
	var VERTEX_WEIGHT_EDIT : String = "VERTEX_WEIGHT_EDIT";
	var VERTEX_WEIGHT_MIX : String = "VERTEX_WEIGHT_MIX";
	var VERTEX_WEIGHT_PROXIMITY : String = "VERTEX_WEIGHT_PROXIMITY";
	var ARRAY : String = "ARRAY";
	var BEVEL : String = "BEVEL";
	var BOOLEAN : String = "BOOLEAN";
	var BUILD : String = "BUILD";
	var DECIMATE : String = "DECIMATE";
	var EDGE_SPLIT : String = "EDGE_SPLIT";
	var MASK : String = "MASK";
	var MIRROR : String = "MIRROR";
	var MULTIRES : String = "MULTIRES";
	var REMESH : String = "REMESH";
	var SCREW : String = "SCREW";
	var SKIN : String = "SKIN";
	var SOLIDIFY : String = "SOLIDIFY";
	var SUBSURF : String = "SUBSURF";
	var TRIANGULATE : String = "TRIANGULATE";
	var WIREFRAME : String = "WIREFRAME";
	var ARMATURE : String = "ARMATURE";
	var CAST : String = "CAST";
	var CURVE : String = "CURVE";
	var DISPLACE : String = "DISPLACE";
	var HOOK : String = "HOOK";
	var LAPLACIANDEFORM : String = "LAPLACIANDEFORM";
	var LATTICE : String = "LATTICE";
	var MESH_DEFORM : String = "MESH_DEFORM";
	var SHRINKWRAP : String = "SHRINKWRAP";
	var SIMPLE_DEFORM : String = "SIMPLE_DEFORM";
	var SMOOTH : String = "SMOOTH";
	var CORRECTIVE_SMOOTH : String = "CORRECTIVE_SMOOTH";
	var LAPLACIANSMOOTH : String = "LAPLACIANSMOOTH";
	var SURFACE_DEFORM : String = "SURFACE_DEFORM";
	var WARP : String = "WARP";
	var WAVE : String = "WAVE";
	var CLOTH : String = "CLOTH";
	var COLLISION : String = "COLLISION";
	var DYNAMIC_PAINT : String = "DYNAMIC_PAINT";
	var EXPLODE : String = "EXPLODE";
	var FLUID_SIMULATION : String = "FLUID_SIMULATION";
	var OCEAN : String = "OCEAN";
	var PARTICLE_INSTANCE : String = "PARTICLE_INSTANCE";
	var PARTICLE_SYSTEM : String = "PARTICLE_SYSTEM";
	var SMOKE : String = "SMOKE";
	var SOFT_BODY : String = "SOFT_BODY";
	var SURFACE : String = "SURFACE";
}/**
	Collection of object modifiers
**/
@:native("bpy.types.ObjectModifiers") extern class ObjectModifiers {
	/**
		Add a new modifier
		@param name New name for the modifier — string, (never None)
		@param type Modifier type to addDATA_TRANSFER Data Transfer.MESH_CACHE Mesh Cache.MESH_SEQUENCE_CACHE Mesh Sequence Cache.NORMAL_EDIT Normal Edit.WEIGHTED_NORMAL Weighted Normal.UV_PROJECT UV Project.UV_WARP UV Warp.VERTEX_WEIGHT_EDIT Vertex Weight Edit.VERTEX_WEIGHT_MIX Vertex Weight Mix.VERTEX_WEIGHT_PROXIMITY Vertex Weight Proximity.ARRAY Array.BEVEL Bevel.BOOLEAN Boolean.BUILD Build.DECIMATE Decimate.EDGE_SPLIT Edge Split.MASK Mask.MIRROR Mirror.MULTIRES Multiresolution.REMESH Remesh.SCREW Screw.SKIN Skin.SOLIDIFY Solidify.SUBSURF Subdivision Surface.TRIANGULATE Triangulate.WIREFRAME Wireframe, Generate a wireframe on the edges of a mesh.ARMATURE Armature.CAST Cast.CURVE Curve.DISPLACE Displace.HOOK Hook.LAPLACIANDEFORM Laplacian Deform.LATTICE Lattice.MESH_DEFORM Mesh Deform.SHRINKWRAP Shrinkwrap.SIMPLE_DEFORM Simple Deform.SMOOTH Smooth.CORRECTIVE_SMOOTH Smooth Corrective.LAPLACIANSMOOTH Smooth Laplacian.SURFACE_DEFORM Surface Deform.WARP Warp.WAVE Wave.CLOTH Cloth.COLLISION Collision.DYNAMIC_PAINT Dynamic Paint.EXPLODE Explode.FLUID_SIMULATION Fluid Simulation.OCEAN Ocean.PARTICLE_INSTANCE Particle Instance.PARTICLE_SYSTEM Particle System.SMOKE Smoke.SOFT_BODY Soft Body.SURFACE Surface. — enum in ['DATA_TRANSFER', 'MESH_CACHE', 'MESH_SEQUENCE_CACHE', 'NORMAL_EDIT', 'WEIGHTED_NORMAL', 'UV_PROJECT', 'UV_WARP', 'VERTEX_WEIGHT_EDIT', 'VERTEX_WEIGHT_MIX', 'VERTEX_WEIGHT_PROXIMITY', 'ARRAY', 'BEVEL', 'BOOLEAN', 'BUILD', 'DECIMATE', 'EDGE_SPLIT', 'MASK', 'MIRROR', 'MULTIRES', 'REMESH', 'SCREW', 'SKIN', 'SOLIDIFY', 'SUBSURF', 'TRIANGULATE', 'WIREFRAME', 'ARMATURE', 'CAST', 'CURVE', 'DISPLACE', 'HOOK', 'LAPLACIANDEFORM', 'LATTICE', 'MESH_DEFORM', 'SHRINKWRAP', 'SIMPLE_DEFORM', 'SMOOTH', 'CORRECTIVE_SMOOTH', 'LAPLACIANSMOOTH', 'SURFACE_DEFORM', 'WARP', 'WAVE', 'CLOTH', 'COLLISION', 'DYNAMIC_PAINT', 'EXPLODE', 'FLUID_SIMULATION', 'OCEAN', 'PARTICLE_INSTANCE', 'PARTICLE_SYSTEM', 'SMOKE', 'SOFT_BODY', 'SURFACE']
		
		@returns Modifier
	**/
	function pyNew(name:String, type:bpy.types.objectmodifiers.ObjectModifiers.Enum1):bpy.types.modifier.Modifier;
	/**
		Remove an existing modifier from the object
		@param modifier Modifier to remove — Modifier, (never None)
	**/
	function remove(modifier:bpy.types.modifier.Modifier):Void;
	/**
		Remove all modifiers from the object
	**/
	function clear():Void;
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