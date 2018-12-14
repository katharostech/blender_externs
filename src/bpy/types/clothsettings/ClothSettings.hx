package bpy.types.clothsettings;
@:enum abstract Enum1(String) from String to String {
	var ANGULAR : String = "ANGULAR";
	var LINEAR : String = "LINEAR";
}/**
	Cloth simulation settings for an object
**/
@:pythonImport("bpy.types.ClothSettings") extern class ClothSettings {
	/**
		Air has normally some thickness which slows falling things down
		
		Type: float in [0, 10], default 0.0
	**/
	var air_damping : Float;
	/**
		Amount of damping in bending behavior
		
		Type: float in [0, 1000], default 0.0
	**/
	var bending_damping : Float;
	/**
		Physical model for simulating bending forces
		
		Type: enum in [‘ANGULAR’, ‘LINEAR’], default ‘LINEAR’
	**/
	var bending_model : bpy.types.clothsettings.ClothSettings.Enum1;
	/**
		How much the material resists bending
		
		Type: float in [0, 10000], default 0.0
	**/
	var bending_stiffness : Float;
	/**
		Maximum bending stiffness value
		
		Type: float in [0, 10000], default 0.0
	**/
	var bending_stiffness_max : Float;
	/**
		
		
		Type: float in [0, 1], default 0.0
	**/
	var collider_friction : Float;
	/**
		Amount of damping in compression behavior
		
		Type: float in [0, 50], default 0.0
	**/
	var compression_damping : Float;
	/**
		How much the material resists compression
		
		Type: float in [0, 10000], default 0.0
	**/
	var compression_stiffness : Float;
	/**
		Maximum compression stiffness value
		
		Type: float in [0, 10000], default 0.0
	**/
	var compression_stiffness_max : Float;
	/**
		Influence of target density on the simulation
		
		Type: float in [0, 1], default 0.0
	**/
	var density_strength : Float;
	/**
		Maximum density of hair
		
		Type: float in [0, 10000], default 0.0
	**/
	var density_target : Float;
	/**
		
		
		Type: EffectorWeights, (readonly)
	**/
	var effector_weights(default, never) : bpy.types.effectorweights.EffectorWeights;
	/**
		Default Goal (vertex target position) value, when no Vertex Group used
		
		Type: float in [0, 1], default 0.0
	**/
	var goal_default : Float;
	/**
		Goal (vertex target position) friction
		
		Type: float in [0, 50], default 0.0
	**/
	var goal_friction : Float;
	/**
		Goal maximum, vertex group weights are scaled to match this range
		
		Type: float in [0, 1], default 0.0
	**/
	var goal_max : Float;
	/**
		Goal minimum, vertex group weights are scaled to match this range
		
		Type: float in [0, 1], default 0.0
	**/
	var goal_min : Float;
	/**
		Goal (vertex target position) spring stiffness
		
		Type: float in [0, 0.999], default 0.0
	**/
	var goal_spring : Float;
	/**
		Gravity or external force vector
		
		Type: float array of 3 items in [-100, 100], default (0.0, 0.0, 0.0)
	**/
	var gravity : Array<Float>;
	/**
		
		
		Type: float in [0, 1], default 0.0
	**/
	var internal_friction : Float;
	/**
		Mass of cloth material
		
		Type: float in [0, 10], default 0.0
	**/
	var mass : Float;
	/**
		Pin (vertex target position) spring stiffness
		
		Type: float in [0, 50], default 0.0
	**/
	var pin_stiffness : Float;
	/**
		Quality of the simulation in steps per frame (higher is better quality but slower)
		
		Type: int in [1, inf], default 0
	**/
	var quality : Int;
	/**
		Shape key to use the rest spring lengths from
		
		Type: ShapeKey
	**/
	var rest_shape_key : bpy.types.shapekey.ShapeKey;
	/**
		Maximum sewing force
		
		Type: float in [0, 10000], default 0.0
	**/
	var sewing_force_max : Float;
	/**
		Amount of damping in shearing behavior
		
		Type: float in [0, 50], default 0.0
	**/
	var shear_damping : Float;
	/**
		How much the material resists shearing
		
		Type: float in [0, 10000], default 0.0
	**/
	var shear_stiffness : Float;
	/**
		Maximum shear scaling value
		
		Type: float in [0, 10000], default 0.0
	**/
	var shear_stiffness_max : Float;
	/**
		Max amount to shrink cloth by
		
		Type: float in [0, 1], default 0.0
	**/
	var shrink_max : Float;
	/**
		Factor by which to shrink cloth
		
		Type: float in [0, 1], default 0.0
	**/
	var shrink_min : Float;
	/**
		Amount of damping in stretching behavior
		
		Type: float in [0, 50], default 0.0
	**/
	var tension_damping : Float;
	/**
		How much the material resists stretching
		
		Type: float in [0, 10000], default 0.0
	**/
	var tension_stiffness : Float;
	/**
		Maximum tension stiffness value
		
		Type: float in [0, 10000], default 0.0
	**/
	var tension_stiffness_max : Float;
	/**
		Cloth speed is multiplied by this value
		
		Type: float in [0, inf], default 0.0
	**/
	var time_scale : Float;
	/**
		Make simulation respect deformations in the base mesh
		
		Type: boolean, default False
	**/
	var use_dynamic_mesh : Bool;
	/**
		Pulls loose edges together
		
		Type: boolean, default False
	**/
	var use_sewing_springs : Bool;
	/**
		Vertex group for fine control over bending stiffness
		
		Type: string, default “”, (never None)
	**/
	var vertex_group_bending : String;
	/**
		Vertex Group for pinning of vertices
		
		Type: string, default “”, (never None)
	**/
	var vertex_group_mass : String;
	/**
		Vertex group for fine control over shear stiffness
		
		Type: string, default “”, (never None)
	**/
	var vertex_group_shear_stiffness : String;
	/**
		Vertex Group for shrinking cloth
		
		Type: string, default “”, (never None)
	**/
	var vertex_group_shrink : String;
	/**
		Vertex group for fine control over structural stiffness
		
		Type: string, default “”, (never None)
	**/
	var vertex_group_structural_stiffness : String;
	/**
		Size of the voxel grid cells for interaction effects
		
		Type: float in [0.0001, 10000], default 0.1
	**/
	var voxel_cell_size : Float;
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
}