package bpy.types.softbodysettings;
@:enum abstract Enum1(String) from String to String {
	var SIMPLE : String = "SIMPLE";
	var LIFT_FORCE : String = "LIFT_FORCE";
}@:enum abstract Enum2(String) from String to String {
	var MANUAL : String = "MANUAL";
	var AVERAGE : String = "AVERAGE";
	var MINIMAL : String = "MINIMAL";
	var MAXIMAL : String = "MAXIMAL";
	var MINMAX : String = "MINMAX";
}/**
	Soft body simulation settings for an object
**/
@:pythonImport("bpy.types.SoftBodySettings") extern class SoftBodySettings {
	/**
		Make edges ‘sail’
		
		Type: int in [0, 30000], default 0
	**/
	var aero : Int;
	/**
		Method of calculating aerodynamic interaction
		
		Type: enum in [‘SIMPLE’, ‘LIFT_FORCE’], default ‘SIMPLE’
	**/
	var aerodynamics_type : bpy.types.softbodysettings.SoftBodySettings.Enum1;
	/**
		Blending to inelastic collision
		
		Type: float in [0.001, 1], default 0.0
	**/
	var ball_damp : Float;
	/**
		Absolute ball size or factor if not manually adjusted
		
		Type: float in [-10, 10], default 0.0
	**/
	var ball_size : Float;
	/**
		Ball inflating pressure
		
		Type: float in [0.001, 100], default 0.0
	**/
	var ball_stiff : Float;
	/**
		Bending Stiffness
		
		Type: float in [0, 10], default 0.0
	**/
	var bend : Float;
	/**
		‘Viscosity’ inside collision target
		
		Type: int in [0, 100], default 0
	**/
	var choke : Int;
	/**
		Limit colliders to this collection
		
		Type: Collection
	**/
	var collision_collection : bpy.types.collection.Collection;
	/**
		Choose Collision Type
		
		Type: enum in [‘MANUAL’, ‘AVERAGE’, ‘MINIMAL’, ‘MAXIMAL’, ‘MINMAX’], default ‘MANUAL’
	**/
	var collision_type : bpy.types.softbodysettings.SoftBodySettings.Enum2;
	/**
		Edge spring friction
		
		Type: float in [0, 50], default 0.0
	**/
	var damping : Float;
	/**
		
		
		Type: EffectorWeights, (readonly)
	**/
	var effector_weights(default, never) : bpy.types.effectorweights.EffectorWeights;
	/**
		The Runge-Kutta ODE solver error limit, low value gives more precision, high values speed
		
		Type: float in [0.001, 10], default 0.0
	**/
	var error_threshold : Float;
	/**
		General media friction for point movements
		
		Type: float in [0, 50], default 0.0
	**/
	var friction : Float;
	/**
		Fuzziness while on collision, high values make collision handling faster but less stable
		
		Type: int in [1, 100], default 0
	**/
	var fuzzy : Int;
	/**
		Default Goal (vertex target position) value
		
		Type: float in [0, 1], default 0.0
	**/
	var goal_default : Float;
	/**
		Goal (vertex target position) friction
		
		Type: float in [0, 50], default 0.0
	**/
	var goal_friction : Float;
	/**
		Goal maximum, vertex weights are scaled to match this range
		
		Type: float in [0, 1], default 0.0
	**/
	var goal_max : Float;
	/**
		Goal minimum, vertex weights are scaled to match this range
		
		Type: float in [0, 1], default 0.0
	**/
	var goal_min : Float;
	/**
		Goal (vertex target position) spring stiffness
		
		Type: float in [0, 0.999], default 0.0
	**/
	var goal_spring : Float;
	/**
		Apply gravitation to point movement
		
		Type: float in [-10, 10], default 0.0
	**/
	var gravity : Float;
	/**
		Location of Center of mass
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var location_mass_center : Array<Float>;
	/**
		General Mass value
		
		Type: float in [0, 50000], default 0.0
	**/
	var mass : Float;
	/**
		Permanent deform
		
		Type: int in [0, 100], default 0
	**/
	var plastic : Int;
	/**
		Edge spring stiffness when longer than rest length
		
		Type: float in [0, 0.999], default 0.0
	**/
	var pull : Float;
	/**
		Edge spring stiffness when shorter than rest length
		
		Type: float in [0, 0.999], default 0.0
	**/
	var push : Float;
	/**
		Estimated rotation matrix
		
		Type: float multi-dimensional array of 3 * 3 items in [-inf, inf], default ((0.0, 0.0, 0.0), (0.0, 0.0, 0.0), (0.0, 0.0, 0.0))
	**/
	var rotation_estimate : Array<Float>;
	/**
		Estimated scale matrix
		
		Type: float multi-dimensional array of 3 * 3 items in [-inf, inf], default ((0.0, 0.0, 0.0), (0.0, 0.0, 0.0), (0.0, 0.0, 0.0))
	**/
	var scale_estimate : Array<Float>;
	/**
		Shear Stiffness
		
		Type: float in [0, 1], default 0.0
	**/
	var shear : Float;
	/**
		Tweak timing for physics to control frequency and speed
		
		Type: float in [0.01, 100], default 0.0
	**/
	var speed : Float;
	/**
		Alter spring length to shrink/blow up (unit %) 0 to disable
		
		Type: int in [0, 200], default 0
	**/
	var spring_length : Int;
	/**
		Maximal # solver steps/frame
		
		Type: int in [0, 30000], default 0
	**/
	var step_max : Int;
	/**
		Minimal # solver steps/frame
		
		Type: int in [0, 30000], default 0
	**/
	var step_min : Int;
	/**
		Use velocities for automagic step sizes
		
		Type: boolean, default False
	**/
	var use_auto_step : Bool;
	/**
		Turn on SB diagnose console prints
		
		Type: boolean, default False
	**/
	var use_diagnose : Bool;
	/**
		Edges collide too
		
		Type: boolean, default False
	**/
	var use_edge_collision : Bool;
	/**
		Use Edges as springs
		
		Type: boolean, default False
	**/
	var use_edges : Bool;
	/**
		Estimate matrix… split to COM, ROT, SCALE
		
		Type: boolean, default False
	**/
	var use_estimate_matrix : Bool;
	/**
		Faces collide too, can be very slow
		
		Type: boolean, default False
	**/
	var use_face_collision : Bool;
	/**
		Define forces for vertices to stick to animated position
		
		Type: boolean, default False
	**/
	var use_goal : Bool;
	/**
		Enable naive vertex ball self collision
		
		Type: boolean, default False
	**/
	var use_self_collision : Bool;
	/**
		Add diagonal springs on 4-gons
		
		Type: boolean, default False
	**/
	var use_stiff_quads : Bool;
	/**
		Control point weight values
		
		Type: string, default “”, (never None)
	**/
	var vertex_group_goal : String;
	/**
		Control point mass values
		
		Type: string, default “”, (never None)
	**/
	var vertex_group_mass : String;
	/**
		Control point spring strength values
		
		Type: string, default “”, (never None)
	**/
	var vertex_group_spring : String;
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