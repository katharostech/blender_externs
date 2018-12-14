package bpy.types.gpudofsettings;
/**
	Settings for GPU based depth of field
**/
@:pythonImport("bpy.types.GPUDOFSettings") extern class GPUDOFSettings {
	/**
		Blades for dof effect
		
		Type: int in [0, 16], default 0
	**/
	var blades : Int;
	/**
		Focal length for dof effect
		
		Type: float in [1, inf], default 0.0
	**/
	var focal_length : Float;
	/**
		Viewport depth of field focus distance
		
		Type: float in [0, inf], default 0.0
	**/
	var focus_distance : Float;
	/**
		F-stop for dof effect
		
		Type: float in [0, inf], default 128.0
	**/
	var fstop : Float;
	/**
		Distortion to simulate anamorphic lens bokeh
		
		Type: float in [1e-07, inf], default 1.0
	**/
	var ratio : Float;
	/**
		Rotation of blades in aperture
		
		Type: float in [-3.14159, 3.14159], default 0.0
	**/
	var rotation : Float;
	/**
		Size of sensor
		
		Type: float in [1, inf], default 0.0
	**/
	var sensor : Float;
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