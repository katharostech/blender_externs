package bpy.types.camerastereodata;
@:enum abstract Enum1(String) from String to String {
	var OFFAXIS : String = "OFFAXIS";
	var PARALLEL : String = "PARALLEL";
	var TOE : String = "TOE";
}@:enum abstract Enum2(String) from String to String {
	var LEFT : String = "LEFT";
	var RIGHT : String = "RIGHT";
	var CENTER : String = "CENTER";
}/**
	Stereoscopy settings for a Camera data-block
**/
@:pythonImport("bpy.types.CameraStereoData") extern class CameraStereoData {
	/**
		The converge point for the stereo cameras (often the distance between a projector and the projection screen)
		
		Type: float in [1e-05, inf], default 0.0
	**/
	var convergence_distance : Float;
	/**
		
		
		Type: enum in [‘OFFAXIS’, ‘PARALLEL’, ‘TOE’], default ‘OFFAXIS’
	**/
	var convergence_mode : bpy.types.camerastereodata.CameraStereoData.Enum1;
	/**
		Set the distance between the eyes - the stereo plane distance / 30 should be fine
		
		Type: float in [0, inf], default 0.0
	**/
	var interocular_distance : Float;
	/**
		
		
		Type: enum in [‘LEFT’, ‘RIGHT’, ‘CENTER’], default ‘LEFT’
	**/
	var pivot : bpy.types.camerastereodata.CameraStereoData.Enum2;
	/**
		Angle at which interocular distance starts to fade to 0
		
		Type: float in [0, 1.5708], default 0.0
	**/
	var pole_merge_angle_from : Float;
	/**
		Angle at which interocular distance is 0
		
		Type: float in [0, 1.5708], default 0.0
	**/
	var pole_merge_angle_to : Float;
	/**
		Fade interocular distance to 0 after the given cutoff angle
		
		Type: boolean, default False
	**/
	var use_pole_merge : Bool;
	/**
		Render every pixel rotating the camera around the middle of the interocular distance
		
		Type: boolean, default False
	**/
	var use_spherical_stereo : Bool;
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