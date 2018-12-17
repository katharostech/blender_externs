package bpy.types.itasc;
@:enum abstract Enum1(String) from String to String {
	var ANIMATION : String = "ANIMATION";
	var SIMULATION : String = "SIMULATION";
}@:enum abstract Enum2(String) from String to String {
	var NEVER : String = "NEVER";
	var INITIAL : String = "INITIAL";
	var ALWAYS : String = "ALWAYS";
}@:enum abstract Enum3(String) from String to String {
	var SDLS : String = "SDLS";
	var DLS : String = "DLS";
}/**
	Parameters for the iTaSC IK solver
**/
@:native("bpy.types.Itasc") extern class Itasc {
	/**
		Singular value under which damping is progressively applied (higher values=more stability, less reactivity - default=0.1)
		
		Type: float in [0, 1], default 0.0
	**/
	var damping_epsilon : Float;
	/**
		Maximum damping coefficient when singular value is nearly 0 (higher values=more stability, less reactivity - default=0.5)
		
		Type: float in [0, 1], default 0.0
	**/
	var damping_max : Float;
	/**
		Feedback coefficient for error correction, average response time is 1/feedback (default=20)
		
		Type: float in [0, 100], default 0.0
	**/
	var feedback : Float;
	/**
		Maximum number of iterations for convergence in case of reiteration
		
		Type: int in [0, 1000], default 0
	**/
	var iterations : Int;
	/**
		
		
		Type: enum in [‘ANIMATION’, ‘SIMULATION’], default ‘ANIMATION’
	**/
	var mode : bpy.types.itasc.Itasc.Enum1;
	/**
		Precision of convergence in case of reiteration
		
		Type: float in [0, 0.1], default 0.0
	**/
	var precision : Float;
	/**
		Defines if the solver is allowed to reiterate (converge until precision is met) on none, first or all frames
		
		Type: enum in [‘NEVER’, ‘INITIAL’, ‘ALWAYS’], default ‘NEVER’
	**/
	var reiteration_method : bpy.types.itasc.Itasc.Enum2;
	/**
		Solving method selection: automatic damping or manual damping
		
		Type: enum in [‘SDLS’, ‘DLS’], default ‘SDLS’
	**/
	var solver : bpy.types.itasc.Itasc.Enum3;
	/**
		Divide the frame interval into this many steps
		
		Type: int in [1, 50], default 0
	**/
	var step_count : Int;
	/**
		Higher bound for timestep in second in case of automatic substeps
		
		Type: float in [0, 1], default 0.0
	**/
	var step_max : Float;
	/**
		Lower bound for timestep in second in case of automatic substeps
		
		Type: float in [0, 0.1], default 0.0
	**/
	var step_min : Float;
	/**
		Automatically determine the optimal number of steps for best performance/accuracy trade off
		
		Type: boolean, default False
	**/
	var use_auto_step : Bool;
	/**
		Maximum joint velocity in rad/s (default=50)
		
		Type: float in [0, 100], default 0.0
	**/
	var velocity_max : Float;
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
		IK solver for which these parameters are defined
		
		Type: enum in [‘LEGACY’, ‘ITASC’], default ‘LEGACY’, (readonly)
	**/
	var ik_solver(default, never) : bpy.types.ikparam.IKParam.Enum1;
}